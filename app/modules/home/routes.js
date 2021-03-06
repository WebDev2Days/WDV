var express = require('express');
var router = express.Router();
var db = require('../../lib/database')();
var flog = require('../welcome/loggedin');

function fprod(req,res,next){
  /*Test Function, Match(params);
  *(tblchat)*/
  db.query("SELECT * FROM tblproduct ORDER BY intProdID LIMIT 4", (err, results, fields) => {
    if (err) console.log(err);
    req.fprod= results;
    return next();
  });
}

function render(req,res){
  switch (req.valid) {
    case 0:
    case 1:
    case 2:
      res.render('home/views/index',{thisusertab: req.user, products: req.fprod});
      break;
  }
}
function faqRender(req,res){
  switch (req.valid) {
    case 0:
    case 1:
    case 2:
      res.render('home/views/faq',{thisusertab: req.user});
      break;
  }
}

router.get('/', flog, fprod, render);
router.get('/faq', flog, faqRender);

exports.home = router;
