const express = require('express');
const pool = require('../pool');

let router = express.Router();

//按博客id获取的博客列表
router.get('/', (req, res) => {
    var obj = req.query
    pool.query('SELECT * FROM blogs WHERE bid=?', [obj.bid], (err, data) => {
        if (err) {
            throw err;
        }
        res.send(data)
    })
})
//获得对应博客id的评论
router.get('/comments', (req, res) => {
    var obj = req.query;
    pool.query('SELECT * FROM comments WHERE bid = ? ORDER BY `time` DESC', [obj.bid], (err, data) => {
        if (err) {
            throw err;
        }
        res.send(data)
    })
})
//封装随请求参数变化而变化的响应函数
function getData(type, sort, condition, res) {
    if (type == '赏析') {
        if (sort == "asc") {
            pool.query(`SELECT * FROM blogs WHERE type='赏析' ORDER BY \`${condition}\` ASC`, (err, data) => {
                if (err) {
                    throw err;
                }
                res.send(data)
            })
        } else {
            pool.query(`SELECT * FROM blogs WHERE type='赏析' ORDER BY \`${condition}\` DESC`, (err, data) => {
                if (err) {
                    throw err;
                }
                res.send(data)
            })
        }
    } else if (type == '教学') {
        if (sort == "asc") {
            pool.query(`SELECT * FROM blogs WHERE type='教学' ORDER BY \`${condition}\` ASC`, (err, data) => {
                if (err) {
                    throw err;
                }
                res.send(data)
            })
        } else {
            pool.query(`SELECT * FROM blogs WHERE type='教学' ORDER BY \`${condition}\` DESC`, (err, data) => {
                if (err) {
                    throw err;
                }
                res.send(data)
            })
        }
    } else if (type == '方法') {
        if (sort == "asc") {
            pool.query(`SELECT * FROM blogs WHERE type='方法' ORDER BY \`${condition}\` ASC`, (err, data) => {
                if (err) {
                    throw err;
                }
                res.send(data)
            })
        } else {
            pool.query(`SELECT * FROM blogs WHERE type='方法' ORDER BY \`${condition}\` DESC`, (err, data) => {
                if (err) {
                    throw err;
                }
                res.send(data)
            })
        }
    } else if (type == '展示') {
        if (sort == "asc") {
            pool.query(`SELECT * FROM blogs WHERE type='展示' ORDER BY \`${condition}\` ASC`, (err, data) => {
                if (err) {
                    throw err;
                }
                res.send(data)
            })
        } else {
            pool.query(`SELECT * FROM blogs WHERE type='展示' ORDER BY \`${condition}\` DESC`, (err, data) => {
                if (err) {
                    throw err;
                }
                res.send(data)
            })
        }
    } else if (type === undefined) {
        if (sort == "asc") {
            pool.query(`SELECT * FROM blogs ORDER BY \`${condition}\` ASC`, (err, data) => {
                if (err) {
                    throw err;
                }
                res.send(data)
            })
        } else {
            pool.query(`SELECT * FROM blogs ORDER BY \`${condition}\` DESC`, (err, data) => {
                if (err) {
                    throw err;
                }
                res.send(data)
            })
        }
    }
}
//按点赞数排序的博客列表
router.get('/mostLike', (req, res) => {
    var obj = req.query
    getData(obj.type, obj.sort, 'like', res)
})
//按时间排序的博客列表
router.get('/recent', (req, res) => {
    var obj = req.query
    getData(obj.type, obj.sort, 'time', res)
})
//获取所有博客信息
router.get('/all', (req, res) => {

    pool.query('SELECT * FROM blogs', (err, data) => {
        if (err) {
            throw err;
        }
        res.send(data)
    })
})
//获取指定type的博客信息
router.get('/type', (req, res) => {
    var obj = req.query
    pool.query('SELECT * FROM blogs WHERE type =?', [obj.type], (err, data) => {
        if (err) {
            throw err;
        }
        res.send(data)
    })
})
module.exports = router;