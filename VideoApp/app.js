var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var connect = require('./utils/sqlConnect');
var index = require('./routes/index');
// var api = require('./routes/api');
// var video = require('./routes/getVideo');

// var users = require('./routes/users');
var xhb =  require('express-handlebars');


var app = express();


// view engine setup
app.set('views', path.join(__dirname, 'views'));
// app.engine('handlebars', xhb({ defaultLayout: 'main'}));
app.set('view engine', 'handlebars');

app.engine('handlebars', xhb({
    extname: 'handlebars',
    defaultLayout: 'main',
    layoutDir: __dirname + '/views/layouts',
    partialsDir  : [
        //  path to your partials
        __dirname + '/views/partials',
    ]
}));

// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

// app.use('/', index);
// app.use('/users', users);
app.use('/', require('./routes/index', index));
// app.use('/getVideo', require('./routes/getVideo', video));
// app.use('/api', require('./routes/api', api));

// app.get('/:id', (req, res) => {
//   res.render('api', {output: req.params.id});
//   // console.log(req.params.id);
//   // console.log("hit an api");
//   connect.query('SELECT * FROM tbl_indeximg where img_id="{{output}}"', (err, result)=> {
//     if (err)
//     {
//       // throw err;
//        console.log(err);
//     }
//     else{
//       console.log(result);
//
//       res.json({video:result});
//     }
//   });
//     });


// app.use('/api', function (req, res) {
//     res.render('about', {content: 'foo'});
// });

// var test = function(req,res,next) {
//   // do whatever logic is needed
//   res.end('Displaying information for uid ' + req.params.uid);
// }
// app.get('/test/:uid',test);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
