function displayQuestionSC_renderQA(questionText,QorA,question)
{
    if( QorA )
        questionText.innerHTML = question.question;
    else
    {
        questionText.innerHTML = question.answer;
        if( question.hasOwnProperty("pic") )
        {
            //alert(question.pic);
            var img = document.createElement("img");
            img.src = question.pic;
            img.alt = "hint";
            img.width = "250";
            questionText.parentElement.appendChild(img);
        }
    }
}

function displayQuestionSC(question,center,buttonContainer,callMeBack,questionText)
{
    var buttonFlip = makeButtonWithTextAndOnClick("flip",null);
    var buttonSkip = makeButtonWithTextAndOnClick("skip",null);
    var buttonRF = makeButtonWithTextAndOnClick("reflip",null);
    var wasReflippedFlag = false;

    buttonFlip.onclick = function()
    {
        if( !wasReflippedFlag )
        {
            displayQuestionSC_renderQA(questionText,false,question);
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
        displayQuestionSC_renderQA(questionText,questionText.innerHTML != question.question,question);
    }

    if( question.hasOwnProperty("auxText") )
        center.insertBefore(wrapIntoParagraph(document.createTextNode(question.auxText)),center.firstChild);
    else
        center.insertBefore(wrapIntoParagraph(document.createTextNode("press \"flip\" to see the answer")),center.firstChild);
    buttonContainer.insertBefore(buttonSkip,buttonContainer.firstChild);
    buttonContainer.insertBefore(buttonFlip,buttonContainer.firstChild);
}

function displayQuestionTI(question,center,buttonContainer,callMeBack,questionText)
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

function displayQuestionBS(question,center,buttonContainer,callMeBack,questionText)
{
    console.log("\t"+question.answers.size);
    shuffle(question.answers);
    var answersSize = question.select;
    var answerButtons  = document.createElement("div");
    //var buttonSubmit = makeButtonWithTextAndOnClick("submit",null);
    swapIn(question.answers,question.answers.indexOf(question.answer),answersSize);
    console.log("==============================");
    var fcn = function(val)
    {
        return function()
        {
            var score = {};
            score.maxScore = question.hasOwnProperty("maxScore") ? question.maxScore : 1.0;
            
            if( question.answers[val] == question.answer )
                score.curScore = score.maxScore;
            else
                score.curScore = 0;
            callMeBack(score);
        }
    }
    for( var i = 0; i < answersSize; i++ )
    {
        /*option.text = question.answers[i];
        console.log(question.answers[i]);
        inputSelect.appendChild(option);*/
        //buttonContainer.insertBefore(buttonSubmit,buttonContainer.firstChild);
        answerButtons.appendChild(makeButtonWithTextAndOnClick(question.answers[i],fcn(i)));
    }
    buttonContainer.insertBefore(answerButtons,buttonContainer.childNodes[0]);
}

function displayQuestionSI(question,center,buttonContainer,callMeBack,questionText)
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
