<%@ page import="com.bai.utils.constants.Constants" %><%--
  Created by IntelliJ IDEA.
  User: BaiYiChen
  Date: 2023/10/27
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--#122b40--%>
<body background="/static/img/1583851799.jpg"
      style="
      <c:if test="${padding_add}">padding-top: 110px;</c:if>
		      background-repeat:no-repeat ;
		      background-size:100% 100%;
		      background-attachment: fixed;opacity: 0.9;">
<nav style="position:fixed;z-index: 999;width: 100%;top: 0;background-color: #122b40;border: none;"
     class="navbar navbar-default"
     role="navigation">
	<div class="container-fluid">
		<%--		<div class="navbar-header" style="margin-left: 8%;margin-right: 1%">--%>
		<%--			&lt;%&ndash;			<a class="navbar-brand" href="<c:url value="/admin_main.html"/>"&ndash;%&gt;--%>
		<%--			<a class="navbar-brand" href="<c:url value="/index"/>"--%>
		<%--			   style="font-family: 华文行楷; font-size: 250%; color: white">图书管理系统</a>--%>
		<%--		</div>--%>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-left">
				<li <c:if test="${current eq 1}">class="dropdown active"</c:if>>
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white">
						图书馆管理
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li><a href="<c:url value="/admin_news_add.html"/>">发布公告</a></li>
						<li class="divider"></li>
						<li><a href="<c:url value="/admin_news_list.html"/>">公告管理</a></li>
						<li class="divider"></li>
						<li><a href="<c:url value="/admin_appoint_add.html"/>">发布预约信息</a></li>
						<li class="divider"></li>
						<li><a href="<c:url value="/admin_appoint_info.html"/>">预约管理</a></li>
					</ul>
				</li>
				<li <c:if test="${current eq 2}">class="dropdown active"</c:if>>
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white">
						图书管理
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li><a href="<c:url value="/admin_books.html"/>">全部图书</a></li>
						<li class="divider"></li>
						<li><a href="<c:url value="/book_add.html"/>">增加图书</a></li>
					</ul>
				</li>
				<li <c:if test="${current eq 3}">class="dropdown active"</c:if>>
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white">
						读者管理
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li><a href="<c:url value="/allreaders.html"/>">全部读者</a></li>
						<li class="divider"></li>
						<li><a href="<c:url value="/reader_add.html"/>">增加读者</a></li>
					</ul>
				</li>
				<li <c:if test="${current eq 4}">class="dropdown active"</c:if>>
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white">
						日志管理
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li><a href="<c:url value="/lendlist.html"/>">借还日志</a></li>
						<li><a href="<c:url value="/admin_appoint_list.html"/>">预约日志</a></li>
						<%--						todo 待实现--%>
						<%--						<li><a href="<c:url value="/logginglist.html"/>">操作日志</a></li>--%>
						<li><a href="<c:url value="/logginglist.html"/>">登录日志</a></li>
					</ul>
				</li>
				<li <c:if test="${current eq 5}">class="dropdown active"</c:if>>
					<a href="<c:url value="#"/>" class="dropdown-toggle" data-toggle="dropdown" style="color: white">
						统计分析
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li><a href="<c:url value="/data/sheet"/>">统计图</a></li>
					</ul>
				</li>
				<li <c:if test="${current eq 6}">class="active"</c:if>>
					<a href="<c:url value="<%=Constants.AccessPageUrl.CONCAT_ME_ADMIN%>"/>" style="color: white">
						读者咨询
					</a>
				</li>
				<li <c:if test="${current eq 7}">class="active"</c:if>>
					<a href="<c:url value="/admin_repasswd.html"/>" style="color: white">
						密码修改
					</a>
				</li>
				<li>
					<a href="<c:url value="/index"/>" style="color: white">
						图书馆首页
					</a>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="<c:url value="/admin_main.html"/>" style="color: white">
					<c:choose>
						<c:when test="${admin.username ne null}">
							${admin.username}-已登录
						</c:when>
						<c:when test="${role.username ne null}">
							${role.username}-已登录
						</c:when>
						<c:otherwise>
							未登录
						</c:otherwise>
					</c:choose>
				</a>
				</li>
				<li><a href="<c:url value="/logout.html"/>" style="color: white">退出</a></li>
			</ul>
		</div>
	</div>
</nav>

