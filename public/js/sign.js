"use strict";
function outer(){
    var obj = {};
    obj.uname = document.getElementById("uname").value;
    obj.upwd = document.getElementById("upwd").value;
    obj.btn = document.getElementById("registerBtn");
    return function(){
       return obj;
    }
}
function signin(){
    var obj = outer()();
    ajax({
        url:'http://localhost:8080/user/sign',
        type:'get',
        data:`uname=${obj.uname}&upwd=${obj.upwd}`
    }).then(result=>{
        alert(result.msg);
    })
}