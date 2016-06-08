var express = require('express');

var app = express();
app.use('/', express.static('./app', {
  index: 'data.xml'
}));

app.listen(3000);
