(function(){
    "use strict";
    var lis = document.querySelectorAll("[data-click=a]");
    for(var li of lis){
        li.children[0].onclick = function(){
            //设置其他的li的class为col
            for(var li of lis){
                li.className="col"
            }
            //设置触发事件按钮的li的class为activeBtn col
            this.parentNode.className = "activeBtn col";
            var id = this.dataset.target;
            //获取需要修改className的div
            var div = document.getElementById(id);
            //清除其兄弟的className
            var broDivs = div.parentNode.children;
            for(var broDiv of broDivs){
                broDiv.className = "py-3 content";
            }
            //设置本div的className
            div.className="py-3 activeDiv";
        }
    }
    //设置订阅input的聚焦/失焦事件
    var emailInput = document.querySelector("[type=email]")
    var emailText = document.querySelector("[type=email]+span")
    console.log(emailInput)
    emailInput.onfocus = function(){
        emailInput.style.borderBottom = "2px solid #105ae4"
        //设置input内文字的className
        emailText.className = "input_text position-absolute active"
    }
    emailInput.onblur = function(){
        emailInput.style.borderBottom = "2px solid #9e9e9e"
        emailText.className = "input_text position-absolute"
    }
    
})();