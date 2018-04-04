var express = require('express');
var router = express.Router();
var db = require('../../lib/database')();

function dashRender(req,res){
  res.render('account/views/dashboard');
}
function ordersRender(req,res){
  res.render('account/views/orders');
}
function paymentRender(req,res){
  res.render('account/views/payment');
}
function cancelRender(req,res){
  res.render('account/views/cancellations');
}

router.get('/dashboard', dashRender);
router.get('/orders', ordersRender);
router.get('/payment', paymentRender);
router.get('/cancellations', cancelRender);

exports.account = router;
