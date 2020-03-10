const express = require('express');
const bodyparser = require('body-parser');
const user = require('./routes/user.js');
const index = require('./routes/index.js');
const blogs = require('./routes/blogs.js');

let app = express();
app.listen(8080);
app.use(express.static('public'));
app.use(bodyparser.urlencoded());
app.get('/',(req,res)=>{
    res.redirect('index.html');
})
app.use('/user',user);
app.use('/index',index);
app.use('/blogs',blogs);


