(function(){
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
