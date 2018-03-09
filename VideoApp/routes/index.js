var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();


/* GET home page. */
// router.get('/', function(req, res, next) {
//  res.render('index', { title: 'Roku' });
// });

router.get('/', (req, res, next) => {
  connect.query(`SELECT * FROM tbl_indeximg `, (err, result)=> {
    if (err)
    {
      throw err; console.log(err);
    }
    else{
      console.log(result);

      res.render('index', {
        index:true,
         adults:false,
         kids:false,
        title: 'Roku ' ,
         index: result
       });
    }
  });
});

router.get('/adults', (req, res)=>{
  connect.query(`SELECT * FROM tbl_adultimg `, (err, result)=> {
    if (err)
    {
      throw err; console.log(err);
    }
    else{
      console.log(result);
  res.render('adults',{
    index: false,
    adults: true,
    kids: false,
    title: 'Roku ' ,
     adult: result
  });
}

  });
});

router.get('/kids', (req, res)=>{
  connect.query(`SELECT * FROM tbl_kidimg `, (err, result)=> {
    if (err)
    {
      throw err; console.log(err);
    }
    else{
      console.log(result);
  res.render('kids',{
    index: false,
    adults: false,
    kids: true,
    title: 'Roku ',
     kids: result
  });
}
//
  });
});

router.get('/kidsadv', (req, res)=>{
  connect.query(`SELECT * FROM tbl_kidimgadv `, (err, result)=> {
    if (err)
    {
      throw err; console.log(err);
    }
    else{
      console.log(result);
  res.render('kidsadv',{
    index: false,
    adults: false,
    kids: true,
    title: 'Roku ',
     kidsadv: result
  });
}
//
  });
});

router.get('/api/:id', (req, res) => {
var id = req.params.id;
  console.log(req.params.id);
  console.log("hit an api");
  connect.query('SELECT * FROM tbl_indeximg WHERE img_id='+id, (err, result)=> {
    if (err)
    {
      throw err;
       console.log(err);
    }
    else{
      console.log(result);

      // res.json(result);
res.render('api',
{
  title: 'Roku',
  // path: JSON.stringify(img_path),
  index: true,
  adults: false,
  kids: false,
  video:result
});
    }
  });
    });

    router.get('/ad/:id', (req, res) => {
    var id = req.params.id;
      console.log(req.params.id);
      console.log("hit an api");
      connect.query('SELECT * FROM tbl_adultimg WHERE img_id='+id, (err, result)=> {
        if (err)
        {
          throw err;
           console.log(err);
        }
        else{
          console.log(result);

          // res.json(result);
    res.render('api',
    {
      title: 'Roku',
      // path: JSON.stringify(img_path),
      index: false,
      adults: true,
      kids: false,
      video:result
    });
        }
      });
        });



            router.get('/kid/:id', (req, res) => {
            var id = req.params.id;
              console.log(req.params.id);
              console.log("hit an api");
              connect.query('SELECT * FROM tbl_kidimg WHERE img_id='+id, (err, result)=> {
                if (err)
                {
                  throw err;
                   console.log(err);
                }
                else{
                  console.log(result);

                  // res.json(result);
            res.render('api',
            {
              title: 'Roku',
              // path: JSON.stringify(img_path),
              index: false,
              adults: false,
              kids: true,
              video:result
            });
                }
              });
                });
                router.get('/kidsadv/:id', (req, res)=>{
                  var id = req.params.id;
                    console.log(req.params.id);
                    console.log("hit an api");
                  connect.query('SELECT * FROM tbl_kidimgadv WHERE img_id='+id, (err, result)=> {
                    if (err)
                    {
                      throw err; console.log(err);
                    }
                    else{
                      console.log(result);
                  res.render('api',{
                    index: false,
                    adults: false,
                    kids: true,
                    title: 'Roku ',
                     video: result
                  });
                }
                //
                  });
                });


module.exports = router;
