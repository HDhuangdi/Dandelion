function ajax({
    url,
    type = "get",
    data
}) {
    return new Promise((resolve, rejected) => {
        if (type == "get") {
            url += "?" + data;
        }
        var xhr = new XMLHttpRequest();
        xhr.open(type, url, true);
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {
                var result = JSON.parse(xhr.responseText);
                resolve(result);
            }
        }
        if (type == "post") {
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded")
            xhr.send(data)
        } else {
            xhr.send();
        }
    })
}