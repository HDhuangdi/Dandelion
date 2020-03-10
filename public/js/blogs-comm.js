"use strict";
$(function () {
    var $ul = $($("[data-click=a]")[0]).parent();
    $ul.on("click","li",function(e){
        var $target = $(e.target)
        //清除其他li的activeBtn class
        $target.parent().siblings().removeClass("activeBtn")
        //添加触发元素的父级元素的class activeBtn
        $target.parent().addClass("activeBtn")
        //取得触发元素对应的div
        var id = e.target.dataset.target;
        var $div = $(`#${id}`);
        //去除其他div的activeDiv class
        $div.siblings().removeClass("activeDiv")
        //添加触发元素的对应div的class activeDiv
        $div.addClass("activeDiv")
    })
    //设置订阅input的聚焦/失焦事件
    var $emailInput = $("#email")
    var $emailText = $("[type=email]+label")
    $emailInput.focus(function(){
        var $this = $(this)
        $this.css("border-bottom","2px solid #105ae4")
        //设置input内文字的className
        $emailText.addClass("active")
    })
    $emailInput.blur(function(){
        var $this = $(this)
        $this.css("border-bottom","2px solid #9e9e9e")
        //设置input内文字的className
        $emailText.removeClass("active")
    })
    //最多点赞
    $.ajax({
        url:`http://localhost:8080/blogs/mostLike`,
        type:"get",
        dataType:"json",
        success(result){
            var [b1,b2,b3,b4,b5,b6] = result
            var html = `<!-- 排行榜第一 -->
            <div class="top1-views container mb-4">
                <a href="${b1.href}" class="img">
                    <img src="${b1.image}" alt="" class="w-100">
                </a>
                <div class="card-body d-flex flex-column pb-0">
                    <p class="tagName">${b1.type}</p>
                    <a class="card-title decoration-underline" href="${b1.href}">${b1.title}</a>
                    <div class="card-foot d-flex justify-content-between">
                        <p class="author font-sm-grey">By-
                            <a href="">${b1.author}</a>
                        </p>
                        <p class="icon">
                            <a href="" class="font-sm-grey iconfont icon-xihuanlike
       mr-2"><span class="pl-1">${b1.like}</span></a>
                            <a href="" class="font-sm-grey iconfont icon-pinglun"><span
                                    class="pl-1">${b1.comments}</span></a>
                        </p>
                    </div>
                </div>
            </div>
            <!-- 排行榜第二开始 -->
            <!-- 2 -->
            <div class="others-views container mb-2">
                <div class="media row no-gutters h-100">
                    <div class="col-4 h-100 d-flex align-items-center">
                        <a href="${b2.href}"><img src="${b2.image_sm}"
                                class="w-100 h-80 radius-border" alt="..."></a>
                    </div>
                    <div class="media-body col-8 pl-3 pr-3 h-100">
                        <p class="tagName mb-1">${b2.type}</p>
                        <div class="pr-4 mb-2">
                            <a href="${b2.href}" class="decoration-underline title">${b2.title}</a>
                        </div>
                        <div class="d-flex justify-content-between">
                            <p class="author font-sm-grey">By-
                                <a href="">${b2.author}</a>
                            </p>
                            <p class="icon">
                                <a href="" class="font-sm-grey iconfont icon-xihuanlike"><span
                                        class="pl-1">${b2.like}</span></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 3 -->
            <div class="others-views container mb-2">
                <div class="media row no-gutters h-100">
                    <div class="col-4 h-100 d-flex align-items-center">
                        <a href="${b3.href}"><img src="${b3.image_sm}"
                                class="w-100 h-80 radius-border" alt="..."></a>
                    </div>
                    <div class="media-body col-8 pl-3 pr-3 h-100">
                        <p class="tagName mb-1">${b3.type}</p>
                        <div class="pr-4 mb-2">
                            <a href="${b3.href}" class="decoration-underline title">${b3.title}</a>
                        </div>
                        <div class="d-flex justify-content-between">
                            <p class="author font-sm-grey">By-
                                <a href="">${b3.author}</a>
                            </p>
                            <p class="icon">
                                <a href="" class="font-sm-grey iconfont icon-xihuanlike"><span
                                        class="pl-1">${b3.like}</span></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 4 -->
            <div class="others-views container mb-2">
                <div class="media row no-gutters h-100">
                    <div class="col-4 h-100 d-flex align-items-center">
                        <a href="${b4.href}"><img src="${b4.image_sm}"
                                class="w-100 h-80 radius-border" alt="..."></a>
                    </div>
                    <div class="media-body col-8 pl-3 pr-3 h-100">
                        <p class="tagName mb-1">${b4.type}</p>
                        <div class="pr-4 mb-2">
                            <a href="${b4.href}" class="decoration-underline title">${b4.title}</a>
                        </div>
                        <div class="d-flex justify-content-between">
                            <p class="author font-sm-grey">By-
                                <a href="">${b4.author}</a>
                            </p>
                            <p class="icon">
                                <a href="" class="font-sm-grey iconfont icon-xihuanlike"><span
                                        class="pl-1">${b4.like}</span></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 5 -->
            <div class="others-views container mb-2">
                <div class="media row no-gutters h-100">
                    <div class="col-4 h-100 d-flex align-items-center">
                        <a href="${b5.href}"><img src="${b5.image_sm}"
                                class="w-100 h-80 radius-border" alt="..."></a>
                    </div>
                    <div class="media-body col-8 pl-3 pr-3 h-100">
                        <p class="tagName mb-1">${b5.type}</p>
                        <div class="pr-4 mb-2">
                            <a href="${b5.href}" class="decoration-underline title">${b5.title}</a>
                        </div>
                        <div class="d-flex justify-content-between">
                            <p class="author font-sm-grey">By-
                                <a href="">${b5.author}</a>
                            </p>
                            <p class="icon">
                                <a href="" class="font-sm-grey iconfont icon-xihuanlike"><span
                                        class="pl-1">${b5.like}</span></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 6 -->
            <div class="others-views container mb-2">
                <div class="media row no-gutters h-100">
                    <div class="col-4 h-100 d-flex align-items-center">
                        <a href="${b6.href}"><img src="${b6.image_sm}"
                                class="w-100 h-80 radius-border" alt="..."></a>
                    </div>
                    <div class="media-body col-8 pl-3 pr-3 h-100">
                        <p class="tagName mb-1">${b6.type}</p>
                        <div class="pr-4 mb-2">
                            <a href="${b6.href}" class="decoration-underline title">${b6.title}</a>
                        </div>
                        <div class="d-flex justify-content-between">
                            <p class="author font-sm-grey">By-
                                <a href="">${b6.author}</a>
                            </p>
                            <p class="icon">
                                <a href="" class="font-sm-grey iconfont icon-xihuanlike"><span
                                        class="pl-1">${b6.like}</span></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>`;
            $("#most-views").html(html)
        }
    })
    //最新
    $.ajax({
        url:`http://localhost:8080/blogs/recent`,
        type:"get",
        dataType:"json",
        success(result){
            var [b1,b2,b3,b4,b5,b6] = result
            var html = `<!-- 1 -->
            <div class="others-views container mb-2">
                <div class="media row no-gutters h-100">
                    <div class="col-4 h-100 d-flex align-items-center">
                        <img src="${b1.image_sm}" class="w-100 h-80 radius-border"
                            alt="...">
                    </div>
                    <div class="media-body col-8 pl-3 pr-3 h-100">
                        <p class="tagName mb-1">${b1.type}</p>
                        <div class="pr-4 mb-2">
                            <a href="${b1.href}" class="decoration-underline title">${b1.title}</a>
                        </div>
                        <div class="d-flex justify-content-between">
                            <p class="author font-sm-grey">By-
                                <a href="">${b1.author}</a>
                            </p>
                            <p class="icon">
                                <a href="" class="font-sm-grey iconfont icon-xihuanlike"><span
                                        class="pl-1">${b1.like}</span></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 2 -->
            <div class="others-views container mb-2">
                <div class="media row no-gutters h-100">
                    <div class="col-4 h-100 d-flex align-items-center">
                        <img src="${b2.image_sm}" class="w-100 h-80 radius-border"
                            alt="...">
                    </div>
                    <div class="media-body col-8 pl-3 pr-3 h-100">
                        <p class="tagName mb-1">${b2.type}</p>
                        <div class="pr-4 mb-2">
                            <a href="${b2.href}" class="decoration-underline title">${b2.title}s</a>
                        </div>
                        <div class="d-flex justify-content-between">
                            <p class="author font-sm-grey">By-
                                <a href="">${b2.author}</a>
                            </p>
                            <p class="icon">
                                <a href="" class="font-sm-grey iconfont icon-xihuanlike"><span
                                        class="pl-1">${b2.like}</span></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 3 -->
            <div class="others-views container mb-2">
                <div class="media row no-gutters h-100">
                    <div class="col-4 h-100 d-flex align-items-center">
                        <img src="${b3.image_sm}" class="w-100 h-80 radius-border"
                            alt="...">
                    </div>
                    <div class="media-body col-8 pl-3 pr-3 h-100">
                        <p class="tagName mb-1">${b3.type}</p>
                        <div class="pr-4 mb-2">
                            <a href="${b3.href}" class="decoration-underline title">${b3.title}</a>
                        </div>
                        <div class="d-flex justify-content-between">
                            <p class="author font-sm-grey">By-
                                <a href="">${b3.author}</a>
                            </p>
                            <p class="icon">
                                <a href="" class="font-sm-grey iconfont icon-xihuanlike"><span
                                        class="pl-1">${b3.like}</span></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 4 -->
            <div class="others-views container mb-2">
                <div class="media row no-gutters h-100">
                    <div class="col-4 h-100 d-flex align-items-center">
                        <img src="${b4.image_sm}" class="w-100 h-80 radius-border"
                            alt="...">
                    </div>
                    <div class="media-body col-8 pl-3 pr-3 h-100">
                        <p class="tagName mb-1">${b4.type}</p>
                        <div class="pr-4 mb-2">
                            <a href="${b4.href}" class="decoration-underline title">${b4.title}</a>
                        </div>
                        <div class="d-flex justify-content-between">
                            <p class="author font-sm-grey">By-
                                <a href="">${b4.author}</a>
                            </p>
                            <p class="icon">
                                <a href="" class="font-sm-grey iconfont icon-xihuanlike"><span
                                        class="pl-1">${b4.like}</span></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 5 -->
            <div class="others-views container mb-2">
                <div class="media row no-gutters h-100">
                    <div class="col-4 h-100 d-flex align-items-center">
                        <img src="${b5.image_sm}" class="w-100 h-80 radius-border"
                            alt="...">
                    </div>
                    <div class="media-body col-8 pl-3 pr-3 h-100">
                        <p class="tagName mb-1">${b5.type}</p>
                        <div class="pr-4 mb-2">
                            <a href="${b5.href}" class="decoration-underline title">${b5.title}</a>
                        </div>
                        <div class="d-flex justify-content-between">
                            <p class="author font-sm-grey">By-
                                <a href="">${b5.author}</a>
                            </p>
                            <p class="icon">
                                <a href="" class="font-sm-grey iconfont icon-xihuanlike"><span
                                        class="pl-1">${b5.like}</span></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 6 -->
            <div class="others-views container mb-2">
                <div class="media row no-gutters h-100">
                    <div class="col-4 h-100 d-flex align-items-center">
                        <img src="${b6.image_sm}" class="w-100 h-80 radius-border"
                            alt="...">
                    </div>
                    <div class="media-body col-8 pl-3 pr-3 h-100">
                        <p class="tagName mb-1">${b6.type}</p>
                        <div class="pr-4 mb-2">
                            <a href="${b4.href}" class="decoration-underline title">${b6.title}</a>
                        </div>
                        <div class="d-flex justify-content-between">
                            <p class="author font-sm-grey">By-
                                <a href="">${b6.author}</a>
                            </p>
                            <p class="icon">
                                <a href="" class="font-sm-grey iconfont icon-xihuanlike"><span
                                        class="pl-1">${b6.like}</span></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>`;
            $("#recent").html(html)
        }
    })
    //高赞评论
    
})