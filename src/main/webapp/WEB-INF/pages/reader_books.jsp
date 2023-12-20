<%@ page import="com.bai.utils.constants.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
	<title>全部图书信息</title>
	<link href="<c:url value="<%=Constants.StaticIcon.ICON_PATH%>"/>" rel="shortcut icon"
	      type="image/vnd.microsoft.icon"/>
	<link rel="stylesheet" href="/static/css/bootstrap.min.css">
	<script src="/static/js/jquery-3.2.1.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>
	<script src="/static/js/js.cookie.js"></script>
	<script>
        $(function () {
            $('#header').load('reader_header.html');
        })
	</script>
</head>


<c:set var="current" value="1" scope="request"/>
<jsp:include page="common_header_reader.jsp"/>


<div style="padding: 20px 550px 10px">
	<form method="post" action="reader_querybook_do.html" class="form-inline" id="searchform">
		<div class="input-group">
			<input type="text" placeholder="输入图书名" class="form-control" id="search" name="searchWord"
			       class="form-control">
			<span class="input-group-btn">
                <input type="submit" value="搜索" class="btn btn-default">
            </span>
		</div>
	</form>
	<script>
        $("#searchform").submit(function () {
            var val = $("#search").val();
            if (val == '') {
                alert("请输入关键字");
                return false;
            }
        })
	</script>
</div>
<div style="position: relative;top: 10%">
	<c:if test="${!empty succ}">
		<div class="alert alert-success alert-dismissable">
			<button type="button" class="close" data-dismiss="alert"
			        aria-hidden="true">
				&times;
			</button>
				${succ}
		</div>
	</c:if>
	<c:if test="${!empty error}">
		<div class="alert alert-danger alert-dismissable">
			<button type="button" class="close" data-dismiss="alert"
			        aria-hidden="true">
				&times;
			</button>
				${error}
		</div>
	</c:if>
</div>
<div class="panel panel-default" style="width: 90%;margin-left: 5%">
	<div class="panel-heading" style="background-color: #fff">
		<h3 class="panel-title">
			全部图书
		</h3>
	</div>
	<div class="panel-body">
		<table class="table table-hover">
			<thead>
			<tr>
				<th>书名</th>
				<th>作者</th>
				<th>出版社</th>
				<th>ISBN</th>
				<th>价格</th>
				<th>剩余数量</th>
				<th>借还</th>
				<th>详情</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${books}" var="book">
				<tr>
					<td>${book.name}</td>
					<td>${book.author}</td>
					<td>${book.publish}</td>
					<td>${book.ISBN}</td>
					<td>${book.price}</td>
					<td>${book.number}</td>
					<c:choose>
						<c:when test="${myLendList.contains(book.bookId)}">
							<td><a href="<c:url value="/returnbook.html?bookId=${book.bookId}"/> ">
								<button type="button" class="btn btn-danger btn-xs">归还</button>
							</a>
							</td>
						</c:when>
						<c:when test="${book.number>0}">
							<td><a href="<c:url value="/lendbook.html?bookId=${book.bookId}"/>">
								<button type="button" class="btn btn-primary btn-xs">借阅</button>
							</a></td>
						</c:when>
						<c:when test="${book.number<=0}">
							<td>
								<button type="button" class="btn btn-defalut btn-xs" disabled="disabled">已空
								</button>
							</td>
						</c:when>
						<c:otherwise>
							<td>
								<button type="button" class="btn btn-defalut btn-xs" disabled="disabled">
								</button>
							</td>
						</c:otherwise>
					</c:choose>
					<td><a href="<c:url value="/reader_book_detail.html?bookId=${book.bookId}"/>">
						<button type="button" class="btn btn-success btn-xs">详情</button>
					</a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
</div>

</body>
</html>
