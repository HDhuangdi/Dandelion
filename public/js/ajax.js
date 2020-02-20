function ajax({url,type='get',data}){
    return new Promise((resolve,reject)=>{
        var xhr = new XMLHttpRequest();
        if(type == 'get'){
            url += '?'+data;
        }
        xhr.open(type,url,true);
        xhr.onreadystatechange = function(){
            if(xhr.readyState == 4 &&xhr.status==200){
                result = JSON.parse(xhr.responseText);
                resolve(result);
            }
        }
        if(type == 'post'){
            xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
            xhr.send(data)
        }else{
            xhr.send();
        }
    })
}