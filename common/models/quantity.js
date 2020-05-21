'use strict';

module.exports = function(Quantity) {
    Quantity.shoppingList = function(userId, cb) {
        Quantity.find(
            {
                "where": { "and":[{ "idUser": userId },{"quantityToBuy": {"gt":0}}] },
                "include": "product" 
            },
            function (err, instance) {
                cb(null, instance);
            }
        );
    }
    Quantity.remoteMethod ('shoppingList',{
        http: {path: '/shoppingList', verb: 'get'},
        accepts: {arg: 'id', type: 'string', http: { source: 'query' } },
        returns: {type: 'array', root: true}
    });
};
