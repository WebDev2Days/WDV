var express = require('express');
var router = express.Router();
var db = require('../../lib/database')();
var flog = require('../welcome/loggedin');

function fprod(req,res,next){
  /*Test Function, Match(params);
  *(tblchat)*/
  db.query("SELECT * FROM tblproduct INNER JOIN tblcategories ON intProdCatID= intCatID WHERE intProdID= ?", [req.params.itemid], (err, results, fields) => {
    if (err) console.log(err);
    req.fprod= results;
    return next();
  });
}

function render(req,res){
  res.render('item/views/index',{thisusertab: req.user, products: req.fprod});
}

router.get('/:itemid', flog, fprod, render);

exports.item = router;
