var globalTest;

function print_test_continue(array)
{
    var test = globalTest;

    var orig = test.dataitems.length;
    if( array.length > 0 ) console.log("files: " + array[0].dataitems.length);
    for( var i = 0; i < array.length; i++ )
        test.dataitems = test.dataitems.concat(array[i].dataitems);
    console.log("increase:" + (test.dataitems.length - orig) );

    if( location.hash != "" )
    {
        //alert(location.hash);
        var obj = JSON.parse(decodeURLquery(location.hash.substr(1)));
        for( var i = 0; i < test.generators.length; i++ )
            test.generators[i].enabled = false;
        for( var i = 0; i < obj.length; i++ )
            test.generators[(( obj[i] >= 0 ) ? obj[i] : ( test.generators.length + obj[i] ))].enabled = true;
    }

    for( var i = 0; i < test.generators.length; i++ )
    {
        if( !test.generators[i].enabled )
            continue;
        if( test.generators[i].type == "si" )
            test.generators[i].answers = [];
        var qs = [];
        for( var k = 0; k < test.dataitems.length; k++ )
        {
            if( isQuestionMatch(test.dataitems[k].tags,test.generators[i]) )
            {
                var q = makeQuestion(test.generators[i], test.dataitems[k]);
                if( q != null ) qs.push(q);
            }
        }
        if( test.generators[i].hasOwnProperty("filter") ) qs = filter(qs,test.generators[i].filter);
        test.questions = test.questions.concat(qs);
    }

    test.selectionMode = makeSelectionMode(test.selectionMode, test);

    if( test.hasOwnProperty("favoritesModeAllowed") && test.favoritesModeAllowed )
        test.favoritesManager = newFavoritesManager(test.selectionMode,test.questions);
    else
        test.favoritesManager = null;

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

    if( test.favoritesManager != null )
    {
        var button = makeButtonWithTextAndOnClick("All Questions",null);
        button.onclick = function()
        {
            var question = test.selectionMode.getCurrentQuestion();
            var flag = test.favoritesManager.isFavoriteOnly();
            console.log("flag="+flag);
            setButtonText(button, !flag ? "Only Favorites" : "All Questions" );
            test.favoritesManager.setFavoriteOnly(!flag);
            if( question != test.selectionMode.getCurrentQuestion() )
                displayNextQuestion(test.selectionMode,test.questions,grade,test.favoritesManager);
        }
        settingsCenter.appendChild(wrapIntoParagraph(button));
    }

    settingsCenter.appendChild(wrapIntoParagraph(makeButtonWithTextAndOnClick("Edit Generators",function()
                {
                    maindiv.hidden = true;
                    show_generators(test.generators,test.selectionMode,test,grade); 
                })));

    if( test.hasOwnProperty("canListQuestions") && test.canListQuestions )
        settingsCenter.appendChild(wrapIntoParagraph(makeButtonWithTextAndOnClick("View Questions",function()
                    {
                        maindiv.hidden = true;
                        show_questions(test.questions,test.favoritesManager,test.selectionMode,grade);
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
    if( false )
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

    displayNextQuestion(test.selectionMode,test.questions,grade,test.favoritesManager);
}

function print_test(test)
{
    globalTest = test;
    test.questions = [];

    if( test.hasOwnProperty("include") && ( test.include.length > 0 ) )
	    jsonp("print_test_continue",test.include,"get");
    else
        print_test_continue([]);
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
                        if( isQuestionMatch(test.dataitems[k].tags,generators[i]) )
                        {
                            var q = makeQuestion(generators[i], test.dataitems[k]);//FIXME: filter here as well
                            if( q != null )
                                selectionMode.add(q);
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
        //injectJS('http://nailbiter.insomnia247.nl/cb/tests/FC.cgi' + ((url_args=="")?"":("?"+url_args)));
        generatorDiv.hidden = true;
        maindiv.hidden = false;
        if( wasQuestion != selectionMode.getCurrentQuestion() ) //!compareQuestions(wasQuestion,selectionMode.getCurrentQuestion()) )
            displayNextQuestion(selectionMode,test.questions,grade,test.favoritesManager);
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
    if( ( question.question == "" ) || ( question.answer == "" ) )
        return null;
    if( generator.type == "sc" && generator.hasOwnProperty("auxTo") && ( dataItem.items.length > generator.auxTo[0] ) )
    { //FIXME: and there are these indexes
        question.answer += " <sub>(";
            question.answer += dataItem.items[generator.auxTo[0]];
        for( var i = 1; i < generator.auxTo.length; i++ )
            question.answer += (", " + dataItem.items[generator.auxTo[i]]);
        question.answer += ")</sub>";
    }
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

function displayNextQuestion(sm,questions,grade,fm)
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
        displayNextQuestion(sm,questions,grade,fm);
    }

    for(;;)
    {
        var favQ = 0;
        if( fm != null )
        {
            for( var i = 0; i < questions.length; i++ )
                if( fm.isFavoriteQuestion(questions[i]) ) favQ++;
        }
        scoreParagraph.innerHTML = grade.curScore + "/" + grade.maxScore + ( ( fm != null ) ? ("<b>/"+favQ+"</b>") : "" ) + 
            "/"+questions.length;
        break;
    }

    var center = document.createElement("center");
    var buttonContainer = document.createElement("div");
    buttonContainer.setAttribute("class","buttonContainer");
    var questionText = document.createElement("div");
        questionText.setAttribute("class" , "questiontext");
    questionText.innerHTML = question.question;
    center.appendChild(questionText);
    questiondiv.appendChild(center);
    questiondiv.appendChild(buttonContainer);
    if( fm != null )
    {
        var favButton = makeButtonWithTextAndOnClick(fm.isFavoriteQuestion(question) ? "★" : "☆",null);
        favButton.onclick = function()
        {
            var flag = fm.isFavoriteQuestion(question);
            fm.markAsFavorite(question,!flag);
            setButtonText(favButton,(fm.isFavoriteQuestion(question) ? "★" : "☆"));
            if( question != sm.getCurrentQuestion() )
                displayNextQuestion(sm,questions,grade,fm);
        }
        buttonContainer.appendChild(favButton);
    }
    for(;;)
    {
        var remButton = makeButtonWithTextAndOnClick("del",null);
        remButton.onclick = function()
        {
            var indx = -1;
            for( var i = 0; i < questions.length; i++ )
                if( questions[i] == question )
                    indx = i;
            sm.remove(indx);
            displayNextQuestion(sm,questions,grade,fm);
        }
        buttonContainer.appendChild(remButton);
        break;
    }

    if( question.type == "sc" )
    {
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

        if( question.hasOwnProperty("auxText") )
            center.insertBefore(wrapIntoParagraph(document.createTextNode(question.auxText)),center.firstChild);
        else
            center.insertBefore(wrapIntoParagraph(document.createTextNode("press \"flip\" to see the answer")),center.firstChild);
        buttonContainer.insertBefore(buttonSkip,buttonContainer.firstChild);
        buttonContainer.insertBefore(buttonFlip,buttonContainer.firstChild);
    }

    if( question.type == "ti" )
    {
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

        buttonContainer.insertBefore(buttonSubmit,buttonContainer.firstChild);
        buttonContainer.insertBefore(inputText,buttonContainer.firstChild);
    }

    if( question.type == "si" )
    {
        console.log("\t"+question.answers.size);
        shuffle(question.answers);
        var answersSize = (question.select == 0) ? question.answers.length : question.select;
        var buttonSubmit = makeButtonWithTextAndOnClick("submit",null);
        var inputSelect = document.createElement("select");
        swapIn(question.answers,question.answers.indexOf(question.answer),answersSize);
        console.log("==============================");
        for( var i = 0; i < answersSize; i++ )
        {
            var option = document.createElement("option");
            option.text = question.answers[i];
            console.log(question.answers[i]);
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

        buttonContainer.insertBefore(buttonSubmit,buttonContainer.firstChild);
        buttonContainer.insertBefore(inputSelect,buttonContainer.firstChild);
    }
}

function show_questions(questions,fm,selectionMode,grade)
{
    var questionListDiv = document.getElementById("questionListDiv");
    var maindiv = document.getElementById("maindiv");
    deleteAllChildren(questionListDiv);
    var checkboxes = [];
    var wasQuestion = selectionMode.getCurrentQuestion();

    var questionLabels = document.createElement("center");
    questionListDiv.appendChild(questionLabels);

    var printNice = function()
    {
        deleteAllChildren(questionLabels);

        var table = document.createElement('TABLE');
        table.border='1';

        var tableBody = document.createElement('TBODY');
        table.appendChild(tableBody);

        for (var i=0; i<questions.length; i++)
        {
            var tr = document.createElement('TR');
            tableBody.appendChild(tr);
            var texts = [document.createTextNode(questions[i].question),
                document.createTextNode(questions[i].answer),
                document.createTextNode(questions[i].type) ];
            if( fm != null )
            {
                var cb = document.createElement("INPUT");
                cb.type = "checkbox";
                checkboxes.push(cb);
                cb.checked = fm.isFavoriteQuestion(questions[i]);
                texts.push(cb);
            }
            for( var j = 0; j < texts.length; j++ )
            {
                var td = document.createElement('TD');
                td.width='175';
                td.appendChild(texts[j]);
                tr.appendChild(td);
            }
        }
        questionLabels.appendChild(table);
    }

    var printTech = function()
    {
        deleteAllChildren(questionLabels);

        for( var i = 0; i < questions.length; i++ )
        {
            var oNewP = document.createElement("p");
            oNewP.appendChild(document.createTextNode(JSON.stringify(questions[i])));
            questionLabels.appendChild(oNewP);
        }
        questionLabels.appendChild(wrapIntoParagraph(document.createTextNode("total: "+questions.length)));
    }

    var printButtons = document.createElement("div");
    printButtons.appendChild(makeButtonWithTextAndOnClick("tech print",printTech));
    printButtons.appendChild(makeButtonWithTextAndOnClick("nice print",printNice));
    questionListDiv.appendChild(printButtons);

    questionListDiv.appendChild(wrapIntoParagraph(makeButtonWithTextAndOnClick("continue",function()
                {
                    if( fm != null )
                    {
                        for( var i = 0; i < checkboxes.length; i++ )
                            fm.markAsFavorite(questions[i],checkboxes[i].checked);
                    }
                    questionListDiv.hidden = true;
                    maindiv.hidden = false;
                    if( fm != null && wasQuestion != selectionMode.getCurrentQuestion() ) 
                        displayNextQuestion(selectionMode,questions,grade,test.favoritesManager);
                })));

    questionListDiv.hidden = false;
    printNice();
}

function isQuestionMatch(qtags,generator)
{
        if( ( qtags == null ) || ( generator == null ) )
            return false;
        if( !generator.hasOwnProperty("tags") && !generator.hasOwnProperty("notags") )
            return false;
        if( generator.hasOwnProperty("tags") )
        {
            for( var j = 0; j < generator.tags.length; j++ )
            {
                if( qtags.indexOf(generator.tags[j]) == -1 )
                    return false;
            }
        }
        if( generator.hasOwnProperty("notags") )
        {
            for( var j = 0; j < generator.notags.length; j++ )
            {
                if( qtags.indexOf(generator.notags[j]) != -1 )
                {
                    return false;
                }
            }
        }
        return true;
}

function filter(qs,filter)
{
    if( filter.type == "last" )
    {
        if( qs.length > filter.size ) 
            return qs.slice(qs.length-filter.size-1,qs.length-1)
        else
            return qs;
    }
    return qs;
}
