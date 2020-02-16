const express = require('express');
const pool  =require('../pool');

let router = express.Router();
//注册路由
router.post('/reg',function(req,res){
    let obj=req.body;
    if(!obj.uname){
        res.send({code:401,msg:'uname required'});
        return;
    }
    if(!obj.upwd){
        res.send({code:402,msg:'upwd required'});
        return;
    }
    if(!obj.email){
        res.send({code:403,msg:'email required'});
        return;
    }
    if(!obj.phone){
        res.send({code:404,msg:'phone required'});
        return;
    }
    pool.query('INSERT INTO user SET ?',[obj],function(err,data){
        if(err) throw err;
        console.log(data);
        if(data.affectedRows == 1){
            res.send({code:200,msg:'reg suc'});
        }else{
            res.send({code:405,msg:'reg failed'});
        }
        
    })
})
module.exports = router;