var express = require('express');
var router = express.Router();
var db = require('../../lib/database')();

function auth(req,res,next){
  /*Entered UserName, Match
  *(tbluser)*/
  db.query("SELECT * FROM tbluser WHERE strUserName= ?",[req.body.username], (err, results, fields) => {
      if (err) console.log(err);
      if(!results[0])
        return next();
      else {
        res.render('register/views/taken');
      }
  });
}

function render(req,res){
  res.render('register/views/index');
}

router.get('/', render);

router.post('/', auth, (req, res) => {
  if(req.body.password === req.body.confirm){
    db.query("INSERT INTO tbluser (strUserName, strPassword, strFirstName, strMiddleName, strLastName, strEmail, strShipping, strBilling) VALUES (?,?,?,?,?,?,?,?)",[req.body.username, req.body.password, req.body.fname, req.body.mname, req.body.lname, req.body.email, req.body.shipping, req.body.billing], (err, results, fields) => {
      if (err) console.log(err);
      res.render('register/views/success');
    });
  }
  else{
    res.render('register/views/notmatch');
  }
});


exports.register = router;
