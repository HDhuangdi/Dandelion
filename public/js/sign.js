"use strict";
function getData(){
    var obj = {};
    obj.uname = $("#uname").val();
    obj.upwd = $("#upwd").val();
    obj.btn = $("#registerBtn");
    return obj;
}
function signin(){
    var obj = getData();
    $.ajax({
        url:'http://localhost:8080/user/sign',
        type:'get',
        data:`uname=${obj.uname}&upwd=${obj.upwd}`,
        dataType:"json",
        success:function(result){
            alert(result.msg)
        }
    })
}