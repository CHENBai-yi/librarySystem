<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${readercard.username}的主页</title>
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <script src="/static/js/jquery-3.2.1.js"></script>
    <script src="/static/js/bootstrap.min.js" ></script>
    <script src="/static/js/js.cookie.js"></script>
    <script>
        $(function () {
            $('#header').load('reader_header.html');
        })
    </script>
</head>
<body background="/static/img/1583851799.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">


<nav class="navbar navbar-default" role="navigation" style="background-color:#122b40">
    <div class="container-fluid">
        <div class="navbar-header" style="margin-left: 8%;margin-right: 1%">
            <a class="navbar-brand " href="reader_main.html"><p class="text-primary" style="font-family: 华文行楷; font-size: 200%; color: white ">我的图书馆</p></a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav navbar-left">
                <li class="active">
                    <a href="reader_books.html"  style="color: white">
                        图书查询
                    </a>
                </li>
                <li class="dropdown" >
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white">
                        我的
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="reader_info.html">个人信息</a></li>
                        <li class="divider"></li>
                        <li><a href="mylend.html"> 我的借还</a></li>
                    </ul>
                </li>
                <li class="dropdown" >
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white">
                        图书馆预约
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="reader_appoint_list.html">我的预约</a></li>
                        <li class="divider"></li>
                        <li><a href="reader_appoint_show.html">预约</a></li>
                    </ul>
                </li>
                <li >
                    <a href="reader_repasswd.html" style="color: white" >
                        密码修改
                    </a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="reader_info.html">${readercard.username}, 已登录</a></li>
                <li><a href="logout.html">退出</a></li>
            </ul>
        </div>
    </div>
</nav>


<div class="col-xs-5 col-md-offset-3">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">
                信息修改
            </h3>
        </div>
        <div class="panel-body">
            <form action="reader_edit_do_r.html" method="post" id="edit" >
                <div class="input-group">
                    <span  class="input-group-addon">读者证号</span>
                    <input type="text" readonly="readonly" class="form-control" name="readerId" id="readerId" value="${readerinfo.readerId}">
                </div>
                <div class="input-group">
                    <span class="input-group-addon">姓名</span>
                    <input type="text" class="form-control" name="name" id="name" value="${readerinfo.name}" >
                </div>
                <div class="input-group">
                    <span  class="input-group-addon">性别</span>
                    <input type="text" class="form-control" name="sex" id="sex"  value="${readerinfo.sex}" >
                </div>
                <div class="input-group">
                    <span class="input-group-addon">生日</span>
                    <input type="date" class="form-control" name="birth" id="birth"  value="${readerinfo.birth}" >
                </div>
                <div class="input-group">
                    <span  class="input-group-addon">地址</span>
                    <input type="text" class="form-control" name="address" id="address"  value="${readerinfo.address}" >
                </div>
                <div class="input-group">
                    <span  class="input-group-addon">电话</span>
                    <input type="text" class="form-control" name="phone" id="phone"  value="${readerinfo.phone}" >
                </div>
                <br/>
                <input type="submit" value="确定" class="btn btn-success btn-sm" class="text-left">
                <script>
                    $("#edit").submit(function () {
                        if($("#name").val()==''||$("#sex").val()==''||$("#birth").val()==''||$("#address").val()==''||$("#phone").val()==''){
                            alert("请填入完整图书信息！");
                            return false;
                        }
                    })
                </script>
            </form>
        </div>
    </div>
</div>
</body>
</html>
