!function ($) {
    "use strict";
    var SweetAlert = function () {
    };

    SweetAlert.prototype.init = function () {

        $('#sa-basic').click(function () {
            swal("这是消息1");
        });

        $('#sa-title').click(function () {
            swal("这是标题!", "这是身体");
        });

        $('#sa-success').click(function () {
            swal("完成!", "您已经完成zauth的注册", "success")
        });

        $('#sa-params').click(function () {
            swal({
                title: "确定删除吗?",
                text: "该操作将永久删除博客!",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "是，删除!",
                cancelButtonText: "不，取消!",
                closeOnConfirm: false,
                closeOnCancel: false
            }, function (isConfirm) {
                if (isConfirm) {
                    swal("删除成功!", "博客已永久删除", "success");
                } else {
                    swal("删除取消!", "博客依然存在", "success");
                }
            });
        });

        $('#sa-image').click(function () {
            swal({
                title: "HOPPIN!",
                text: "你好啊啊啊",
                imageUrl: "/static/picture/0.jpg"
            });
        });

        $('#sa-close').click(function () {
            swal({
                title: "自动关闭!",
                text: "我将在2s后自动关闭",
                timer: 2000,
                showConfirmButton: false
            });
        });


    },
        //init
        $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
}(window.jQuery),

//initializing 
    function ($) {
        "use strict";
        $.SweetAlert.init()
    }(window.jQuery);