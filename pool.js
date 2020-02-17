const mysql = require('mysql');

let pool = mysql.createPool({
    host:'localhost',
    port:'3306',
    user:'root',
    password:'123456',
    database:'dandelion'
});
module.exports = pool;
