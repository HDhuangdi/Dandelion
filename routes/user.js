const express = require('express');
const pool  =require('../pool');

let router = express.Router();
//注册路由
router.post('/reg',function(req,res){
    let obj=req.body;
    if(!obj.uname){
        res.send({code:401,msg:'用户名为空'});
        return;
    }
    if(!obj.upwd){
        res.send({code:402,msg:'密码为空'});
        return;
    }
    if(!obj.email){
        res.send({code:403,msg:'电子邮件为空'});
        return;
    }
    if(!obj.phone){
        res.send({code:404,msg:'联系方式为空'});
        return;
    }
    pool.query('INSERT INTO user SET ?',[obj],function(err,data){
        if(err){
            throw err;
        }
        console.log(data);
        if(data.affectedRows == 1){
            res.send({code:200,msg:'注册成功'});
        }else{
            res.send({code:405,msg:'注册失败'});
        }
        
    })
})
//登录路由
router.get('/sign',(req,res)=>{
    let obj = req.query;
    if(!obj.uname){
        res.send({code:401,msg:'用户名为空'});
        return;
    }
    if(!obj.upwd){
        res.send({code:402,msg:'密码为空'});
        return;
    }
    pool.query('SELECT * FROM user WHERE uname = ? AND upwd = ?',[obj.uname,obj.upwd],(err,data)=>{
        if(err){
            throw err;
        }
        console.log(data);
        if(data.length > 0){
            res.send({code:200,msg:'登录成功'});
        }else{
            res.send({code:301,msg:'用户名密码错误'});
        }
    })
    
})
module.exports = router;