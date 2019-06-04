$(function() {
    //console.log($('#denglu').html())
    var username = cookie.get("username");
    var i = cookie.get("isLogin")
        // console.log(username)
    if (i) {
        var dd = `&nbsp;&nbsp;&nbsp;<a href="javascript:location.reload()" id="tuichu">退出</a>`
        $('#denglu').html(username + dd);
        $('#denglu').attr("href", "#")
    }
    $('header>.center>.top>.right>li:first').on('click', "#tuichu", function() {
        cookie.remove("isLogin");
        $('#denglu').html("请登陆");
    })
    $('header>.center>.top>.right>li:last').on('click', function() {
        if (!i) {
            alert('请登录')
            $('#shopcar').attr("href", "#")
        }
    })
})