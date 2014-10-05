function removeById(id)
{
    var element=document.getElementById(tableid);
    element.parentNode.removeChild(element);
}

function deleteAllChildren(node)
{
    while( node.hasChildNodes() ) node.removeChild(node.lastChild);
}

function wrapIntoParagraph(node)
{
    var oNewP = document.createElement("p");
    oNewP.appendChild(node);
    return oNewP;
}

function makeButtonWithTextAndOnClick(text,onclick)
{
	if( !iOS )
	{
		var button = document.createElement("button");
		var t = document.createTextNode(text);
		var h = document.createElement("H2");
		h.appendChild(t);
		button.appendChild(h);
	}
	else
	{
		var button = document.createElement("input");
		button.type = "button";
		button.value = text;
	}
    button.onclick = onclick;
    return button;
}

function setButtonText(button,text)
{
	if( !iOS )
    {
        button.innerHTML = "<h2>" + text + "</h2>";
    }
	else
		button.value = text;
}

function print_test(test)
{
    test.questions = [];
    for( var i = 0; i < test.generators.length; i++ )
    {
        if( !test.generators[i].enabled )
            continue;
        if( test.generators[i].type == "si" )
            test.generators[i].answers = [];
        for( var k = 0; k < test.dataitems.length; k++ )
        {
            var j = 0;
            for(; j < test.generators[i].tags.length; j++ )
            {
                if( test.dataitems[k].tags.indexOf(test.generators[i].tags[j]) == -1 )
                    break;
            }
            if( j == test.generators[i].tags.length )
            {
                var pos = test.questions.push(makeQuestion(test.generators[i], test.dataitems[k])) - 1;
                test.generators[i].questionsGenerated.push(pos);
                if( test.generators[i].type == "si" )
                    test.generators[i].answers.push(test.dataitems[k].items[test.generators[i].to]);
            }
        }
    }

    if(true)
        test.selectionMode = makeSelectionMode(test.selectionMode, test);
    else
        test.selectionMode = makeSelectionMode("seq", test);

    var grade = {};
    grade.curScore = 0;
    grade.maxScore = 0;

    var maindiv = document.createElement("div");
    maindiv.id = "maindiv";
    document.body.appendChild(maindiv);

    var questiondiv = document.createElement("div");
    questiondiv.id = "questiondiv";
    maindiv.appendChild(questiondiv);


    var settingsCenter = document.createElement("center");
    settingsCenter.id = "settingsCenter";
    maindiv.appendChild(settingsCenter);

    settingsCenter.appendChild(wrapIntoParagraph(makeButtonWithTextAndOnClick("Edit Generators",function()
                {
                    maindiv.hidden = true;
                    show_generators(test.generators,test.selectionMode,test,grade); 
                })));

    if( test.hasOwnProperty("canListQuestions") && test.canListQuestions )
        settingsCenter.appendChild(wrapIntoParagraph(makeButtonWithTextAndOnClick("View Questions",function()
                    {
                        maindiv.hidden = true;
                        show_questions(test.questions);
                    })));

    var scoreParagraph = document.createElement("p");
    scoreParagraph.id = "scoreParagraph";
    settingsCenter.appendChild(scoreParagraph);

    var generatorDiv = document.createElement("div");
    generatorDiv.hidden = true;
    generatorDiv.id = "generatorDiv";
    document.body.appendChild(generatorDiv);

    var questionListDiv = document.createElement("div");
    questionListDiv.hidden = true;
    questionListDiv.id = "questionListDiv";
    document.body.appendChild(questionListDiv);

    displayNextQuestion(test.selectionMode,test.questions,grade);
}

