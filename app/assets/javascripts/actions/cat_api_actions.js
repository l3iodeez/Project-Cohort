(function(root) {
  'use strict';

  // note api functions
  var CatApiActions = root.CatApiActions = {
    receiveAllCats: function(cats){
      AppDispatcher.dispatch({
        actionType: CatConstants.CATS_RECEIVED,
        cats: cats
      });
    },
    receiveSingleCat: function (cat) {
      AppDispatcher.dispatch({
        actionType: CatConstants.CAT_RECEIVED,
        cat: cat
      });
    },
    deleteCat: function (cat) {
      AppDispatcher.dispatch({
        actionType: CatConstants.CAT_DELETED,
        cat: cat
      });
    },
  // sessions api functions


  };
}(this));
