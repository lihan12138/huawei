$(function() {
    var reg = {
        "password": /^.{6,}$/,
        "checkpass": /^.{6,}$/,
        "email": /^\w{6,}@[A-z0-9]{2,}\.[A-z]{2,}\.?[A-z]*$/,
        "phone": /^1[3-9]\d{9}$/
    };
    $('#phone').on('blur', function() {
        if (reg["phone"].test($(this).val())) {
            $.get("../lip/zhuce.php", { "username": $(this).val() }, function(data) {
                console.log(data);
                if (data == "chenggong") {
                    $('.phoneyz').html("验证通过").css("color", "green");
                    $("#phone").attr("passset", "true");
                } else {
                    $(this).attr("passset", "flase")
                    $('.phoneyz').html("手机已注册").css("color", "red");
                }
            })
        } else {
            $(this).attr("passset", "flase")
            $('.phoneyz').html("未通过").css("color", "red");
        }
        check()
    })
    $('#email').on('blur', function() {
        if (reg["email"].test($(this).val())) {
            $('.emailyz').html("验证通过").css("color", "green");
            $(this).attr("passset", "true")
        } else {
            $('.phoneyz').html("未通过").css("color", "red");
            $('.emailyz').html("未通过").css("color", "red");
        }
        check()
    })
    $('#paw').on('blur', function() {
        if (reg["password"].test($(this).val())) {
            $('.pawyz').html("验证通过").css("color", "green");
            $(this).attr("passset", "true")
        } else {
            $('.phoneyz').html("未通过").css("color", "red");
            $('.pawyz').html("格式不正确").css("color", "red");
        }
        check()
    })
    $('#paw1').on('blur', function() {
        if ($(this).val() == $('#paw').val()) {
            $('.checkyz').html("验证通过").css("color", "green");
        } else { $('.checkyz').html("请重新输入").css("color", "red") }
    })

    function check() {
        var pass = $('input[passset="true"]');
        if (pass.length == 3) {
            $(".btn").removeAttr('disabled');
        }
    }
    $('.btn').on('click', function() {
        $.get("../lip/zhuce1.php", { "username": $('#phone').val(), "password": $('#paw').val(), "email": $('#email').val() },
            function(data) {
                if (data == "成功") {
                    alert("注册成功");
                    location.href = "./login.html";
                }
            })
    })
})