function swapIn(array,index,headLen)
{
    randomIndex = Math.floor(Math.random() * headLen);
    //alert("headLen = "+headLen+", randomIndex = "+randomIndex);
    temporaryValue = array[index];
    array[index] = array[randomIndex];
    array[randomIndex] = temporaryValue;
}
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

    //FIXME: remove test block
    {
        console.log("100500");
        console.log(test.questions.length);
        var obj = {};
        obj.val = "value";
        obj.f = function(){ alert("tesi me f"); };
        console.log(obj);
        console.log("100500");
        console.log(JSON.stringify(obj));
        /*try{ console.log(obj.val); console.log(obj.val1); }
        catch(err){ console.log("msg: "+err.message); }*/
        /*for( var i = 0; i < test.questions.length; i++ )
            for( var j = 0; j < test.questions.length; j++ )
                if( compareQuestions(test.questions[i],test.questions[j]) ) console.log(i+"=="+j);*/
    }

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
        var wasQuestion = selectionMode.getCurrentQuestion();
        for( var i = 0; i < generators.length; i++ )
        {
            var x = document.getElementById("generator" + i);
            if( generators[i].enabled != x.checked )//FIXME: make this to be a function
            {
                if( x.checked )
                {
                    console.log("I was before add with "+JSON.stringify(generators[i]));
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
                            selectionMode.add(makeQuestion(generators[i], test.dataitems[k]));
                            if( generators[i].type == "si" )
                                generators[i].answers.push(test.dataitems[k].items[generators[i].to]);
                        }
                    }
                }
                else
                {
                    console.log("I was before remove with "+JSON.stringify(generators[i]));
                    for( var j = 0; j < test.questions.length; j++ )
                    {
                        if( test.questions[j].generatedBy == generators[i] )
                        {
                            selectionMode.remove(j);
                            j--;
                        }
                    }
                }
            }
            generators[i].enabled = x.checked;
        }
        generatorDiv.hidden = true;
        maindiv.hidden = false;
        console.log("I was before displayNextQuestion");
        if( wasQuestion != selectionMode.getCurrentQuestion() ) //!compareQuestions(wasQuestion,selectionMode.getCurrentQuestion()) )
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

function compareQuestions(q1,q2)
{
    if( q1.type != q2.type ) return false;
    if( q1.question != q2.question ) return false;
    if( q1.answer != q2.answer ) return false;
    if( q1.generatedBy != q2.generatedBy ) return false;
    return true;
}

function makeQuestion(generator, dataItem)
{
    var question = {};
    question.question = dataItem.items[generator.from];
    question.answer = dataItem.items[generator.to];
    question.generatedBy = generator;
    if( generator.hasOwnProperty("auxText") )
        question.auxText = generator.auxText;
    question.type = generator.type;

    var siRegexp = /^si[0-9]*$/;
    if( siRegexp.test(generator.type) )
    {
        if( !generator.hasOwnProperty("answers") )
            generator.answers = [];
        generator.answers.push(dataItem.items[generator.to]);
        question.answers = generator.answers;
        question.type = "si";
        question.select = (generator.type == "si") ? 0 : parseInt(generator.type.substr(2));
    }

    if( generator.type == "ti" ) {}

    if( generator.type == "sc" )
    {
        question.reflip = generator.hasOwnProperty("reflip") ? generator.reflip : false;
    }
    return question;
}

function displayNextQuestion(sm,questions,grade)
{
    var question = sm.getCurrentQuestion();//FIXME: if its null, we're done
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
            if( question.hasOwnProperty("auxText") )
                center.appendChild(wrapIntoParagraph(document.createTextNode(question.auxText)));
            center.appendChild(questionText);
            buttonContainer.appendChild(buttonFlip);
            buttonContainer.appendChild(buttonSkip);
            questiondiv.appendChild(center);
            questiondiv.appendChild(buttonContainer);
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
        var buttonContainer = document.createElement("div");
		buttonContainer.setAttribute("class","buttonContainer");
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
        //alert("select: "+question.select);
        var center = document.createElement("center");
        var h1 = document.createElement("h1");
        var questionText = document.createElement("p");
        shuffle(question.answers);
        var answersSize = (question.select == 0) ? question.answers.length : question.select;
        questionText.innerHTML = question.question;
        var buttonSubmit = makeButtonWithTextAndOnClick("submit",null);
        var inputSelect = document.createElement("select");
        swapIn(question.answers,question.answers.indexOf(question.answer),answersSize);
        for( var i = 0; i < answersSize; i++ )
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
        var oNewP = document.createElement("p");
        oNewP.appendChild(document.createTextNode(JSON.stringify(questions[i])));
        questionListDiv.appendChild(oNewP);
    }

    questionListDiv.appendChild(wrapIntoParagraph(makeButtonWithTextAndOnClick("continue",function()
                {
                    questionListDiv.hidden = true;
                    maindiv.hidden = false;
                })));

    questionListDiv.hidden = false;
}
