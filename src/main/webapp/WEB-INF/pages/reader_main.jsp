<%@ page import="com.bai.utils.constants.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>${readercard.username}的主页</title>
	<link href="<c:url value="<%=Constants.StaticIcon.icon_path%>"/>" rel="shortcut icon"
	      type="image/vnd.microsoft.icon"/>
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
<jsp:include page="common_header_reader.jsp"/>

<%--=======================================================================--%>
<div class="content" style="display: inline-block;overflow-x:hidden">
	<div class="librarynew-title-text">公告通知
	</div>
	<a href="<c:url value="<%=Constants.AccessPageUrl.JOURNALISM_URL%>"/>" class="more">更多>></a>
	
	<div class="new-titles">
		
		<ul>
			<c:forEach items="${news}" var="newitem">
				<a href="<c:url value="/news_detail.html?newsId=${newitem.newsId}"/>">
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
