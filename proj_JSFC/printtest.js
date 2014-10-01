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
    var button = document.createElement("input");
    //button.type = "button";
    button.type = "submit";
    button.style = "-webkit-appearance: none;font-size: 40px";
    button.onclick = onclick;
    button.value = text;
    return button;
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
                test.questions.push(makeQuestion(test.generators[i], test.dataitems[k]));
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
                    show_generators(test.generators); 
                })));

    var scoreParagraph = document.createElement("p");
    scoreParagraph.id = "scoreParagraph";
    settingsCenter.appendChild(scoreParagraph);

    var generatorDiv = document.createElement("div");
    generatorDiv.hidden = true;
    generatorDiv.id = "generatorDiv";
    document.body.appendChild(generatorDiv);

    displayNextQuestion(test.selectionMode,test.questions,grade);
}

function show_generators(generators)
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
            generators[i].enabled = x.checked;
        }
        //TODO: modify testItems
        generatorDiv.hidden = true;
        maindiv.hidden = false;
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
        var h1 = document.createElement("h1");
        var questionText = document.createElement("p");
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
                if( question.hasOwnProperty("reflip") && question.reflip ) center.appendChild(buttonRF);
                buttonFlip.value = "right";
                buttonSkip.value = "wrong";
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

        center.appendChild(h1);
        h1.appendChild(questionText);
        center.appendChild(buttonFlip);
        center.appendChild(buttonSkip);
        questiondiv.appendChild(center);
    }

    if( question.type == "ti" )
    {
        var center = document.createElement("center");
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

        center.appendChild(h1);
        h1.appendChild(questionText);
        center.appendChild(inputText);
        center.appendChild(buttonSubmit);
        questiondiv.appendChild(center);
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

// generate questions --> ui for every question --> **stopCriterion**
