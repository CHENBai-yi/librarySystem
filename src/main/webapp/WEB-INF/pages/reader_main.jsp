<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>${readercard.username}的主页</title>
	<link rel="stylesheet" href="/static/css/bootstrap.min.css">
	<script type="text/javascript" src="/static/js/jquery-3.2.1.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>
	<script src="/static/js/js.cookie.js"></script>
	<style>
        .content {
            width: 350px;
            height: 500px;
            background-color: #FFFFFF;
            border-top: 5px solid #99CCCC;
            border-radius: 5%;
            border-bottom: 5px solid #99CCCC;
            position: relative;
            top: 20px;

        }

        .librarynew-title-text {
            font-size: 30px;
            position: relative;
            top: 20px;
            left: 50px;
            font-weight: 600;
            color: #333333;

        }

        .more {
            position: relative;
            left: 280px;

        }

        .content ul {
            list-style-type: none;
        }

        .content li {
            font-size: 17px;
            font-weight: 200;
        }

        .new-titles a {
            color: black;
            text-decoration: dashed;
        }

        .new-time {
            display: block;
            font-size: 15px;
        }

        /*====================================*/

        .schoolnew {
            width: 600px;
            height: 500px;
            background-color: white;
            border: 5px solid #99CCCC;
            border-radius: 10%;
            position: relative;
            left: 400px;

        }

        .schoolnew span {
            position: relative;
            left: 80px;
            top: 5px;
            font-size: 35px;
            font-weight: 700;
            color: #333333;
        }

        .schoolnew-titles ul {
            list-style-type: none;
        }

        .schoolnew-titles li {
            line-height: 50px;
            font-size: 35px;
            font-weight: 200;
        }

        .schoolnew-titles a {
            color: #333333;
            text-decoration: dashed;
        }

        .main {
            width: 100%;
            height: 80%;
            float: left;
        }
	</style>
</head>
<body background="/static/img/1583851799.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">

<nav class="navbar navbar-default" role="navigation" style="background-color:#122b40">
	<div class="container-fluid">
		<div class="navbar-header" style="margin-left: 8%;margin-right: 1%">
			<a class="navbar-brand " href="reader_main.html"><p class="text-primary"
			                                                    style="font-family: 华文行楷; font-size: 200%; color: white ">
				我的图书馆</p></a>
		</div>
		<div class="collapse navbar-collapse" id="example-navbar-collapse">
			<ul class="nav navbar-nav navbar-left">
				<li class="active">
					<a href="reader_books.html" style="color: white">
						图书查询
					</a>
				</li>
				<li class="dropdown">
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
				<li class="dropdown">
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
				<li>
					<a href="reader_repasswd.html" style="color: white">
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


<%--=======================================================================--%>
<div class="content" style="display: inline-block;overflow-x:hidden">
	<div class="librarynew-title-text">公告通知
	</div>
	<a href="#" class="more">更多>></a>
	
	<div class="new-titles">
		
		<ul>
			<c:forEach items="${news}" var="newitem">
				<a href="news_detail.html?newsId=<c:out value="${newitem.newsId}"></c:out>">
					<li>${newitem.newsTitle}
						<span class="new-time">${newitem.createTime}</span>
					</li>
				</a>
			</c:forEach>
		</ul>
	</div>
	
	<%--=============================================================================--%>
	<%--    <div class="schoolnew" style="display: inline-block">--%>
	<%--        <span>校园报道</span>--%>
	<%--        <div class="schoolnew-titles">--%>
	<%--            <ul>--%>
	<%--                <a href="#">--%>
	<%--                    <li>xfsfsf</li>--%>
	<%--                </a>--%>
	<%--                <a href="">--%>
	<%--                    <li>sfsfsfsdf</li>--%>
	<%--                </a>--%>
	<%--                <a href="">--%>
	<%--                    <li>fsfsfsdfsdf</li>--%>
	<%--                </a>--%>
	<%--                <a href="">--%>
	<%--                    <li>fsfsdfsf</li>--%>
	<%--                </a>--%>
	<%--                <a href="">--%>
	<%--                    <li>fsdfsdfs</li>--%>
	<%--                </a>--%>
	<%--            </ul>--%>
	<%--        </div>--%>
	<%--</div>--%>

</body>
</html>
