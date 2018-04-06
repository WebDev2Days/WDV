var express = require('express');
var router = express.Router();
var db = require('../../lib/database')();
var flog = require('../welcome/loggedin');

function dashRender(req,res){
  switch (req.valid) {
    case 0:
      res.render('login/views/nouser');
      break;
    case 1:
    case 2:
      res.render('account/views/dashboard',{thisusertab: req.user});
      break;
  }
}
function ordersRender(req,res){
  switch (req.valid) {
    case 0:
      res.render('login/views/nouser');
      break;
    case 1:
    case 2:
      res.render('account/views/orders',{thisusertab: req.user});
      break;
  }
}
function paymentRender(req,res){
  switch (req.valid) {
    case 0:
      res.render('login/views/nouser');
      break;
    case 1:
    case 2:
      res.render('account/views/payment',{thisusertab: req.user});
      break;
  }
}
function cancelRender(req,res){
  switch (req.valid) {
    case 0:
      res.render('login/views/nouser');
      break;
    case 1:
    case 2:
      res.render('account/views/cancellations',{thisusertab: req.user});
      break;
  }
}

router.get('/dashboard', flog, dashRender);
router.get('/orders', flog, ordersRender);
router.get('/payment', flog, paymentRender);
router.get('/cancellations', flog, cancelRender);

exports.account = router;
