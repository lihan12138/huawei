$(function() {
    $('.zhanghao .btn').on('click', function() {
        $.get("../lip/login.php", { "username": $('#username').val(), "password": $('#password').val() },
            function(data) {
                if (data == "denglu") {
                    cookie.set('isLogin', 'true', 1);
                    cookie.set('username', $('#username').val());
                    location.href = "../../index.html";
                    // history.go(-1);
                    //location.reload();
                } else {
                    alert("用户名或密码错误，请重新输入")
                }
            }
        );
    })
})