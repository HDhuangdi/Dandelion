function a(){
    return "小明"
}
Promise.all([a]).then(result=>{console.log(result)})