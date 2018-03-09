var express = require('express');
var connect = require('../utils/sqlConnect');

var bodyParser = require('body-parser');


var router = express.Router();

 // middleware -> before response adter request
 // parse the request - convert the incoming data to something express can use

 router.use(bodyParser.urlencoded({extended : false}));
 router.use(bodyParser.json());

 // router.use('/api', function (req, res, next ) {
 //   console.log("col");
 //     res.render('api');
 //     next();
 // });


router.use((req, res, next) => {
var now = new Date();
var timestamp = now.toLocaleString('en-us',{
  hour : "numeric",
  minute: "numeric",
  hour12: true
});
  console.log(`you made a ${req.method} call`);
  console.log(`you made the call @ ${timestamp}`);
  console.log(req);
  next();
  // run the next method(get, put, post, ..)
});




module.exports = router;
