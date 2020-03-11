$(function () {
    //5F最新作品切换特效
    $(".nav").on("click", "a", function (e) {
        var $target = $(e.target)
        $target.parent().siblings().children().removeClass("active")
        $target.addClass("active")
        var $ulImg = $("#ulImg")
        $ulImg.css("left", $target.attr("data-move") * -1110)
    })
    $.ajax({
        url: "http://localhost:8080/index",
        type: "get",
        dataType: "json",
        success(result) {
            var {
                banner,
                secondFloor,
                firstFloor,
                thirdFloor,
                fourthFloor,
                fifthFloor,
                sixthFloor,
                seventhFloor
            } = result;
            //banner
            var t = banner[0];
            var html = `<div class="container">
            <div>
                <h1 class="font-weight-bold">${t.title}</h1>
                <p>${t.details}</p>
                <a href="${t.href}">阅读更多</a>
            </div>
            <div class="position">
                <div class="effect-w3">
                    <img src="${t.pic}" alt="">
                    <img src="${t.pic}" alt="">
                    <img src="${t.pic}" alt="">
                    <img src="${t.pic}" alt="">
                </div>
            </div> `;
            $(".banner_1").html(html)
            //1F 关于
            var [t1, t2, t3] = firstFloor;
            var html = `    <div class="container">
            <div class="text-center">
                <p class="m-0 font-plumRed font-weight-bold">关于</p>
                <h3 class="m-0 font-weight-bold">创意无国界</h3>
            </div>
            <div class="row mt-5">
                <div class="col-lg-4 col-sm-12 p-5">
                    <div class="d-flex align-items-center">
                        <!-- iconfont -->
                        <span class="font_sight iconfont icon-zhunxing text-dark"></span>
                        <h5 class="font-weight-bold my-0 ml-2 text-dark">${t1.title}</h5>
                    </div>
                    <p class="mt-4">${t1.details}</p>
                </div>
                <div class="col-lg-4 col-sm-12 p-5">
                    <div class="d-flex align-items-center">
                        <!-- iconfont -->
                        <span class="font_window iconfont icon-chuangkou"></span>
                        <h5 class="font-weight-bold my-0 ml-3">${t2.title}</h5>
                    </div>
                    <p class="mt-4">${t2.details}</p>
                </div>
                <div class="col-lg-4 col-sm-12 p-5">
                    <div class="d-flex align-items-center">
                        <!-- iconfont -->
                        <span class="font_computer iconfont icon-bijiben text-dark"></span>
                        <h5 class="font-weight-bold my-0 ml-2 text-dark">${t3.title}</h5>
                    </div>
                    <p class="mt-4">${t3.details}</p>
                </div>
            </div>
        </div>`;
            $(".about").html(html)
            //2F 特色服务
            var [t1, t2] = secondFloor
            console.log(t1)
            var html = `<div class="container">
            <div class="text-center mb-5">
                <p class="m-0 font-plumRed font-weight-bold">我们的</p>
                <h3 class="m-0 font-weight-bold">特色服务</h3>
            </div>
            <div class="row">
                <div class="col-lg-6 col-sm-12 mt-5">
                    <div class="text-center p-5">
                        <h3 class="font-weight-bold">${t1.title}</h3>
                        <p class="pt-3">${t1.details}</p>
                    </div>
                    <div class="text-center mt-3 p-5">
                        <h3 class="font-weight-bold">${t2.title}</h3>
                        <p class="pt-3">${t2.details}</p>
                    </div>
                </div>
                <div class="col-lg-6 col-sm-12">
                    <img src="images/index/img4.jpg" class="w-100">
                </div>
            </div>
        </div>`
            $(".whatWeDo").html(html)
            //3f 数据统计
            var [t1, t2, t3, t4] = thirdFloor
            var html = `<div class="container d-flex justify-content-around py-5">
            <div class="text-center">
                <h3>${t1.details}</h3>
                <p>${t1.title}</p>
            </div>
            <div class="text-center">
                <h3>${t2.details}</h3>
                <p>${t2.title}</p>
            </div>
            <div class="text-center">
                <h3>${t3.details}</h3>
                <p>${t3.title}</p>
            </div>
            <div class="text-center">
                <h3>${t4.details}</h3>
                <p>${t4.title}</p>
            </div>
        </div>`
            $(".numbers").html(html)
            //4f 团队介绍
            var [t1, t2, t3, t4] = fourthFloor
            var html = `<div class="container">
        <div class="text-center mb-5">
            <p class="m-0 font-plumRed font-weight-bold">了不起的</p>
            <h3 class="m-0 font-weight-bold">我们伟大的团队</h3>
        </div>
        <div class="row">
            <div class="col-lg-4 col-sm-12 p-5">
                <div class="text-center">
                    <img src="${t1.portrait}" alt="">
                    <p class="designer">设计师</p>
                    <h4 class="dName">${t1.uname}</h4>
                    <p class="pt-3 detail">${t1.introduce}</p>
                    <!-- 两个小icon -->
                    <ul class="list-unstyled d-flex justify-content-center">
                        <li class="mx-1">
                            <a href="" class="facebookicon">
                                <span class="iconfont icon-facebook"></span>
                                脸书
                            </a>
                        </li>
                        <li class="mx-1">
                            <a href="" class="twittericon">
                                <span class="iconfont icon-icon_twitter
                                "></span>
                                推特
                            </a>
                        </li>
                    </ul>                
                </div>
            </div>
            <div class="col-lg-4 col-sm-12 p-5">
                <div class="text-center">
                    <img src="${t2.portrait}" alt="">
                    <p class="designer">设计师</p>
                    <h4 class="dName">${t2.uname}</h4>
                    <p class="pt-3 detail">${t2.introduce}</p>
                    <div>
                        <ul class="list-unstyled d-flex justify-content-center">
                            <li class="mx-1">
                                <a href="" class="googleicon">
                                    <span class="iconfont icon-facebook"></span>
                                    谷歌+
                                </a>
                            </li>
                            <li class="mx-1">
                                <a href="" class="linkedinicon">
                                    <span class="iconfont icon-linkedin
                                    "></span>
                                    领英
                                </a>
                            </li>
                        </ul>                
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-12 p-5">
                <div class="text-center">
                    <img src="${t3.portrait}" alt="">
                    <p class="designer">设计师</p>
                    <h4 class="dName">${t3.uname}</h4>
                    <p class="pt-3 detail">${t3.introduce}</p>
                    <div>
                        <ul class="list-unstyled d-flex justify-content-center">
                            <li class="mx-1">
                                <a href="" class="facebookicon">
                                    <span class="iconfont icon-facebook"></span>
                                    脸书
                                </a>
                            </li>
                            <li class="mx-1">
                                <a href="" class="twittericon">
                                    <span class="iconfont icon-icon_twitter
                                    "></span>
                                    推特
                                </a>
                            </li>
                        </ul>                
                    </div>
                </div>
            </div>
        </div>
    </div>`
            $(".team").html(html)
            //5f 技能数据
            var t = fifthFloor[0]
            var html = `<img src="${t.pic}" class="w-100" alt="">`
            $(".skill .img").html(html)
            //6f banner2
            var t = sixthFloor[0]
            var html = `<div class="container">
        <div class="position">
            <div class="effect-w3">
                <img src="${t.pic}" alt="">
                <img src="${t.pic}" alt="">
                <img src="${t.pic}" alt="">
                <img src="${t.pic}" alt="">
            </div>
        </div>
        <div class="textContenter ml-lg-0 ml-md-5">
            <h1 class="font-weight-bold">${t.title}</h1>
            <p>${t.details}</p>
            <a href="${t.href}">阅读更多</a>
        </div>
    </div>`
            $(".banner_2").html(html)
            //7F轮播
            var [t1, t2, t3, t4, t5] = seventhFloor
            for(var elem of seventhFloor){
                var length = elem.text.length
                if(length>60){
                    elem.text=elem.text.slice(0,60)
                    elem.text+=`<a href="javascript:;" style="font-style: normal;margin-left:10px;font-size:14px">更多</a>`
                }
            }
            var html = ` <div class="row no-gutters">
            <div class="col-lg-6 col-sm-12 pt-0 pb-sm-3">
                <div class="p-5">
                    <p class="detail">
                        <span class="iconfont icon-quotation"></span>
                       ${t1.text}
                    </p>
                    <div class="row">
                        <div class="col-3 py-0">
                            <img class="w-100" src="${t1.portrait}">
                        </div>
                        <div class="col-9 py-0">
                            <p class="p-0 m-0 mt-4 dName font-weight-bold">${t1.dname}</p>
                            <p class="p-0 m-0 mt-2 cName">${t1.job}</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-sm-12 pt-0">
                <div class="p-5">
                    <p class="detail">
                        <span class="iconfont icon-quotation"></span>
                        ${t2.text}
                    </p>
                    <div class="row">
                        <div class="col-3 py-0">
                            <img class="w-100" src="${t2.portrait}">
                        </div>
                        <div class="col-9 py-0">
                            <p class="p-0 m-0 mt-4 dName font-weight-bold">${t2.dname}</p>
                            <p class="p-0 m-0 mt-2 cName">${t2.job}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>`
            $(".page_1").html(html)
            var html = `<div class="row no-gutters">
            <div class="col-lg-6 col-sm-12 pt-0 pb-sm-3">
                <div class="p-5">
                    <p class="detail">
                        <span class="iconfont icon-quotation"></span>
                        ${t3.text}
                    </p>
                    <div class="row">
                        <div class="col-3 py-0">
                            <img class="w-100" src="${t3.portrait}" class="w-100">
                        </div>
                        <div class="col-9 py-0">
                            <p class="p-0 m-0 mt-4 dName font-weight-bold">${t3.dname}</p>
                            <p class="p-0 m-0 mt-2 cName">${t3.job}</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-sm-12 pt-0">
                <div class="p-5">
                    <p class="detail">
                        <span class="iconfont icon-quotation"></span>
                        ${t4.text}
                    </p>
                    <div class="row">
                        <div class="col-3 py-0">
                            <img class="w-100" src="${t4.portrait}">
                        </div>
                        <div class="col-9 py-0">
                            <p class="p-0 m-0 mt-4 dName font-weight-bold">${t4.dname}</p>
                            <p class="p-0 m-0 mt-2 cName">${t4.job}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>`
            $(".page_2").html(html)
            var html = ` <div class="row no-gutters">
            <div class="col-lg-6 col-sm-12 pt-0 pb-sm-3">
                <div class="p-5">
                    <p class="detail">
                        <span class="iconfont icon-quotation"></span>
                        ${t5.text}
                    </p>
                    <div class="row">
                        <div class="col-3 py-0">
                            <img class="w-100" src="${t5.portrait}">
                        </div>
                        <div class="col-9 py-0">
                            <p class="p-0 m-0 mt-4 dName font-weight-bold">${t5.dname}</p>
                            <p class="p-0 m-0 mt-2 cName">${t5.job}</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-sm-12 pt-0">
                <div class="p-5">
                    <p class="detail">
                        <span class="iconfont icon-quotation"></span>
                        ${t1.text}
                    </p>
                    <div class="row">
                        <div class="col-3 py-0">
                            <img class="w-100" src="${t1.portrait}" class="w-100">
                        </div>
                        <div class="col-9 py-0">
                            <p class="p-0 m-0 mt-4 dName font-weight-bold">${t1.dname}</p>
                            <p class="p-0 m-0 mt-2 cName">${t1.job}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>`
            $(".page_3").html(html)
        }
    })
})