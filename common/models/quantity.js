'use strict';

module.exports = function(Quantity) {
    Quantity.shoppingList = function(userId, cb) {
        Quantity.find(
            {
                "where": { "and":[{ "idUser": userId },{"quantityToBuy": {"gt":0}}] },
                "include": "product" 
            },
            function (err, instance) {
                let instance2 = instance.sort(sortShoppingListByProductName);
                cb(null, instance2);
            }
        );
    }
    Quantity.remoteMethod ('shoppingList',{
        http: {path: '/shoppingList', verb: 'get'},
        accepts: {arg: 'id', type: 'string', http: { source: 'query' } },
        returns: {type: 'array', root: true}
    });
};

function sortShoppingListByProductName(a, b) {
    const productA = a.product().productName.toUpperCase();
    const productB = b.product().productName.toUpperCase();
    let comparison = 0;
    if (productA > productB) {
        comparison = 1;
    } else if (productA < productB) {
        comparison = -1;
    }
    return comparison;
}