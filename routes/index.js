const express = require('express');
const pool = require('../pool');

let router = express.Router();

//使用Promise封装数据库查询方法
function getData(query) {
    return new Promise((resolve, reject) => {
        pool.query(query, (err, data) => {
            if (err) {
                reject(err)
            }
            resolve(data)
        })
    })
}
router.get('/', (req, res) => {
    var obj = {
        banner: {},
        firstFloor: {},
        secondFloor: {},
        thirdFloor: {},
        fourthFloor: {},
        fifthFloor: {},
        sixthFloor: {},
        seventhFloor: {}
    }
    //当所有数据库响应完成时，发送响应信息
    Promise.all([
        getData('SELECT * FROM index_banner').then(data => {
            obj.banner = data;
        }),
        getData('SELECT * FROM index_1f').then(data => {
            obj.firstFloor = data;
        }),
        getData('SELECT * FROM index_2f').then(data => {
            obj.secondFloor = data;
        }),
        getData('SELECT * FROM index_3f').then(data => {
            obj.thirdFloor = data;
        }),
        getData('SELECT * FROM users').then(data => {
            obj.fourthFloor = data;
        }),
        getData('SELECT * FROM index_5f').then(data => {
            obj.fifthFloor = data;
        }),
        getData('SELECT * FROM index_6f').then(data => {
            obj.sixthFloor = data;
        }),
        getData('SELECT * FROM index_7f').then(data => {
            obj.seventhFloor = data;
        }),
    ]).then(
        () => res.send(obj)
    ).catch(
        (err) => res.send(err)
    )
})
module.exports = router;