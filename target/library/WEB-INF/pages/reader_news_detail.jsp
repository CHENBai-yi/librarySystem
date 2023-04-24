<%--
  Created by IntelliJ IDEA.
  User: 云飘
  Date: 2020/6/4
  Time: 17:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>公告详情</title>
    <style>
        .news{
            width: 650px;
            height: 900px;
            background-color: azure;
            position: relative;
            top: 80px;
            left: 25%;
            border-top: 3px solid #6666FF;
            /* border-radius: 5%; */
        }
        .news-title{
            width: 600px;
            height: 80px;
            background-color: azure;
            border-bottom: 2px solid #99CCCC ;
            position: relative;
            /* top: 30px; */
            left: 25px;
            line-height: 80px;
            text-align: center;
            font-size: 23px;
            font-weight: 500;
        }
        .news-content{
            text-align:left;
            font-size: 20px;
            position: relative;
            top: 50px;
            font-weight: 200;
        }
        .news-content span{
            position: relative;
            top: 60px;
            left: 300px;
            font-size: 20px;
            font-weight: 500;
        }
        .news-content p{
            position: relative;
            left: 280px;
            font-size: 20px;
            font-weight: 500;
        }
    </style>
</head>
<body>
<div class="news">
    <div class="news-title">
 ${news.newsTitle}
    </div>
    <div class="news-content">
      ${news.newsContent}
<%--        <span>通知人:${news.newsAdmin}</span>--%>
<%--          <p>${news.createTime}</p>--%>

    </div>

</div>
</body>
</html>
