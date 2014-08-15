function makeSelectionMode(sm, test)
{
    var obj = {};
    obj.curIndex = -1;
    obj.questions = test.questions;

    var methods = {};
    methods.getType = function() {return sm;}
    methods.remove = function(index) 
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
    methods.add = function(index,question)
    {
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
    }
    methods.setCurQuestionIndex = function(num)
    {
        if( num >= 0 && num < obj.questions.length )
            obj.curIndex=num;
    }
    methods.getCurrentIndex = function() 
    {
		if( obj.questions.length == 0 )
			return -1;
        while( obj.curIndex < 0 )
            methods.goToNextQuestion(null);
        return obj.curIndex;
    }

    if( sm == "rand" )
    {
        methods.goToNextQuestion = function(result) 
        {
            if( obj.questions.length > 0 )
                obj.curIndex = Math.floor(obj.questions.length * Math.random());
        }
    }
    if( sm == "seq" )
    {
        methods.goToNextQuestion = function(result)
        {
            obj.curIndex++;
            if( obj.curIndex == obj.questions.length )
                obj.curIndex=0;
        }
    }

    return methods;
}
