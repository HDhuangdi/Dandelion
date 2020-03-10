$(function(){
    $(".nav").on("click","a",function(e){
        var $target = $(e.target)
        $target.parent().siblings().children().removeClass("active")
        $target.addClass("active")
        var $ulImg = $("#ulImg")
        $ulImg.css("left",$target.attr("data-move")*-1110)
    })
})