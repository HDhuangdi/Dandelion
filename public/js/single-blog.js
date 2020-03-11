$(function(){
    //为查看回复绑定单击事件
    $(".comments").click(function(e){
        if(e.target.id=="showMore")
        //切换小评论的class
        $(".comment-S").toggleClass("show")
    })
    var search = location.search.slice(1)
    $.ajax({
        url:`http://localhost:8080/blogs`,
        type:"get",
        data:`${search}`,
        dataType:"json",
        success(result){    
            var [obj] = result;
            $(".main .tagName").html(obj.type);
            $(".main .card-title").html(obj.title);
            $(".main .titlePic").html(`<img src="${obj.image}"class="card-img-top w-100">`);
            $(".main .card-text").html(`<p>${obj.text}</p>`); 
            var arr = obj.tags.split(",")
            var html = `<a href="#" class="radius-border shadow-box text-center mr-3">${arr[0]}</a>
            <a href="#" class="radius-border shadow-box text-center mr-3">${arr[1]}</a>`
            $(".main .icons .tags").html(html)
        }
    });
    var bid= location.search.slice(1);
    function timeFormatter(value) {
        //2020-03-06T15:21:09.000Z
        var da = new Date(value);
        return da.getFullYear() + "-" + (da.getMonth() + 1) + "-" + da.getDate()
    }
    $.ajax({
        url:`http://localhost:8080/blogs/comments`,
        type:"get",
        data:bid,
        dataType:"json",
        success(result){
            var [c1,c2,c3] = result;
            var html = `<!-- 1 -->
            <div class="comment mt-4">
                <!-- 大评论 -->
                <div class="comment-L row no-gutters">
                    <div class="portrait col-2 text-center pl-3">
                        <img src="${c1.portrait}" alt="" class="rounded-circle w-75">
                    </div>
                    <div class="col-10">
                        <a href="javascript:;" class="uname">${c1.uname}</a>
                        <p class="text font-weight-bold my-2">${c1.content}</p>
                        <ul class="icons list-unstyled d-flex">
                            <li><a href="javascript:;" class="iconfont icon-xihuanlike"><span
                                        class="pl-1">${c1.like}</span></a></li>
                            <li class="ml-3"><a href="javascript:;"
                                    class="iconfont icon-pinglun"><span class="pl-1">${c1.comments}</span></a>
                            </li>
                            <li class="ml-3"><a href="javascript:;"
                                    class="iconfont icon-calendar"><span
                                        class="pl-1">${timeFormatter(c1.time)}</span></a></li>
                            <li class="ml-3"><a href="javascript:;" id="showMore">查看回复</a></li>
                        </ul>
                    </div>
                </div>
                <!-- 小评论 -->
                <div class="comment-S row no-gutters">
                    <div class="portrait col-2 text-center">
                        <img src="${c2.portrait}" alt="" class="rounded-circle w-75 mt-3">
                    </div>
                    <div class="col-10 pl-3">
                        <a href="javascript:;" class="uname">${c2.uname}</a>
                        <p class="text font-weight-bold my-2">${c2.content}</p>
                        <ul class="icons list-unstyled d-flex">
                            <li><a href="javascript:;" class="iconfont icon-xihuanlike"><span
                                        class="pl-1">${c2.like}</span></a></li>
                            <li class="ml-3"><a href="javascript:;"
                                    class="iconfont icon-pinglun"><span class="pl-1">${c2.comments}</span></a>
                            </li>
                            <li class="ml-3"><a href="javascript:;"
                                    class="iconfont icon-calendar"><span
                                        class="pl-1">${timeFormatter(c2.time)}</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- 2 -->
            <div class="comment mt-4">
                <!-- 大评论 -->
                <div class="comment-L row no-gutters">
                    <div class="portrait col-2 text-center pl-3">
                        <img src="${c3.portrait}" alt="" class="rounded-circle w-75">
                    </div>
                    <div class="col-10">
                        <a href="javascript:;" class="uname">${c3.uname}</a>
                        <p class="text font-weight-bold my-2">${c3.content}</p>
                        <ul class="icons list-unstyled d-flex">
                            <li><a href="javascript:;" class="iconfont icon-xihuanlike"><span
                                        class="pl-1">${c3.like}</span></a></li>
                            <li class="ml-3"><a href="javascript:;"
                                    class="iconfont icon-pinglun"><span class="pl-1">${c3.comments}</span></a>
                            </li>
                            <li class="ml-3"><a href="javascript:;"
                                    class="iconfont icon-calendar"><span
                                        class="pl-1">${timeFormatter(c3.time)}</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- 回复 -->
            <div class="reply mb-5">
                <div class="d-flex mt-5 pb-5">
                    <div class="pl-4">
                        <textarea name="" cols="80" rows="3" class="p-3"></textarea>
                    </div>
                    <div class="btn text-center position-relative">
                        <a href="" class="font-weight-bold position-absolute">发布</a>
                    </div>
                </div>
            </div>`;
            $(".comments").html(html)
        }
    })
    //横向列表
    $.ajax({
        url: `http://localhost:8080/blogs/mostLike`,
        type: "get",
        dataType: "json",
        success(result) {
            var [b1, b2, b3, b4, b5, b6] = result
            for (var elem of result) {
                var length = elem.title.length
                if (length > 10) {
                    elem.title = elem.title.slice(0, 10)
                    elem.title += `<a href="javascript:;" >...</a>`
                }
            }
            var html = ` <li class="">
            <div class="card shadow-box radius-border">
                <div class="row no-gutters">
                    <a href="${b1.href}" class="col-4"><img src="${b1.image_sm}" class="card-img"></a>

                    <div class="col-8 card-body p-3 d-flex flex-column justify-content-between w-60">
                        <h5 class="card-title"><a href="${b1.href}"
                                class="font-weight-bold decoration-underline">${b1.title}</a></h5>
                        <div class="card-text d-flex justify-content-between">
                            <p class="mb-0">BY-<a href="">${b1.author}</a></p>
                            <a href="" class="iconfont icon-xihuanlike
                        "><span class="pl-1">${b1.like}</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </li>
        <li>
            <div class="card shadow-box radius-border">
                <div class="row no-gutters">
                    <a href="${b2.href}" class="col-4"><img src="${b2.image_sm}" class="card-img" alt="..."></a>
                    <div class="col-8 card-body p-3 d-flex flex-column justify-content-between">
                        <h5 class="card-title"><a href="${b2.href}"
                                class="font-weight-bold decoration-underline">${b2.title}</a></h5>
                        <div class="card-text d-flex justify-content-between">
                            <p class="mb-0">BY-<a href="">${b2.author}</a></p>
                            <a href="" class="iconfont icon-xihuanlike
                        "><span class="pl-1">${b2.like}</span></a>
                        </div>

                    </div>
                </div>
            </div>
        </li>
        <li>
            <div class="card shadow-box radius-border">
                <div class="row no-gutters">
                    <a href="${b3.href}" class="col-4"><img src="${b3.image_sm}" class="card-img"></a>
                    <div class="col-8 card-body p-3 d-flex flex-column justify-content-between">
                        <h5 class="card-title"><a href="${b3.href}"
                                class="font-weight-bold decoration-underline">${b3.title}</a></h5>
                        <div class="card-text d-flex justify-content-between">
                            <p class="mb-0">BY-<a href="">${b3.author}</a></p>
                            <a href="" class="iconfont icon-xihuanlike
                        "><span class="pl-1">${b3.like}</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </li>
        <li class="">
            <div class="card shadow-box radius-border">
                <div class="row no-gutters">
                    <a href="${b4.href}" class="col-4"><img src="${b4.image_sm}" class="card-img"></a>
                    <div class="col-8 card-body p-3 d-flex flex-column justify-content-between">
                        <h5 class="card-title"><a href="${b4.href}"
                                class="font-weight-bold decoration-underline">${b4.title}</a></h5>
                        <div class="card-text d-flex justify-content-between">
                            <p class="mb-0">BY-<a href="">${b4.author}</a></p>
                            <a href="" class="iconfont icon-xihuanlike
                        "><span class="pl-1">${b4.like}</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </li>
        <li>
            <div class="card shadow-box radius-border">
                <div class="row no-gutters">
                    <a href="${b5.href}" class="col-4"><img src="${b5.image_sm}" class="card-img"></a>
                    <div class="col-8 card-body p-3 d-flex flex-column justify-content-between">
                        <h5 class="card-title"><a href="${b5.href}"
                            class="font-weight-bold decoration-underline">${b5.title}</a></h5>
                        <div class="card-text d-flex justify-content-between">
                            <p class="mb-0">BY-<a href="">${b5.author}</a></p>
                            <a href="" class="iconfont icon-xihuanlike"><span class="pl-1">${b5.like}</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </li>
        <li>
            <div class="card shadow-box radius-border">
                <div class="row no-gutters">
                    <a href="${b6.href}" class="col-4"><img src="${b6.image_sm}" class="card-img"></a>
                    <div class="col-8 card-body p-3 d-flex flex-column justify-content-between">
                        <h5 class="card-title"><a href="${b6.href}"
                            class="font-weight-bold decoration-underline">${b6.title}</a></h5>
                        <div class="card-text d-flex justify-content-between">
                            <p class="mb-0">BY-<a href="">${b6.author}</a></p>
                            <a href="" class="iconfont icon-xihuanlike"><span class="pl-1">${b6.like}</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </li>`;
            $(".transverse .list ul").html(html)
        }
    });
    var $ul = $(".list>ul")
    var margin = parseInt($ul.css("margin-left"));
    var canclick = true
    $(".transverse").click(function (e) {
        var $target = $(e.target)
        if (e.target.nodeName == "A" && canclick) {
            if ($target.is(".next")) {
                if (parseInt(margin) > -1050) { //li的个数*350
                    canclick = false
                    margin -= 350
                    $ul.css("margin-left", margin)
                    //防止用户点击过快
                    setTimeout(() => {
                        canclick = true
                    }, 700)
                }
            } else {
                if (parseInt(margin) < 0) {
                    canclick = false
                    margin += 350
                    $ul.css("margin-left", margin)
                    setTimeout(() => {
                        canclick = true
                    }, 700)
                }
            }
        }
    })
})