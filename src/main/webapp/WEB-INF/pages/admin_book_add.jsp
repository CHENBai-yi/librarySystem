<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>图书信息添加</title>
	<link rel="stylesheet" href="/static/css/bootstrap.min.css">
	<script src="/static/js/jquery-3.2.1.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>
	<script src="/static/js/js.cookie.js"></script>
	<style type="text/css">
        .btn-upload {
            background-color: #337ab7;
            color: #fff;
            border-radius: 0;
            border: none;
        }

        .btn-upload:hover, .btn-upload:focus {
            background-color: #286090;
            color: #fff;
            border: none;
            outline: none;
        }

        #bookCoverPreview {
            max-width: 200px;
            max-height: 300px;
            margin: 10px auto;
            display: block;
        }

        .form-group {
            margin-bottom: 0;
        }
	</style>
	<script>
        $(function () {
            $('#header').load('admin_header.html');
        })

        $(document).ready(function () {
            $("#bookCoverInp").change(function () {
                readURL(this);
            });
        });

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#bookCoverPreview').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
	</script>
	<%--    <script>--%>
	<%--        $(function () {--%>
	<%--            $('#header').load('admin_header.html');--%>
	<%--        })--%>
	<%--    </script>--%>
</head>
<body background="/static/img/1583851799.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">

<jsp:include page="common_header_admin.jsp"/>
<div class="container">
	<div class="panel panel-primary" style="position: relative; top: 100px">
		<div class="panel-heading">
			<h3 class="panel-title">添加图书</h3>
		</div>
		<div class="panel-body">
			<form action="book_add_do.html" method="post" enctype="multipart/form-data" id="addbook">
				<div class="row">
					<%--		<div style="position: relative;padding-top: 60px; width: 80%;margin-left: 10%" class="col-md-6">--%>
					<div class="col-md-6">
						<div class="form-group">
							<label for="name">图书名</label>
							<input type="text" class="form-control" name="name" id="name" placeholder="请输入书名">
						</div>
						<div class="form-group">
							<label for="author">作者</label>
							<input type="text" class="form-control" name="author" id="author"
							       placeholder="请输入作者名">
						</div>
						<div class="form-group">
							<label for="publish">出版社</label>
							<input type="text" class="form-control" name="publish" id="publish"
							       placeholder="请输入出版社">
						</div>
						<div class="form-group">
							<label for="ISBN">ISBN</label>
							<input type="text" class="form-control" name="ISBN" id="ISBN" placeholder="请输入ISBN">
						</div>
						<div class="form-group">
							<label for="introduction">简介</label>
							<textarea class="form-control" rows="3" name="introduction" id="introduction"
							          placeholder="请输入简介"></textarea>
						</div>
						<div class="form-group">
							<label for="language">语言</label>
							<input type="text" class="form-control" name="language" id="language"
							       placeholder="请输入语言">
						</div>
						<div class="form-group">
							<label for="price">价格</label>
							<input type="text" class="form-control" name="price" id="price" placeholder="请输入价格">
						</div>
						<div class="form-group">
							<label for="pubstr">出版日期</label>
							<input type="date" class="form-control" name="pubstr" id="pubstr"
							       placeholder="请输入出版日期">
						</div>
						<div class="form-group">
							<label for="classId">分类号</label>
							<input type="text" class="form-control" name="classId" id="classId"
							       placeholder="请输入分类号">
						</div>
						<div class="form-group">
							<label for="number">数量</label>
							<input type="text" class="form-control" name="number" id="number"
							       placeholder="请输入图书数量">
						</div>
						
						<input type="submit" value="添加" class="btn btn-success btn-sm" class="text-left">
						<script>
                            $("#addbook").submit(function () {
                                if ($("#name").val() == '' || $("#author").val() == '' || $("#publish").val() == '' || $("#ISBN").val() == '' || $("#introduction").val() == '' || $("#language").val() == '' || $("#price").val() == '' || $("#pubstr").val() == '' || $("#classId").val() == '' || $("#pressmark").val() == '' || $("#number").val() == '') {
                                    alert("请填入完整图书信息！");
                                    return false;
                                }
                            })
						</script>
					</div>
					<div class="col-md-4 ">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title"> Book Cover Upload </h3>
							</div>
							<div class="panel-body">
								<form role="form">
									<div class="form-group">
										<label for="bookCoverInp">选择图书封面：</label>
										<div class="input-group">
											<label class="input-group-btn">
                                <span class="btn btn-default">
                                    选择文件<input type="file" name="bookCoverInp" id="bookCoverInp"
                                                   style="display: none;">
                                </span>
											</label>
											<input type="text" class="form-control" readonly>
										</div>
									</div>
									<div class="form-group text-center">
										<img id="bookCoverPreview" alt="预览图书封面" src="#">
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>


</body>
</html>
