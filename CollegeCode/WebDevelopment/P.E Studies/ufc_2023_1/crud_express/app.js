var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
require("./db/mongodb.connection")

var users = require('./routes/users');
var professorsRouter = require('./routes/professors');
var alunosRouter = require('./routes/aluno');
var loginRouter = require('./routes/login');

var app = express();
//sus
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser())

//libera acesso a api
app.use(function (req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    res.header("Access-Control-Allow-Methods", "GET, POST, OPTIONS, PUT, DELETE");
    next();
})

app.use('/api/v1/users', users);
app.use('/professor/', professorsRouter);
app.use('/aluno/', alunosRouter);
app.use('/login/', loginRouter);

module.exports = app;
