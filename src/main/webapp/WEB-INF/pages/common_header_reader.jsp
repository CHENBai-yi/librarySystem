<%--
  Created by IntelliJ IDEA.
  User: BaiYiChen
  Date: 2023/10/28
  Time: 1:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default" role="navigation" style="background-color:#122b40">
	<div class="container-fluid">
		<div class="navbar-header" style="margin-left: 8%;margin-right: 1%">
			<a class="navbar-brand " href="reader_main.html"><p class="text-primary"
			                                                    style="font-family: 华文行楷; font-size: 200%; color: white ">
				我的图书馆</p></a>
		</div>
		<div class="collapse navbar-collapse" id="example-navbar-collapse">
			<ul class="nav navbar-nav navbar-left">
				
				<li <c:if test="${current eq 1}">class="active"</c:if>>
					<a href="reader_books.html" style="color: white">
						图书查询
					</a>
				</li>
				<li <c:if test="${current eq 2}">class=" dropdown active"</c:if>>
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
				<li <c:if test="${current eq 3}">class="dropdown active"</c:if>>
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
				<li <c:if test="${current eq 4}">class="active"</c:if>>
					<a href="reader_repasswd.html" style="color: white">
						密码修改
					</a>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="reader_info.html">
					<c:choose>
						<c:when test="${readercard.username ne null}">
							${readercard.username}, 已登录
						</c:when>
						<c:when test="${role.username ne null}">
							${role.username}, 已登录
						</c:when>
						<c:otherwise>
							未登录
						</c:otherwise>
					</c:choose>
				</a>
				</li>
				<li><a href="logout.html">退出</a></li>
			</ul>
		</div>
	</div>
</nav>
