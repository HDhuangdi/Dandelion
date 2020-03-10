$(function(){
    $.ajax({
        url:"header.html",
        type:"get",
        success:function(result){
            $("header").html(result)
            $(`<link rel="stylesheet" href="css/header.css">`).appendTo("head")
        }
    })
})