
    function fn(){
        var $uname = document.getElementById("uname").value;
        var $upwd = document.getElementById("upwd").value;
        var $cpwd = document.getElementById("cpwd").value;
        var $email = document.getElementById("email").value;
        var $phone = document.getElementById("phone").value;
        var xhr = new XMLHttpRequest();
        xhr.open('post','/user/reg',true);
        xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        xhr.send(`uname=${$uname}&upwd=${$upwd}&email=${$email}&phone=${$phone}`);
        xhr.onreadystatechange = function(){
            if(xhr.readyState == 4 &&xhr.status==200){
                alert(xhr.responseText);
            }
        }
    }
