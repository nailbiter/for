function makeSelectionMode(sm, test)//FIXME: rewrite this guy and add random_pass
{
    var obj = {};
    obj.curIndex = -1;
    obj.questions = test.questions;

    var getType = function() {return sm;}
    var remove = function(index) 
    {
        if(index<0 || index>=obj.questions.length){
            return null;
        }

		if( index == obj.curIndex )
        {
			if( obj.questions.size() == 1 )
            {
				obj.curIndex = -1;
			}
            else
            {
				while( index == obj.curIndex )
					methods.goToNextQuestion(null);
			}
		}

		if( index < obj.curIndex )
			obj.curIndex--;
		return obj.questions.splice(1,index);
	}
    var add = function(question,index)
    {
        if( typeof index == undefined )
            index = obj.questions.length;
        if( obj.questions.length == 0 )
        {
            obj.curIndex=0;
        }
        else
        {
            if( index <= obj.curIndex )
                obj.curIndex++;
        }
		obj.questions.splice(index,0,question);
        return index;
    }
    var setCurQuestionIndex = function(num)
    {
        if( num >= 0 && num < obj.questions.length )
            obj.curIndex=num;
    }
    var getCurrentIndex = function() 
    {
		if( obj.questions.length == 0 )
			return -1;
        while( obj.curIndex < 0 )
            methods.goToNextQuestion(null);
        return obj.curIndex;
    }

    var goToNextQuestion = {};
    if( sm == "rand" )
    {
        goToNextQuestion = function(result) 
        {
            if( obj.questions.length > 0 )
                obj.curIndex = Math.floor(obj.questions.length * Math.random());
        }
    }
    if( sm == "seq" )
    {
        goToNextQuestion = function(result)
        {
            obj.curIndex++;
            if( obj.curIndex == obj.questions.length )
                obj.curIndex=0;
        }
    }

    var methods = {};
    methods.getType = getType;
    methods.remove = remove;
    methods.add = add;
    methods.setCurQuestionIndex = setCurQuestionIndex;
    methods.getCurrentIndex = getCurrentIndex;
    methods.goToNextQuestion = goToNextQuestion;
    return methods;
}