function show_generators(generators,selectionMode,test,grade)
{
    var generatorDiv = document.getElementById("generatorDiv");
    var maindiv = document.getElementById("maindiv");
    deleteAllChildren(generatorDiv);
    for( var i = 0; i < generators.length; i++ )
    {
        var oNewP = document.createElement("p");
        var x = document.createElement("INPUT");
        x.type = "checkbox";
        x.id = "generator" + i;
        x.checked = generators[i].enabled;
        oNewP.appendChild(x);
        oNewP.appendChild(document.createTextNode(generatorToString(generators[i])));
        generatorDiv.appendChild(oNewP);
    }

    var oNewP = document.createElement("p");
    var button = document.createElement("button");
    var buttonText = document.createTextNode("continue");
    button.appendChild(buttonText);
    button.onclick = function()
    {
        for( var i = 0; i < generators.length; i++ )
        {
            var x = document.getElementById("generator" + i);
            if( generators[i].enabled != x.checked )
            {
                if( x.checked )
                {
                    if( generators[i].type == "si" )
                        generators[i].answers = [];
                    for( var k = 0; k < test.dataitems.length; k++ )
                    {
                        var j = 0;
                        for(; j < generators[i].tags.length; j++ )
                        {
                            if( test.dataitems[k].tags.indexOf(generators[i].tags[j]) == -1 )
                                break;
                        }
                        if( j == generators[i].tags.length )
                        {
                            var pos = selectionMode.add(makeQuestion(generators[i], test.dataitems[k]));
                            generators[i].questionsGenerated.push(pos);
                            if( generators[i].type == "si" )
                                generators[i].answers.push(test.dataitems[k].items[generators[i].to]);
                        }
                    }
                }
                else
                {
                    for( var j = 0; j <  generators[i].questionsGenerated.length; j++ )
                        selectionMode.remove(generators[i].questionsGenerated[j]);
                }
            }
            generators[i].enabled = x.checked;
        }
        generatorDiv.hidden = true;
        maindiv.hidden = false;
        displayNextQuestion(selectionMode,test.questions,grade);
    };
    oNewP.appendChild(button);
    generatorDiv.appendChild(oNewP);

    generatorDiv.hidden = false;
}

function generatorToString(generator)
{
    var s = generator.tags[0];
    for( var i = 1; i < generator.tags.length; i++ )
        s += ', ' + generator.tags[i];
    s += '; ' + generator.from + '->' + generator.to;
    s += '; ' + generator.type;
    if( generator.hasOwnProperty("auxText") ) s += '; ' + generator.auxText;
    return s;
}

function makeQuestion(generator, dataItem)
{
    var question = {};
    question.question = dataItem.items[generator.from];
    question.answer = dataItem.items[generator.to];
    if( generator.hasOwnProperty("auxText") )
        question.auxText = generator.auxText;
    question.type = generator.type;

    if( generator.type == "si" )
    {
        question.answers = generator.answers;
    }

    if( generator.type == "ti" ) {}

    if( generator.type == "sc" )
    {
        question.reflip = generator.hasOwnProperty("reflip") ? generator.reflip : false;
    }
    if( !generator.hasOwnProperty("questionsGenerated") )
        generator.questionsGenerated = [];
    return question;
}

