function newFavoritesManager(selectionMode_in, questions_in)
{
    var randomTag = "30940,3r.iunua24r3pbotnek904320,u";
    var methods = {};
    var favoriteOnly = false;

    methods.getRandomTag = function(){ return randomTag; }
    methods.isFavoriteOnly = function(){ return favoriteOnly; }
    methods.setFavoriteOnly = function(favoriteOnly_in){ favoriteOnly = favoriteOnly_in; }
    methods.markAsFavorite = function(question,isFavorite){ return question; }
    methods.isFavoriteQuestion = function(question){ return false; }

    return methods;
}
