var express = require('express');
var router = express.Router();
var db = require('../../lib/database')();
var flog = require('../welcome/loggedin');

function render(req,res){
  switch (req.valid) {
    case 0:
      res.render('login/views/nouser');
      break;
    case 1:
    case 2:
      res.render('summary/views/checkout',{thisusertab: req.user});
      break;
  }
}
function orderRender(req,res){
  switch (req.valid) {
    case 0:
      res.render('login/views/nouser');
      break;
    case 1:
    case 2:
      res.render('summary/views/order',{thisusertab: req.user});
      break;
  }
}
function prevRender(req,res){
  switch (req.valid) {
    case 0:
      res.render('login/views/nouser');
      break;
    case 1:
    case 2:
      res.render('summary/views/previous',{thisusertab: req.user});
      break;
  }
}

router.get('/checkout', flog, render);
router.get('/order', flog, orderRender);
router.get('/previous', flog, prevRender);

exports.summary = router;
