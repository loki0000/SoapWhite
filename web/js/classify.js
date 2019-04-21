window.onresize=function () {
    var width=document.body.clientWidth
    if (width<1300){
        for ( var i=0;i<12;i++) {
            document.getElementById("box").style.width="1300px"
        }
    }else {
        for ( var i=0;i<12;i++) {
            document.getElementById("box").style.width="100%"
        }
    }
}