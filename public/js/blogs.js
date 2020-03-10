$(function () {
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
    })
})