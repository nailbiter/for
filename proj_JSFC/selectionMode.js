function makeSelectionMode(sm, test)
{
    if( sm == "rand" ) return makeSelectionModeRand(test);
    if( sm == "seq" ) return makeSelectionModeSeq(test);
    if( sm == "shuff" ) return makeSelectionModeShuff(test);
}

function makeSelectionModeRand(test)
{
    var curIndex = -1;
    var questions = test.questions;

    var methods = {};
    methods.getType = function() {return "rand";}
    methods.remove = function(index) 
    {
        if(index<0 || index>=questions.length)
            return;

		if( index == curIndex )
            curIndex = -1;

		if( index < curIndex )
			curIndex--;

	    questions.splice(index,1);
	}
    methods.add = function(question)
    {
        var index = questions.length;
        if( questions.length == 0 )
            curIndex=0;
		questions.push(question);
    }
    /*methods.setCurQuestionIndex = function(num)
    {
        if( num >= 0 && num < questions.length )
            curIndex=num;
    }*/
    /** @return null means that either we have no questions, or we're done
     */
    methods.getCurrentQuestion = function() 
    {
		if( questions.length == 0 )
			return null;
        if( curIndex < 0 )
            curIndex = Math.floor(questions.length * Math.random());
        return questions[curIndex];
    }

    methods.goToNextQuestion = function(result) 
    {
        if( questions.length > 0 )
            curIndex = Math.floor(questions.length * Math.random());
        console.log("goToNextQuestion-rand: "+curIndex);
    }

    return methods;
}

function makeSelectionModeSeq(test)
{
    var curIndex = -1;
    var questions = test.questions;

    var methods = {};
    methods.getType = function() {return "seq";}
    methods.remove = function(index) 
    {
        if(index<0 || index>=questions.length)
            return null;

		if( index == curIndex )
            curIndex = -1;

		if( index < curIndex )
			curIndex--;

	    questions.splice(index,1);
	}
    methods.add = function(question,index)
    {
        var index = questions.length;
        if( questions.length == 0 )
            curIndex=0;
		questions.push(question);
    }
    /*methods.setCurQuestionIndex = function(num)
    {
        if( num >= 0 && num < questions.length )
            curIndex=num;
    }*/
    /** @return null means that either we have no questions, or we're done
     */
    methods.getCurrentQuestion = function() 
    {
		if( questions.length == 0 )
			return null;
        if( curIndex < 0 ) curIndex = 0;
            
        return questions[curIndex];
    }
    methods.goToNextQuestion = function(result)
    {
        curIndex++;
        if( curIndex == questions.length )
            curIndex=0;
    }
}

function makeSelectionModeShuff(test)
{
    var curIndex = -1;
    var questions = test.questions;
    var indexesShuffled = [];

    var methods = {};
    methods.getType = function() {return "shuff";}
    methods.remove = function(index) 
    {
        if(index<0 || index>=questions.length)
            return;
        curIndex = -1;

	    questions.splice(index,1);
        return;
	}
    methods.add = function(question)
    {
        var index = questions.length;
        curIndex = -1;//FIXME here and for remove?
        questions.push(question);
    }
    methods.getCurrentQuestion = function() 
    {
		if( questions.length == 0 )
			return null;
        if( curIndex < 0 )
        {
            indexesShuffled = [];
            for( var i = 0; i < questions.length; i++ ) indexesShuffled.push(i);
            shuffle(indexesShuffled);
            console.log("getCurrentQuestion-shuff: [ ");
            for( var i = 0; i < indexesShuffled.length; i++ ) console.log(indexesShuffled[i]+" ");
            console.log("]\n");
            curIndex = 0;
        }
        return questions[indexesShuffled[curIndex]];
    }

    methods.goToNextQuestion = function(result) 
    {
        if( questions.length > 0 )
        {
            curIndex++;
            if( curIndex == questions.length )
                curIndex=0;
        }
        console.log("goToNextQuestion-shuff: "+"curIndex = "+curIndex);
        console.log("goToNextQuestion-shuff: "+indexesShuffled[curIndex]);
    }

    return methods;
}
