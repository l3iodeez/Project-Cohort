(function(root) {
  'use strict';
  var _cats = [];
  var CHANGE_EVENT = "catsChange";


  root.CatStore = $.extend({}, EventEmitter.prototype, {

    addChangeListener: function(callback){
      this.on(CHANGE_EVENT, callback);
    },

    removeChangeListener: function(callback){
      this.removeListener(CHANGE_EVENT, callback);
    },

    all: function () {
      return _cats.slice(0);
    },

    getByID: function (catId) {
      var foundCat = _cats.find(function (cat) {
        return cat.id === catId;
      });
      return foundCat;
    },

    getFirst: function () {
      return _cats[0];
    },

    storeCat: function (recvdCat) {
      var storedCat = CatStore.getByID(recvdCat.id);
      if (storedCat) {
        var idx = _cats.indexOf(storedCat);
        _cats.splice(idx, 1);
      }
      _cats.unshift(recvdCat);
      CatStore._catsChanged();
    },

    deleteCat: function (cat) {
      var storedCat = CatStore.getByID(cat.id);
      var idx = _cats.indexOf(storedCat);
      _cats.splice(idx, 1);
      CatStore._catsChanged();
    },

    resetCats: function (cats) {
      _cats = cats;
      CatStore._catsChanged();
    },

    _catsChanged : function () {
      this.emit(CHANGE_EVENT);
    },

    dispatcherId: AppDispatcher.register(function (payload) {
      if (payload.actionType === CatConstants.CATS_RECEIVED) {
        CatStore.resetCats(payload.cats);
      } else if (payload.actionType === CatConstants.CAT_RECEIVED) {
        CatStore.storeCat(payload.cat);
      } else if (payload.actionType === CatConstants.CAT_DELETED) {
        CatStore.deleteCat(payload.cat);
      }
    }),

  });


}(this));
