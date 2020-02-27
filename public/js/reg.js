(function(){
    "use strict";
    var button = document.querySelector("[data-click=button]")
    var unameInput = document.querySelector("[data-blur=uname]")
    var upwdInput = document.querySelector("[data-blur=upwd]")
    var cpwdInput = document.querySelector("[data-blur=cpwd]")
    var emailInput = document.querySelector("[data-blur=email]")
    var phoneInput = document.querySelector("[data-blur=phone]")
    
    function outer() {
        var obj = {};
        obj.uname = unameInput.value;
        obj.upwd = upwdInput.value;
        obj.cpwd = cpwdInput.value;
        obj.email = emailInput.value;
        obj.phone = phoneInput.value;
        obj.btn = button;
        return obj;
    }
    //验证用户名格式
    function uname_check() {
        var obj = outer();
        if (obj.uname.length < 8) {
            document.getElementById("uname_msg").innerHTML = "用户名小于8位";
        } else {
            document.getElementById("uname_msg").innerHTML = "";
        }
    }
    //验证密码格式
    function upwd_check() {
        var obj = outer();
        var upwd_reg = /^(?![0-9]+$)[a-zA-Z0-9]{6,15}$/;
        if (obj.upwd.search(upwd_reg) == -1) {
            document.getElementById("upwd_msg").innerHTML = "密码有数字和字母组成，长度6-15位";
        } else {
            document.getElementById("upwd_msg").innerHTML = "";
        }
    }
    //确认密码
    function cpwd_check() {
        var obj = outer();
        if (obj.upwd != obj.cpwd) {
            document.getElementById("cpwd_msg").innerHTML = "两次密码输入不一致！";
        } else {
            document.getElementById("cpwd_msg").innerHTML = "";
        }
    }
    //验证电子邮件
    function email_check() {
        var obj = outer();
        var email_reg = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
        if (obj.email.search(email_reg) == -1) {
            document.getElementById("email_msg").innerHTML = "电子邮件格式不正确！";
        } else {
            document.getElementById("email_msg").innerHTML = "";
        }
    }
    //验证手机格式
    function phone_check() {
        var obj = outer();
        var phone_reg = /^1[3-9][0-9]{9}$/;
        if (obj.phone.search(phone_reg) == -1) {
            document.getElementById("phone_msg").innerHTML = "手机格式不正确！";
        } else {
            document.getElementById("phone_msg").innerHTML = "";
        }
    }
    //提交ajax请求
    function submit() {
        var obj = outer();
        ajax({
            url: 'http://localhost:8080/user/reg',
            type: 'post',
            data: `uname=${obj.uname}&upwd=${obj.upwd}&email=${obj.email}&phone=${obj.phone}`
        }).then(result => {
            alert(result.msg);
        })
    }
    //绑定事件
    unameInput.onblur = function(){
        uname_check();
    } 
    upwdInput.onblur = function(){
        upwd_check();
    } 
    cpwdInput.onblur = function(){
        cpwd_check();
    } 
    emailInput.onblur =function(){
        email_check();
    } 
    phoneInput.onblur = function(){
        phone_check();
    } 
    button.onclick = function(){
        submit();
    } 
})();
