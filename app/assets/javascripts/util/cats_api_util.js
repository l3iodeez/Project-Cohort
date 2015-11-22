(function(root) {
  'use strict';
  var CatsAPIUtil = root.CatsAPIUtil = {
    fetchAllCats: function (callback) {
      $.ajax({
        url: '/api/cats',
        method: 'GET',
        dataType: 'json',
        contentType: 'application/json',
        success: function (data) {
          CatApiActions.receiveAllCats(data);
          callback && callback(data);
        }
      });
    },
    fetchSingleCat: function (id, callback) {
      $.ajax({
        url: '/api/cats/' + id,
        method: 'GET',
        dataType: 'json',
        contentType: 'application/json',
        success: function (data) {
          CatApiActions.receiveSingleCats(data);
          callback && callback(data);
        }
      });
    },
    createCat: function (cat, callback) {
      $.ajax({
        url: '/api/cats',
        method: 'POST',
        dataType: 'json',
        contentType: 'application/json',
        data: JSON.stringify({cat: cat}),
        success: function (data) {
          CatApiActions.receiveSingleCat(data);
          callback && callback(data);
        }
      });
    },
    editCat: function (cat, callback) {
      var catId = cat.id;
      delete cat.id;
      $.ajax({
        url: '/api/cats/' + catId,
        method: 'PATCH',
        dataType: 'json',
        contentType: 'application/json',
        data: JSON.stringify({cat: cat}),
        success: function (data) {
          CatApiActions.receiveSingleCat(data);
          callback && callback(data);
        }
      });
    },
    destroyCat: function (cat, callback) {
      $.ajax({
        url: '/api/cats/' + cat.id,
        method: 'DELETE',
        dataType: 'json',
        contentType: 'application/json',
        success: function (data) {
          CatApiActions.deleteCat(data);
          callback && callback(data);
        }
      });
    }
  };
}(this));
