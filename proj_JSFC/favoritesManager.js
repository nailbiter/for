function newFavoritesManager(selectionMode_in, questions_in)
{
    var randomTag = "30940,3r.iunua24r3pbotnek904320,u";
    var methods = {};
    var favoriteOnly = false;
    var questionBuf = [];

    methods.isFavoriteOnly = function(){ return favoriteOnly; }
    methods.isFavoriteQuestion = function(question){ return question.hasOwnProperty("markedAsFavorite") && question.markedAsFavorite; }
    methods.setFavoriteOnly = function(favoriteOnly_in)
    {
        favoriteOnly = favoriteOnly_in; 
        if( favoriteOnly )
        {
            for( var i = 0; i < questions_in.length; i++ )
                if( !methods.isFavoriteQuestion(questions_in[i]) )
                {
                    questionBuf.push(questions_in[i]);
                    selectionMode_in.remove(i);
                    i--;
                }
        }
        else
        {
            while( questionBuf.length > 0 )
            {
                var q = questionBuf.shift();
                selectionMode_in.add(q);
            }
        }
    }
    methods.markAsFavorite = function(question,isFavorite)
    {
       question.markedAsFavorite = isFavorite;
       if( favoriteOnly && !isFavorite )
       {
           var index = questions_in.indexOf(question);
           selectionMode_in.remove(index);
           questionBuf.push(question);
       }
       return question; 
    }

    return methods;
}

