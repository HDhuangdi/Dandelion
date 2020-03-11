$(function () {
    function timeFormat(time) {
        var date = new Date(time)
        return date.toLocaleDateString()
    }
    // 设置全局参数
    var globelParams = null;
    //导航切换相关功能
    function load(url, params) {
        $.ajax({
            url: url,
            data: params,
            type: "get",
            dataType: "json",
            success(result) {
                var html = ``;
                for (var blog of result) {
                    html += `<div class="card radius-border shadow-box mb-5">
                    <a href="${blog.href}"><img src="${blog.image}" class="w-100"></a>
                    <div class="card-body d-flex flex-column pb-0">
                        <p class="tagName">${blog.type}</p>
                        <a class="card-title" href="${blog.href}">${blog.title}</a>
                        <p class="card-text font-sm-grey">${blog.subtitle}</p>
                        <div class="card-foot d-flex justify-content-between">
                            <p class="author font-sm-grey">By-
                                <a href="">${blog.author}</a>
                                <span class="iconfont icon-calendar ml-3 font-sm-grey">
                                    <span class="pl-1">${timeFormat(blog.time)}</span>
                                </span>
                            </p>
                            <p class="icon">
                                <a href="" class="font-sm-grey iconfont icon-xihuanlike
                             mr-2"><span class="pl-1">${blog.like}</span></a>
                                <a href="" class="font-sm-grey iconfont icon-pinglun"><span
                                        class="pl-1">${blog.comments}</span></a>
                            </p>
                        </div>
                    </div>
                </div>`
                };
                $(".left").html(html)
            }
        })
    }
    load("http://localhost:8080/blogs/recent")
    $(".types").on("click", "a", function (e) {
        var $this = $(e.target)
        $this.siblings().removeClass("active")
        $this.addClass("active")
        if ($this.is("#all")) {
            globelParams = null
            load("http://localhost:8080/blogs/recent")

        } else if ($this.is("#shangxi")) {
            globelParams = "type=赏析"
            load("http://localhost:8080/blogs/type", "type=赏析");
        } else if ($this.is("#jiaoxue")) {
            globelParams = "type=教学"
            load("http://localhost:8080/blogs/type", "type=教学");
        } else if ($this.is("#fangfa")) {
            globelParams = "type=方法"
            load("http://localhost:8080/blogs/type", "type=方法");
        } else if ($this.is("#zhanshi")) {
            globelParams = "type=展示"
            load("http://localhost:8080/blogs/type", "type=展示");
        }
    })
    //排序按钮事件
    $(".sort").on("click", "a", function (e) {
        var $this = $(e.target)
        if ($this.is("#byTime")) {
            if ($this.attr("data-sort") == "desc") {
                $this.attr("data-sort", "asc")
                load("http://localhost:8080/blogs/recent", `${globelParams}&sort=desc`)
            } else {
                $this.attr("data-sort", "desc")
                load("http://localhost:8080/blogs/recent", `${globelParams}&sort=asc`)
            }
        } else if ($this.is("#byLikes")) {
            if ($this.attr("data-sort") == "desc") {
                $this.attr("data-sort", "asc")
                load("http://localhost:8080/blogs/mostLike", `${globelParams}&sort=desc`)
            } else {
                $this.attr("data-sort", "desc")
                load("http://localhost:8080/blogs/mostLike", `${globelParams}&sort=asc`)
            }
        }

    })
})