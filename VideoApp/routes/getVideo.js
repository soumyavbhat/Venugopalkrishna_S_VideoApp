var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();
var id = this.id;

/* GET home page. */
// no need to type /getCars becuase it will create a sub route
router.get('/', (req, res) => {
  connect.query(`SELECT * FROM tbl_indeximg`, (err, result)=> {
    if (err)
    {
      throw err; console.log(err);
    }
    else{
      console.log(result);
      res.render('api', {
      title : 'Vid' 
         // video: result
       });
    }
  });
});


module.exports = router;
