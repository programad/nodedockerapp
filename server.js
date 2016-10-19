'use strict';

const express = require('express');
const app = express();
const PORT = process.env.PORT || 8080;

app.get('/', function(req, res){
    res.send('Hello World from node app on docker');
});

app.listen(PORT);

console.log(`Running at http://localhost:${PORT}`);