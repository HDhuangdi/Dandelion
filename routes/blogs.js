const express = require('express');
const pool  =require('../pool');

let router = express.Router();


router.get('/',(req,res)=>{
    var obj=req.query
    pool.query('SELECT * FROM blogs WHERE bid=?',[obj.bid],(err,data)=>{
        if(err){
            throw err;
        }
        res.send(data)
    })
})
//获得评论
router.get('/comments',(req,res)=>{
    var obj = req.query;
    pool.query('SELECT * FROM comments WHERE bid = ? ORDER BY `time` DESC',[obj.bid],(err,data)=>{
        if(err){
            throw err;
        }
        res.send(data)
    })
})
//最多点赞
router.get('/mostLike',(req,res)=>{
    pool.query('SELECT * from blogs ORDER BY `like` DESC',(err,data)=>{
        if(err){
            throw err;
        }
        res.send(data)
    })
})
//最新博客
router.get('/recent',(req,res)=>{
    pool.query('SELECT * FROM blogs ORDER BY `time` DESC',(err,data)=>{
        if(err){
            throw err;
        }
        res.send(data)
    })
})

module.exports = router;