function displayNextQuestion(sm,questions,grade)
{
    var question = questions[sm.getCurrentIndex()];
    var questiondiv = document.getElementById("questiondiv");
    var scoreParagraph = document.getElementById("scoreParagraph");
    deleteAllChildren(questiondiv);
    var callMeBack = function(questionGrade) 
    {
        sm.goToNextQuestion(questionGrade);
        grade.curScore += questionGrade.curScore;
        grade.maxScore += questionGrade.maxScore;
        displayNextQuestion(sm,questions,grade);
    }

    scoreParagraph.innerHTML = grade.curScore + "/" + grade.maxScore;

    if( question.type == "sc" )
    {
        var center = document.createElement("center");
        var buttonContainer = document.createElement("div");
		buttonContainer.setAttribute("class","buttonContainer");
        var questionText = document.createElement("div");
	        questionText.setAttribute("class" , "questiontext");
        questionText.innerHTML = question.question;
        var buttonFlip = makeButtonWithTextAndOnClick("flip",null);
        var buttonSkip = makeButtonWithTextAndOnClick("skip",null);
        var buttonRF = makeButtonWithTextAndOnClick("reflip",null);
        var wasReflippedFlag = false;

        buttonFlip.onclick = function()
        {
            if( !wasReflippedFlag )
            {
                questionText.innerHTML = question.answer;
                if( question.hasOwnProperty("reflip") && question.reflip ) buttonContainer.appendChild(buttonRF);
                setButtonText(buttonFlip,"right");
                setButtonText(buttonSkip,"wrong");
                wasReflippedFlag = true;
            }
            else
            {
                var score = {};
                score.maxScore = question.hasOwnProperty("maxScore") ? question.maxScore : 1.0;
                score.curScore = score.maxScore;
                callMeBack(score);
            }
        }
        buttonSkip.onclick = function()
        {
            var score = {};
            score.curScore = 0;
            score.maxScore = question.hasOwnProperty("maxScore") ? question.maxScore : 1.0;
            callMeBack(score);
        }
        buttonRF.onclick = function()
        {
            if( questionText.innerHTML == question.question )
                questionText.innerHTML = question.answer;
            else
                questionText.innerHTML = question.question;
        }

        if(true)
        {
            center.appendChild(questionText);
            center.appendChild(buttonContainer);
            questiondiv.appendChild(center);
        }
        else
        {
            buttonContainer.appendChild(questionText);
            buttonContainer.appendChild(buttonFlip);
            buttonContainer.appendChild(buttonSkip);
            questiondiv.appendChild(buttonContainer);
        }
    }

    if( question.type == "ti" )
    {
        var buttonContainer = document.createElement("buttonContainer");
        var h1 = document.createElement("h1");
        var questionText = document.createElement("p");
        questionText.innerHTML = question.question;
        var buttonSubmit = makeButtonWithTextAndOnClick("submit",null);
        var inputText = document.createElement("input");
        inputText.type = "text";

        buttonSubmit.onclick = function()
        {
            var score = {};
            score.maxScore = question.hasOwnProperty("maxScore") ? question.maxScore : 1.0;
            if( inputText.value == question.answer )
                score.curScore = score.maxScore;
            else
                score.curScore = 0;
            callMeBack(score);
        }

        buttonContainer.appendChild(h1);
        h1.appendChild(questionText);
        buttonContainer.appendChild(inputText);
        buttonContainer.appendChild(buttonSubmit);
        questiondiv.appendChild(buttonContainer);
    }

    if( question.type == "si" )
    {
        var center = document.createElement("center");
        var h1 = document.createElement("h1");
        var questionText = document.createElement("p");
        questionText.innerHTML = question.question;
        var buttonSubmit = makeButtonWithTextAndOnClick("submit",null);
        var inputSelect = document.createElement("select");
        for( var i = 0; i < question.answers.length; i++ )
        {
            var option = document.createElement("option");
            option.text = question.answers[i];
            inputSelect.appendChild(option);
        }

        buttonSubmit.onclick = function()
        {
            var score = {};
            score.maxScore = question.hasOwnProperty("maxScore") ? question.maxScore : 1.0;
            if( question.answers[inputSelect.selectedIndex] == question.answer )
                score.curScore = score.maxScore;
            else
                score.curScore = 0;
            callMeBack(score);
        }

        center.appendChild(h1);
        h1.appendChild(questionText);
        center.appendChild(inputSelect);
        center.appendChild(buttonSubmit);
        questiondiv.appendChild(center);
    }
}

function show_questions(questions)
{
    var questionListDiv = document.getElementById("questionListDiv");
    var maindiv = document.getElementById("maindiv");
    deleteAllChildren(questionListDiv);
    for( var i = 0; i < questions.length; i++ )
    {
        var question = questions[i];
        var oNewP = document.createElement("p");
        oNewP.appendChild(document.createTextNode(JSON.stringify(question)));
        questionListDiv.appendChild(oNewP);
    }

    questionListDiv.appendChild(wrapIntoParagraph(makeButtonWithTextAndOnClick("continue",function()
                {
                    questionListDiv.hidden = true;
                    maindiv.hidden = false;
                })));

    questionListDiv.hidden = false;
}
