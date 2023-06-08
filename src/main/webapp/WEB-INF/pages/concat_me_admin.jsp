<%@ page import="java.util.Date" %>
<%@ page import="com.bai.utils.constants.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta content="IE=Edge" http-equiv="X-UA-Compatible">
	<meta content="width=device-width, initial-scale=1, shrink-to-fit=no" name="viewport">
	<meta content="HOPPINZQ的ChatGPT" name="description">
	<title>聊天</title>
	<link href="https://hoppinzq.com/zui/static/favicon/favicon.ico" rel="shortcut icon" type="image/x-icon">
	<link href="https://hoppinzq.com/chat/static/css/material-design-iconic-font.min.css" rel="stylesheet">
	<link href="https://hoppinzq.com/chat/static/css/style.min.css" rel="stylesheet">
	<link href="https://hoppinzq.com/static/css/plugins/editormd.min.css" rel="stylesheet"/>
	<link href="https://hoppinzq.com/zq/preloader/zq_preloader.css" rel="stylesheet">
	<link href="https://hoppinzq.com/zui/static/css/sweetalert.css" rel="stylesheet">
	<link href="https://hoppinzq.com/spider/css/simple-bar.css" rel="stylesheet">
	<link href="https://hoppinzq.com/chat/static/css/jBox.all.min.css" rel="stylesheet">
	<link href="https://hoppinzq.com/chat/static/css/pop.css" rel="stylesheet">
</head>
<style>
    a {
        color: var(--primary-color);
    }

    a:hover {
        color: var(--dark-color);
    }

    .modal-right.show .modal-dialog {
        transform: translate(0, 0) !important;
    }

    .modal.show .modal-dialog {
        transform: none;
    }

    .modal.fade .modal-dialog {
        transition: transform 0.3s ease-out;
        transform: translate(0, -50px);
    }

    .modal-right .modal-dialog {
        position: absolute;
        top: 0;
        right: 0;
        bottom: 0;
        width: 360px;
        max-width: 100%;
        margin: 0;
        transform: translate(100%, 0) !important;
        transition: .5s;
    }

    .modal-right .modal-content {
        height: 100%;
        display: -webkit-box;
        display: flex;
        flex-direction: column;
        border-radius: 0;
    }

    .text-chat {
        white-space: pre-wrap;
        /*white-space: normal;*/
    }

    .code-box {
        margin-top: 5px;
        margin-bottom: 5px;
        padding: 5px;
        background: #fff;
        border-radius: 6px;
        color: #444;
        line-height: 1.5;
        max-height: 350px;
        position: relative;
        height: auto;
        background-color: #fff;
        border: solid 1px #f5f5f5;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.075);
    }

    .code-box code {
        color: #555;
    }

    .code-box textarea {
        padding: 0;
        resize: none;
        width: 100%;
    }

    .copy-btn {
        position: absolute;
        top: 22px;
        right: 12px;
        border: 1px solid #eee;
        background: rgba(154, 154, 255, 0.1);
        border-radius: 5px;
        font-size: 12px;
        padding: 7px 16px;
        transition: all 0.4s ease;
        font-family: 'Inter', sans-serif;
    }

    .copy-btn:focus-within,
    .copy-btn:hover {
        background: #61b864;
        border-color: transparent;
        color: #fff;
    }

    .center-modal {
        transform: scale(0);
        transition: .4s
    }

    .center-modal.show {
        transform: scale(1)
    }

    .center-modal .modal-dialog {
        margin: 0;
        width: 100%;
        position: absolute;
        bottom: 50%;
        left: 50%;
        transform: translate(-50%, 50%) !important
    }

    .modal-fill {
        background: rgba(255, 255, 255, 0.97);
        transform: scale(0, 0);
        transition: .4s
    }

    .modal.modal-fill {
        background: var(--card-color);
    }

    .modal-fill.show {
        display: flex !important;
        justify-content: center;
        flex-flow: column nowrap;
        transform: scale(1, 1);
        transition: .4s;
    }

    /*增补样式，代码样式，夜间模式样式*/
    .modal-body {
        background: var(--card-color);
    }

    .modal-header {
        background: var(--card-color);
        /*border-bottom: var(--border-color);*/
    }

    .qaq {
        background: var(--card-color);
    }

    .hljs {
        display: block;
        overflow-x: auto;
        padding: .5em;
        background: #1e1e1e !important;
        color: #dcdcdc;
    }

    .editormd-html-preview pre.prettyprint, .editormd-preview-container pre.prettyprint {
        border: 1px solid var(--border-color);
    }

    .editormd-html-preview pre, .editormd-preview-container pre {
        border: 1px solid #ddd;
        background: var(--card-color);
    }

    li.L1, li.L3, li.L5, li.L7, li.L9 {
        background: var(--card-color);
    }

    pre code {
        font-size: inherit;
        color: inherit;
        word-break: normal;
    }

    .kwd {
        color: #569cd6;
    }

    .tag {
        color: #9b9b9b;
    }

    .typ, .atn {
        color: #569cd6;
    }

    .clo, .opn, .pun {
        color: var(--dark-color);
    }

    .str {
        color: #d69d85;
    }

    .pln {
        color: #666666;
    }

    .com {
        color: #57a64a;
        font-style: italic;
    }

    .hljs li.L1, .hljs li.L3, .hljs li.L5, .hljs li.L7, .hljs li.L9 {
        background: #212121;
    }

    .hljs .kwd {
        color: #569cd6;
    }

    .hljs .tag {
        color: #9b9b9b;
    }

    .hljs .typ, .hljs .atn {
        color: #569cd6;
    }

    .hljs .clo, .hljs .opn, .hljs .pun {
        color: #dcdcdc;
    }

    .hljs .str {
        color: #d69d85;
    }

    .hljs .pln {
        color: #dcdcdc;
    }

    .hljs .com {
        color: #57a64a;
        font-style: italic;
    }


    .code_change {
        left: 5px;
        top: 5px;
        display: block;
        width: 90px;
        height: 28px;
        color: var(--font-555);
        border: 1px solid var(--dark-color);;
        background: rgba(154, 154, 255, 0.1);
        padding: 2px 8px;
        border-radius: 4px;
        cursor: pointer;
        transition: all 0.4s ease;
        font-family: 'Inter', sans-serif;
    }

    .copy-code-btn {
        float: right;
        right: 5px;
        top: 5px;
        display: block;
        width: 90px;
        height: 28px;
        border: 1px solid var(--dark-color);;
        color: var(--font-555);
        background: rgba(154, 154, 255, 0.1);
        padding: 2px 8px;
        border-radius: 4px;
        cursor: pointer;
        transition: all 0.4s ease;
        font-family: 'Inter', sans-serif;
    }

    .hljs .code_change {
        color: #eee;
    }

    .hljs .copy-code-btn {
        color: #eee;
    }

    .alert-danger {
        color: #842029 !important;
        background-color: #f8d7da !important;
        border-color: #f5c2c7 !important;
    }

    .markdown-body table {
        display: table-row !important;
    }
</style>
<body>
<div class="zq_preloader zq_preloader_center">
	<span>L</span><span>O</span><span>A</span><span>D</span><span>I</span><span>N</span><span>G</span>
</div>
<div class="theme-cyan" id="layout">
	
	
	<div class="sidebar border-end py-xl-4 py-3 px-xl-4 px-3">
		<div class="tab-content">
			<div class="tab-pane fade show active" id="nav-tab-chat" role="tabpanel">
				<div class="d-flex justify-content-between align-items-center mb-4">
					<h3 class="mb-0 text-primary">用户列表</h3>
				</div>
				<div class="form-group input-group-lg search mb-3">
					<i class="zmdi zmdi-search"></i>
					<i class="zmdi zmdi-dialpad"></i>
					<input class="form-control chat-search" placeholder="搜索..." type="text">
				</div>
				<ul class="chat-list">
					<li class="header chat-all-header d-flex justify-content-between ps-3 pe-3 mb-1">
						<span>最近聊天记录</span>
						<div class="dropdown">
							<a aria-expanded="false" aria-haspopup="true"
							   class="btn btn-link px-1 py-0 border-0 text-muted dropdown-toggle"
							   data-toggle="dropdown" href="#" role="button"><i
									class="zmdi zmdi-filter-list"></i></a>
							<div class="dropdown-menu dropdown-menu-right">
								<a class="dropdown-item" href="#">导入</a>
								<a class="dropdown-item" href="#">全部清理</a>
							</div>
						</div>
					</li>
					<c:if test="${online!=null and online.size()>0}">
						<c:forEach items="${online.keySet()}" var="k" varStatus="s">
							<c:set value="${online[k]}" var="item"/>
							<c:set value="${item.attributes}" var="attributes"/>
							
							
							<c:set value='<%=request.getParameter("readerId")%>' var="readerId"/>
							<c:if test="${readerId!=null and readerId eq item.attributes['uid']}">
								<c:set value="${k}" var="firstOne"/>
								<c:set value="${item.attributes['uid']}" var="uid"/>
								<c:set value="${item.attributes['uname']}" var="uname"/>
							</c:if>
							
							<c:if test="${attributes['id'] ne 0}">
								<li
										class="online chat-title"
										data-id="${k}">
									<div class="hover_action">
										<button class="btn btn-link text-info" data-original-title="标记为公开"
										        data-toggle="tooltip"
										        onclick="openChat('${k}')" type="button"><i
												class="zmdi zmdi-eye"></i></button>
										<button class="btn btn-link text-warning" data-answer="点击我来跟chatgpt聊天吧"
										        data-original-title="修改聊天"
										        data-title="新建聊天"
										        onclick="editChat('${k}')"
										        type="button"><i class="zmdi zmdi-edit"></i>
										</button>
										<button class="btn btn-link text-danger" data-original-title="移除聊天"
										        data-toggle="tooltip"
										        onclick="removeChat('${k}')" type="button"><i
												class="zmdi zmdi-delete"></i>
										</button>
									</div>
									<a class="card" href="#"
									   onclick="changeSessionId('${k}','${attributes["uid"]}','${attributes["uname"]}')">
										<div class="card-body">
											<div class="media">
												<div class="avatar me-3">
													<div class="avatar rounded-circle no-image bg-primary text-light">
													<span class="msg-avatar">
                                        <img src="http://hoppinzq.com/zui/static/picture/0.jpg"
                                             class="avatar avatar-lg rounded-circle">
                                    </span>
													</div>
												</div>
												<div class="media-body overflow-hidden">
													<div class="d-flex align-items-center mb-1">
														<h6 class="text-truncate mb-0 me-auto chat-question-header">${attributes["uname"]}</h6>
														<p class="small text-muted text-nowrap ms-4 mb-0">
															<fmt:formatDate
																	value="<%=new Date()%>"
																	pattern="yyyy-MM-dd HH:mm:ss"/></p>
													</div>
													<div class="text-truncate chat-answer-header">
														<font color="red">当前在线</font>
													</div>
												</div>
											</div>
										</div>
									</a>
								</li>
							</c:if>
						</c:forEach>
					</c:if>
				</ul>
			</div>
			<div class="tab-pane fade" id="nav-tab-pages" role="tabpanel">
				<div class="d-flex justify-content-between align-items-center mb-4">
					<h3 class="mb-0 text-primary">聊天</h3>
				</div>
				<div class="d-flex justify-content-between align-items-center mb-4">
					<div class="text-truncate">这是别人公开或者分享的聊天。</div>
				</div>
				<div class="card border-0">
					<ul class="list-group list-group-flush chat-public">
						<!--                        <li class="list-group-item border-0">-->
						<!--                            <a class="link" href="#"><i class="zmdi zmdi-label-alt me-2"></i> 你好啊</a>-->
						<!--                        </li>-->
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="main px-xl-5 px-lg-4 px-3">
		<div class="chat-body">
			<div class="chat-header border-bottom py-xl-4 py-md-3 py-2">
				<div class="container-xxl">
					<div class="row align-items-center">
						<div class="col-6 col-xl-4">
							<div class="media">
								<div class="avatar me-3 show-user-detail" data-original-title="ChatGPT Bot"
								     data-toggle="tooltip"
								     title="">
									<div class="avatar rounded-circle no-image bg-primary text-light">
										<span><i class="zmdi zmdi-comment-text"></i></span>
									</div>
								</div>
								<%--								<div class="media-body overflow-hidden">--%>
								<%--									<div class="d-flex align-items-center mb-1">--%>
								<%--										<h6 class="text-truncate mb-0 me-auto">图书馆咨询</h6>--%>
								<%--									</div>--%>
								<%--									<div class="text-truncate">客服在线答疑</div>--%>
								<%--								</div>--%>
							</div>
						</div>
						<div class="col-6 col-xl-8 text-end">
							<ul class="nav justify-content-end">
								<li class="nav-item list-inline-item d-none d-md-block me-3">
									<a aria-expanded="true" class="nav-link text-muted px-3"
									   data-target="#chat-search-div"
									   data-toggle="collapse" href="#" title="Search this chat">
										<i class="zmdi zmdi-search zmdi-hc-lg"></i>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="collapse" id="chat-search-div">
				<div class="container-xxl py-2">
					<div class="input-group">
						<input class="form-control chat-message-search" placeholder="搜索当前聊天内容" type="text">
						<div class="input-group-append">
							<span class="input-group-text text-muted">0 / 0</span>
						</div>
						<div class="input-group-append">
							<button class="btn btn-success chat-message-search-btn" type="button">搜索</button>
						</div>
					</div>
				</div>
			</div>
			<div class="chat-content" id="chat-content">
				<div class="container-xxl">
					<ul class="list-unstyled py-4 chat-message" id="chat-message">
						<c:if test="${chatVOList!=null and chatVOList.size()>0}">
							<c:forEach varStatus="s" begin="0" end="${chatVOList.size()-1}" var="index">
								<c:set value="${chatVOList[index]}" var="items"/>
								<c:choose>
									<c:when test="${items.senderName eq chatVo.senderName}">
										<li class="d-flex message message-bot" id="user-chat-question-${index+1}">
											<div class="message-body">
												<div class="d-flex align-items-center">
													<div class="avatar sm rounded-circle bg-primary d-flex align-items-center justify-content-center">
														<span><i class="zmdi zmdi-comment-text text-light"></i></span>
													</div>
													<div class="mx-10 p-2">
														<a href="#"
														   class="text-dark hover-primary font-weight-bold">${items.senderName}</a>
													</div>
												</div>
												<span class="date-time text-muted">${items.sendTime}<i
														class="zmdi zmdi-check-all text-primary"></i></span>
												<div class="message-row d-flex align-items-center">
													<div class="message-content message-content-ex p-3 text-chat"
													     data-role="helper">${items.content}</div>
												</div>
											</div>
										</li>
									</c:when>
									<c:otherwise>
										<li class="d-flex message message-user right"
										    id="user-chat-question-${index+1}">
											<div class="message-body">
												<div class="d-flex align-items-center justify-content-end">
													<div class="mx-10 p-2">
														<a href="#"
														   class="text-dark hover-primary font-weight-bold">${items.senderName}</a>
													</div>
													<span class="msg-avatar">
                                        <img src="http://hoppinzq.com/zui/static/picture/0.jpg"
                                             class="avatar avatar-lg rounded-circle">
                                    </span>
												</div>
												<span class="date-time text-muted">${items.sendTime}<i
														class="zmdi zmdi-check-all text-primary"></i></span>
												<div class="message-row d-flex align-items-center justify-content-end">
													<div class="dropdown">
														<a class="text-muted me-1 p-2 text-muted" href="#"
														   data-toggle="dropdown" aria-haspopup="true"
														   aria-expanded="false">
															<i class="zmdi zmdi-more-vert"></i>
														</a>
														<div class="dropdown-menu">
															<a class="dropdown-item" href="#" onclick="needhelp()"
															   title="将会还原ChatBot原来的文本">有疑问？</a>
														</div>
													</div>
													<div class="message-content p-3 text-chat"
													     id="message-user-chat-question-1"
													     data-img="http://hoppinzq.com/zui/static/picture/0.jpg"
													     data-user="${items.senderName}" data-role="user"
													     data-date="${items.sendTime}"
													     data-id="${items.messageId}">${items.content}</div>
												</div>
											</div>
										</li>
									</c:otherwise>
								</c:choose>
								
								
								<c:if test="${s.last}">
									<li class="d-flex message divider mt-xl-5 mt-md-3 mb-xl-5 mb-md-3" id="lastA">
										<small class="text-muted">历史消息记录</small>
									</li>
								</c:if>
							</c:forEach>
						</c:if>
					</ul>
				</div>
			</div>
			<div class="chat-footer border-top py-xl-4 py-lg-2 py-2">
				<div class="container-xxl">
					<div class="row">
						<div class="col-12">
							<div class="input-group align-items-center"><input class="form-control border-0 pl-0"
							                                                   id="sendText"
							                                                   placeholder="输入内容..."
							                                                   type="text">
								<div class="input-group-append d-none d-sm-block">
                                    <span class="input-group-text border-0">
                                        <button class="btn btn-sm btn-link text-muted" data-toggle="tooltip"
                                                title="重新提问" type="button">
                                            <i class="zmdi zmdi-refresh font-22"></i>
                                        </button>
                                    </span>
								</div>
								<div class="input-group-append">
                                    <span class="input-group-text border-0">
                                        <button class="btn btn-sm btn-link text-muted" data-original-title="生成截图"
                                                data-toggle="tooltip" onclick="getScreenshot()" title=""
                                                type="button">
                                            <i class="zmdi zmdi-camera font-22"></i>
                                        </button>
                                    </span>
								</div>
								<div class="input-group-append">
                                    <span class="input-group-text border-0 pr-0">
                                        <button class="btn btn-primary" id="sendChat" type="btn"><span
		                                        class="d-none d-md-inline-block me-2">发送</span><i
		                                        class="zmdi zmdi-mail-send"></i></button>
                                        <button class="btn btn-primary" id="stopChat" style="display: none"
                                                type="btn"><span
		                                        class="d-none d-md-inline-block me-2">结束</span><i
		                                        class="zmdi zmdi-stop"></i></button>
                                    </span></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="https://hoppinzq.com/video/assets/js/jquery-3.3.1.min.js"></script>
<script src="https://hoppinzq.com/chat/static/js/bootstrap.bundle.min.js"></script>
<script src="https://hoppinzq.com/chat/static/js/template.js"></script>
<script src="https://hoppinzq.com/chat/static/js/marked.min.js"></script>
<script src="https://hoppinzq.com/chat/static/js/prettify.min.js"></script>
<script src="https://hoppinzq.com/chat/static/js/raphael.min.js"></script>
<script src="https://hoppinzq.com/chat/static/js/underscore.min.js"></script>
<script src="https://hoppinzq.com/chat/static/js/sequence-diagram.min.js"></script>
<script src="https://hoppinzq.com/chat/static/js/flowchart.min.js"></script>
<script src="https://hoppinzq.com/chat/static/js/jquery.flowchart.min.js"></script>
<script src="https://hoppinzq.com/chat/static/js/editormd.js"></script>
<script src="https://hoppinzq.com/chat/static/js/zq.js"></script>
<script src="https://hoppinzq.com/zui/static/js/sweetalert.min.js"></script>
<script src="https://hoppinzq.com/zui/static/js/jquery.sweet-alert.custom.js"></script>
<script src="https://hoppinzq.com/spider/js/simple-bar.js"></script>
<script src="https://hoppinzq.com/chat/static/js/jBox.all.min.js"></script>
<script src="https://hoppinzq.com/chat/static/js/html2canvas.js"></script>
<script>
    console.log("\n %c 前端代码 %c https://gitee.com/hoppin/chatgpt-front \n\n", "background: #35495e; padding: 1px; border-radius: 3px 0 0 3px; color: #fff", "background: #fadfa3; padding: 1px; border-radius: 0 3px 3px 0; color: #fff");


    var ip = "http://43.163.202.187:8094"
    var webMetaData = {
        zq: __zqChat,//zq元数据，提供公用方法和浏览器环境信息（如：是否移动端，是否在联网环境等）
        userId: null,//浏览器独一无二的标识，模拟用户登录后的id，永久存放于缓存中
        apikey: null,
        modal: "gpt-3.5-turbo",//全局模型，其他模型在帮助中查看
        timeout: 7500,
        ws: null,//websocket对象，项目启动后会马上连接，注意：每次重连的时候ws会有2s被置为null，请妥善处理
        sse: null,//sse对象，仅在使用时连接，error事件和complete事件都放在error中处理了，请知悉
        chatState: 0,//0表示关闭，即没有在聊天，处于空闲状态。1表示等待中，这时候后台已经接收到请求，但还没有返回数据。2表示正在聊天中，后台通过sse实时返回聊天对话。
        index: 1,//当前聊天索引
        userno: null,//不同于userId，userno为websocket标志的当前浏览器的标识，每次重启都会改变
        isContent: true,//是否携带上下文
        cache: {},//缓存
        accessToken: null,//openai登录需要的凭证，通过该token，无需用户名密码即可伪造登录openai，并获取账号元数据
        chat: [],//聊天内容
        chatCurrentId: null,//当前聊天id
        accessTokenJWT: {//解析后的token
            header: null,
            payload: null,
            signature: null
        },
        messageContent: {
            messageId: "${firstOne}",
            receiverId: "${uid}",
            receiverName: "${uname}",
            senderId: "${chatVo.senderId}",
            senderName: "${chatVo.senderName}"
        }
    }

    function changeSessionId(id, uid, uname) {
        <%--window.location.href = `http://localhost:8080<%=Constants.AccessPageUrl.CONCAT_ME_ADMIN%>?readerId=\${uid}`--%>
        window.location.href = `https://library.baiyichen.asia<%=Constants.AccessPageUrl.CONCAT_ME_ADMIN%>?readerId=\${uid}`
    }

    $(function () {
        var anchorElement = document.getElementById("lastA");
        if (anchorElement) {
            anchorElement.scrollIntoView({behavior: "smooth", block: "start", inline: "nearest"});
        }
        apikey()
        webMetaData.userno = __zqChat.uuid(32, 64);
        webMetaData.userId = localStorage.getItem("userId");
        if (webMetaData.userId == null) {
            webMetaData.userId = __zqChat.uuid(32, 64);
            localStorage.setItem("userId", webMetaData.userId);
        }
        $("#user_id").text("欢迎您,游客:" + webMetaData.userId);

        init();
        bind();
        // connect("sse");
        connect();
        setTimeout(function () {
            $("#modal-settings .modal-dialog").width($(".main").width());
            $("#modal-image .modal-dialog").width($(".main").width());

        }, 1000);
        setInterval(function () {
            //$("#modal-image .modal-dialog").height(0).height($(".modal-image-body").height()+60);
            $("#modal-image .modal-dialog").height(0).height($(".modal-image-body").height() + 60);
            $("#modal-settings .modal-dialog").height(0).height($(".modal-settings-body").height() + 30);
        }, 20);
        // if(localStorage.getItem("log1")==null){
        //     $("#modal-log").modal();
        // }
        console.log(webMetaData)
        account();
        // require(["orion/editor/edit"], function (edit) {
        //     edit({className: "code-editor"});
        // });
    })

    function apikey() {
        if (localStorage.getItem("apikey") != null) {
            webMetaData.apikey = localStorage.getItem("apikey");
        }
        $.ajaxSetup({
            headers: {
                'apikey': webMetaData.apikey
            }
        });
        $("#apikey").val(webMetaData.apikey);
    }

    function saveApiKey() {
        localStorage.setItem("apikey", $("#apikey").val());
        location.reload();
    }

    function clearApiKey() {
        localStorage.removeItem("apikey");
        location.reload();
    }

    function createChat() {
        $(".chat-message").html("");
        let chatId = __zqChat.uuid(32, 62);
        let nowTime = __zqChat.getRealDate(new Date());
        $(".chat-title").removeClass("active")
        $(".chat-all-header").after2(`<li class="online chat-title active new" data-id="\${chatId}">
                        <div class="hover_action">
                            <button type="button" data-toggle="tooltip" onclick="openChat('\${chatId}')" data-original-title="标记为公开" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
                            <button type="button" class="btn btn-link text-warning" data-title="新建聊天" data-answer="点击我来跟chatgpt聊天吧" onclick="editChat('\${chatId}')" data-original-title="修改聊天"><i class="zmdi zmdi-edit"></i>
                            </button>
                            <button type="button" data-toggle="tooltip" onclick="removeChat('\${chatId}')" data-original-title="移除聊天" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i>
                            </button>
                        </div>
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar me-3">
                                        <div class="avatar rounded-circle no-image bg-primary text-light">
                                            <span><i class="zmdi zmdi-comment-text"></i></span>
                                        </div>
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto chat-question-header" >新建聊天</h6>
                                            <p class="small text-muted text-nowrap ms-4 mb-0">\${nowTime}</p>
                                        </div>
                                        <div class="text-truncate chat-answer-header">
                                            点击我来跟chatgpt聊天吧
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>`, function () {
            setHelp();
            $(".chat-title").off("click").on("click", function () {
                //移动端切换聊天自动关闭
                if (__zqChat.isMobile) {
                    $(".sidebar-toggle-btn").click();
                    $(".nav-link-mobile").on("click", function () {
                        $(".sidebar-toggle-btn").click();
                    })
                }
                webMetaData.index = 1;
                if (webMetaData.chatState > 0) {
                    stopChat();
                }
                $(".chat-message").html("");
                $(this).addClass("active").siblings().removeClass("active");
                let chatId = $(this).data("id");
                webMetaData.chatCurrentId = chatId;
                $.each(webMetaData.chat, function (i, cc) {
                    if (cc.chat_id == chatId) {
                        webMetaData.index += cc.chatMessageList.length / 2;
                        $.each(cc.chatMessageList, function (index, chatMsg) {
                            let chatIndex = index + 1;
                            if (chatMsg.message_role == "user") {
                                buildMessage(0, "user-chat-question-" + chatMsg.message_index, chatMsg.message_createDate, chatMsg.message_user_name, chatMsg.message_user_image, chatMsg.message, chatIndex, false, chatMsg.message_id);
                            }
                            if (chatMsg.message_role == "assistant") {
                                buildMessage(1, "user-chat-answer-" + chatMsg.message_index, chatMsg.message_createDate, chatMsg.message_user_name, chatMsg.message_user_image, chatMsg.message, chatIndex, false, chatMsg.message_id);
                            }
                            markdownToHtml("message-user-chat-answer-" + chatMsg.message_index);
                        })
                    }
                })
                let scrollableDiv = document.getElementById("chat-content");
                scrollableDiv.scrollTop = 0;
            })
        });
        webMetaData.chatCurrentId = chatId;
        webMetaData.chat.push({
            chat_id: chatId,
            chat_user_id: webMetaData.userId,
            chat_createDate: nowTime,
            chat_title: "新建聊天",
            chat_answer: "点击我来跟chatgpt聊天吧",
            chat_state: 0,//0表示不公开，1表示公开
            chatMessageList: [],
            chat_modal: webMetaData.modal,
            chat_context: 6,
            chat_system: ""
        })
    }

    /**
     * 根据chatID查找chat
     * */
    function findChatByChatid(chatId) {
        let temp = null;
        $.each(webMetaData.chat, function (i, chat) {
            if (chat.chat_id == chatId) {
                temp = chat;
                return;
            }
        })
        return temp;
    }

    /**
     * 获取当前聊天
     * */
    function getCurrentChat() {
        return findChatByChatid(webMetaData.chatCurrentId);
    }

    /**
     * 移除聊天
     * */
    function removeChat(chatId) {
        swal({
                title: "确定?",
                text: "该操作将移除该聊天!",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "移除!",
                cancelButtonText: "不移除!",
                closeOnConfirm: false,
                closeOnCancel: false
            },
            function (isConfirm) {
                if (isConfirm) {
                    $.get(`\${ip}/hoppinzq?method=deleteChatByChatId&params={"chatId":"\${chatId}"}`, function (data) {
                        let _data = JSON.parse(data);
                        if (_data.code == 200) {
                            swal("成功!", "删除成功", "success");
                            for (let i = 0; i < webMetaData.chat.length; i++) {
                                let chat = webMetaData.chat[i];
                                if (chat.chat_id == chatId) {
                                    webMetaData.chat.splice(1, i - 1);
                                    i++;
                                }
                            }
                            let temp = 0;
                            $(".chat-title").each(function (index, element) {
                                if (chatId == $(element).data("id")) {
                                    $(element).remove();
                                    temp = index;
                                }
                                if (temp = index + 1) {
                                    $(element).click();
                                }
                            })
                            //若全部都被移除，新建一个
                            if ($(".chat-title").length == 0) {
                                createChat()
                            }


                        } else {
                            swal("错误!", "删除失败", "error");
                        }
                    })

                } else {
                    swal("取消!", "移除操作已取消", "success");
                }
            });
    }

    /**
     * 公开聊天
     * */
    function openChat(chatId) {
        swal("错误!", "目前不可公开/分享：该功能已移除，API：getPublicChats", "error");
    }

    /**
     * 编辑聊天
     * */
    function editChat(chatId) {
        $("#chatSettings").modal();
        let chat = findChatByChatid(chatId);
        $("#edit-chat-title").val(chat.chat_title)
        $("#edit-chat-answer").val(chat.chat_answer)
        $("#edit-chat-context").val(chat.chat_context)
        $("#edit-chat-system").val(chat.chat_system)

        $("#edit-modal-chat-ok").off("click").on("click", function () {
            chat.chat_createDate = __zqChat.getRealDate(new Date());
            if ($("#edit-chat-title").val().trim().length == 0) {
                alert("无标题");
                $("#edit-chat-title").focus();
                return;
            }
            if ($("#edit-chat-answer").val().trim().length == 0) {
                alert("内容");
                $("#edit-chat-answer").focus();
                return;
            }

            chat.chat_title = $("#edit-chat-title").val();
            chat.chat_answer = $("#edit-chat-answer").val();
            chat.chat_context = $("#edit-chat-context").val();
            chat.chat_system = $("#edit-chat-system").val();
            $.ajax({
                url: `\${ip}/hoppinzq?method=insertOrUpdateChat`,
                type: "post",
                contentType: "application/json",
                data: JSON.stringify({
                    "chat": chat
                }),
                success: function (data) {
                    swal("成功!", "修改成功", "success");
                    $(".chat-title").each(function (i, element) {
                        if ($(element).data("id") == chatId) {
                            $(element).find(".chat-question-header").text(chat.chat_title);
                            $(element).find(".chat-answer-header").text(chat.chat_answer);
                        }
                    })
                    $("#chatSettings").modal("hide");

                },
                error: function (data) {
                    swal("失败!", "修改失败", "success");
                }
            })
        })
    }

    function loadChatMessage() {

    }

    function loadChat() {
        if (webMetaData.chat.length == 0) {
            createChat();
        } else {
            $.each(webMetaData.chat, function (index, chat) {
                $(".chat-all-header").after(`<li class="online chat-title" data-id="\${chat.chat_id}">
                        <div class="hover_action">
                            <button type="button" data-toggle="tooltip" onclick="openChat('\${chat.chat_id}')" data-original-title="标记为公开" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
                            <button type="button" class="btn btn-link text-warning" onclick="editChat('\${chat.chat_id}')" data-original-title="修改聊天"><i class="zmdi zmdi-edit"></i>
                            </button>
                            <button type="button" data-toggle="tooltip" onclick="removeChat('\${chat.chat_id}')" data-original-title="移除聊天" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i>
                            </button>
                        </div>
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar me-3">
                                        <div class="avatar rounded-circle no-image bg-primary text-light">
                                            <span><i class="zmdi zmdi-comment-text"></i></span>
                                        </div>
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto chat-question-header" >\${chat.chat_title}</h6>
                                            <p class="small text-muted text-nowrap ms-4 mb-0">\${chat.chat_createDate}</p>
                                        </div>
                                        <div class="text-truncate chat-answer-header">
                                            \${chat.chat_answer}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>`);
            });
            createChat();
        }
    }

    function init() {
        webMetaData.cache.theme = localStorage.getItem("theme");
        webMetaData.cache.locache = localStorage.getItem("locache") == null ? "1" : localStorage.getItem("locache");
        webMetaData.cache.isscoll = localStorage.getItem("isscoll") == null ? "1" : localStorage.getItem("isscoll");
        webMetaData.cache.ishelp = localStorage.getItem("ishelp") == null ? "1" : localStorage.getItem("ishelp");
        if (webMetaData.cache.locache == "0") {
            $("#iall-cache").attr("checked", false);
        }
        if (webMetaData.cache.isscoll == "0") {
            $("#iall-scoll").attr("checked", false);
        }
        if (webMetaData.cache.ishelp == "0") {
            $("#iall-help").attr("checked", false);
        }
        initAccessToken();
        initChat();
    }

    function initChat() {
        if (webMetaData.userId != null) {
            $.ajax({
                url: `\${ip}/hoppinzq?method=getChatByUserId&params={"userId":"\${webMetaData.userId}"}`,
                timeout: webMetaData.timeout,
                success: function (data) {
                    let _data = JSON.parse(data);
                    if (_data.code == 200) {
                        let chat = _data.data;
                        webMetaData.chat = chat;
                    }
                },
                complete: function () {
                    // loadChat();
                    __zqChat.stopLoading(0, 0);
                }
            })
        }
    }

    /**
     * 初始化accesstoken
     **/
    function initAccessToken() {
        webMetaData.accessToken = localStorage.getItem("accessToken");
        if (webMetaData.accessToken == null || !checkToken(false)) {
            $(".token-card").hide();
            $("#access-token").html("");
        } else {
            $(".token-card").show();
            $("#access-token").html(webMetaData.accessToken.trim());
            let header = webMetaData.accessToken.split(".")[0];
            webMetaData.accessTokenJWT.header = header;
            let payload = webMetaData.accessToken.split(".")[1];
            webMetaData.accessTokenJWT.payload = payload;
            let signature = webMetaData.accessToken.split(".")[2];
            webMetaData.accessTokenJWT.signature = signature;
        }
    }

    /**
     * 删除accesstoken
     **/
    function deleteToken() {
        swal({
                title: "确定删除?",
                text: "该操作将删除现有token!",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "删除!",
                cancelButtonText: "不删除!",
                closeOnConfirm: false,
                closeOnCancel: false
            },
            function (isConfirm) {
                if (isConfirm) {
                    localStorage.removeItem("accessToken");
                    initAccessToken();
                    swal("成功!", "删除成功", "success");
                } else {
                    swal("取消!", "删除操作已取消", "success");
                }
            });

    }

    /**
     * 检查accesstoken
     **/
    function checkToken(isSweet) {
        let token = webMetaData.accessToken;
        if (isSweet) {
            if (token == null || token.split(".").length != 3) {
                swal("失败!", "格式有错误，解析失败", "error");
            } else {
                let header = token.split(".")[0];
                webMetaData.accessTokenJWT.header = header;
                let payload = token.split(".")[1];
                webMetaData.accessTokenJWT.payload = payload;
                let signature = token.split(".")[2];
                webMetaData.accessTokenJWT.signature = signature;
                swal({
                    html: true, title: "解析成功！", text: `<div class="card bg-light border">
                                                                    <div class="card-body"><p class="mb-2">头部</p>
                                                                        <p class="small text-muted mb-2">\${atob(header)}</p><p class="mb-2">载荷</p>
                                                                        <p class="small text-muted mb-2">\${atob(payload)}</p><p class="mb-2">签名</p>
                                                                        <p class="small text-muted mb-2">\${signature}</p>
                                                                    </div>
                                                                </div>`
                });
            }
        } else {
            if (token == null || token.split(".").length != 3) {
                return false;
            } else {
                return true;
            }
        }
    }

    /**
     * 更新accesstoken
     **/
    function updateAccessToken() {
        swal({
                title: "确定?",
                text: "该操作将更新token!",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "更新!",
                cancelButtonText: "不更新!",
                closeOnConfirm: false,
                closeOnCancel: false
            },
            function (isConfirm) {
                if (isConfirm) {
                    let token = $(".access-token").val();
                    if (token.length == 0) {
                        swal("失败!", "token为空", "error");
                        $(".access-token").focus();
                        return;
                    }
                    if (token.split(".").length != 3) {
                        swal("失败!", "token格式不正确，token必须为JWT格式,请检查格式", "error");
                        $(".access-token").focus();
                        return;
                    }
                    localStorage.setItem("accessToken", token);
                    webMetaData.accessToken = token;
                    webMetaData.accessTokenJWT = {};
                    swal("成功", "token已修改", "success")
                    initAccessToken();
                } else {
                    swal("取消!", "操作已取消", "success");
                }
            });
    }

    function bind() {
        if (__zqChat.isMobile) {
            $(".nav-link-mobile").on("click", function () {
                if (!$("body").hasClass("open-sidebar-menu")) {
                    $(".sidebar-toggle-btn").click();
                }
            })
        }

        $(".no-show-log").click(function () {
            localStorage.setItem("log1", "0")
        })
        $(".cache-m").click(function () {
            let cacheKey = $(this).data("cache")
            $(this).is(":checked") == 1 ? localStorage.setItem(cacheKey, "1") : localStorage.setItem(cacheKey, "0");
            webMetaData.cache[cacheKey] = localStorage.getItem(cacheKey);
        })
        $(".default-settings").click(function () {
            $(".cache-m").each(function (index, element) {
                if ($(element).is(":checked") == 0) {
                    $(element).click();
                }
            })
        })
        $('.open-dy-button').click(function () {
            $('.pop-up-modal').addClass('open-modal');
        });
        $('.pop-up-modal .close-modal').click(function () {
            $('.pop-up-modal').removeClass('open-modal');
        });
        let copyButton = document.querySelectorAll('.copy-btn');
        copyButton.forEach(element => {
            element.addEventListener('click', (e) => {
                $(copyButton).each(function (index, elem) {
                    $(elem).text("复制");
                });
                const elem = e.target.parentElement.children[1].innerText;
                let save = function (e) {
                    e.clipboardData.setData('text/plain', elem);
                    e.preventDefault();//阻止默认行为
                }
                document.addEventListener('copy', save);
                document.execCommand("copy");
                $(element).text("复制成功！");
            })
        });
        /**
         * 监听窗口关闭事件，当窗口关闭时，主动去关闭websocket连接，防止连接还没断开就关闭窗口，server端会抛异常
         */
        window.onbeforeunload = function () {
            if (webMetaData.ws != null && webMetaData.ws.readyState === 1) {
                $.post(ip + "/v1/chat/completions/stopstream/" + webMetaData.userno)
                webMetaData.ws.close();
            }
            if (webMetaData.sse != null) {
                webMetaData.sse.close();
            }
        }

        //监听回车
        $("#sendText").keydown(function (e) {
            if (e.keyCode == 13) {
                question();
                e.preventDefault();
            }
        })
        $(".chat-message-search").keydown(function (e) {
            if (e.keyCode == 13) {
                let search = $(this).val();
                if (search.trim().length == 0) {
                    swal("错误!", "请输入搜索内容", "error");
                } else {
                    swal("", "这个功能没什么用，自己去实现", "success");
                }
                e.preventDefault();
            }
        })

        $(".chat-message-search-btn").click(function () {
            let search = $(".chat-message-search").val();
            if (search.trim().length == 0) {
                swal("错误!", "请输入搜索内容", "error");
            } else {
                swal("", "这个功能没什么用，自己去实现", "success");
            }

        })
        $(".chat-search").keydown(function (e) {
            if (e.keyCode == 13) {
                let search = $(this).val();
                if (search.trim().length == 0) {
                    swal("错误!", "请输入搜索内容", "error");
                } else {
                    swal("", "这个功能没什么用，自己去实现", "success");
                }
                e.preventDefault();
            }
        })

        $("#sendChat").click(function () {
            question();
        })

        /**
         * 停止对话
         * */
        $("#stopChat").click(function () {
            stopChat();
        })

        $(".create-new-chat").click(function () {
            createChat();
        })

        $(".image-cr-btn").click(function () {
            let prompt = $("#image-prompt").val();
            if (prompt.trim().length == 0) {
                alert("请输入图片描述");
                return;
            }
            createImage(prompt, 1, "256x256");
        });

        $("#code-check").click(function () {
            $(this).off("click").text("请稍等...");
            fixCode();
        })

    }

    function getScreenshot() {
        let dom = document.getElementById('chat-message');
        // 定义截图参数
        let options = {
            scrollY: -window.scrollY, // 向下滚动的距离
            useCORS: true, // 是否允许跨域访问
            allowTaint: true, // 是否允许跨域访问时携带cookies等敏感信息
            backgroundColor: "#ffffff" // 背景色设置为null，保证图片的背景透明
        };
        // 使用html2canvas截图
        html2canvas(dom, options).then(function (canvas) {
            // 将生成的canvas转成图片
            let imgData = canvas.toDataURL("image/png");
            let uuid = __zqChat.uuid(32, 64)
            $(".chat-message").append(`<li class="d-flex message chat-screenshot" id="chat-image-\${uuid}" data-html2canvas-ignore>
                            <div class="message-body">
                                <div class="d-flex align-items-center">
                                    <div class="avatar sm rounded-circle bg-primary d-flex align-items-center justify-content-center">
                                        <span><i class="zmdi zmdi-comment-text text-light"></i></span>
                                    </div>
                                    <div class="mx-10 p-2">
                                        <a href="#" class="text-dark hover-primary font-weight-bold">ChatGPT Bot</a>
                                    </div>
                                </div>
                                <div class="message-row d-flex align-items-center">
                                    <div class="message-content p-3">
                                        我是GPT助手，您的截图生成成功！
                                        <div class="attachment">
                                            <div class="media mt-2">
                                                <div class="avatar me-2">
                                                    <div class="avatar rounded no-image green">
                                                        <a download="\${webMetaData.chatCurrentId}.png" href="\${imgData}"><i class="zmdi zmdi-image"></i></a>
                                                    </div>
                                                </div>
                                                <div class="media-body overflow-hidden">
                                                    <h6 class="text-truncate mb-0"><a download="\${webMetaData.chatCurrentId}.png" href="\${imgData}">截图.png</a></h6>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="dropdown">
                                        <a class="text-muted me-1 p-2 text-muted" href="#" data-toggle="dropdown"
                                           aria-haspopup="true" aria-expanded="false">
                                            <i class="zmdi zmdi-more-vert"></i>
                                        </a>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#" onclick="removeAnswer('chat-image-\${uuid}')">删除这条信息</a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </li> `)
            let scrollableDiv = document.getElementById("chat-content");
            scrollableDiv.scrollTop = scrollableDiv.scrollHeight;
        });
    }

    function checkChatError() {
        $(".message-bot").each(function (index, element) {
            let $messc = $(element).find(".message-content");
            if ($messc.html().trim().length == 0) {
                $messc.addClass("alert-danger");
                $messc.html("后台出现了某些错误！")
            }
        })
    }

    function fixCode() {
        $.ajax({
            url: ip + "/v1/edits/code",
            type: "post",
            data: JSON.stringify({
                "input": $(".code-editor").text(),
                "instruction": "Complete the code based on comments"
            }),
            contentType: "application/json",
            success: function (data) {
                console.log(data)
                $(".code-editor").text(data.choices[0].text);
                // require(["orion/editor/edit"], function (edit) {
                //     edit({className: "code-editor"});
                // });
            },
            complete: function () {
                $("#code-check").off("click").on("click", function () {
                    $(this).off("click").text("增补/修改");
                    fixCode();
                })
            }
        })
    }

    function stopChat() {
        if (webMetaData.ws != null) {
            $.post(ip + "/v1/chat/completions/stopstream/" + webMetaData.userno)
        } else {
            webMetaData.sse.close();
        }
        if (webMetaData.chatState == 1) {
            $("#user-chat-answer-" + webMetaData.index).remove();
        } else if (webMetaData.chatState == 2) {
            webMetaData.chatState = 0;
            webMetaData.index++;
            $("#stopChat").hide();
            $("#sendChat").show();
            saveChat();
        }

    }

    /**
     * 连接，sse为sse服务，ws为websocket服务，其中两个服务对话都可以用，但是后续功能（如终止对话等）全部只支持sse
     * websocket可以当作demo学习或者使用，本项目使用了sse，官网也是。
     * */
    function connect(type) {
        if (type == "sse") {

        } else {
            // webMetaData.ws = new WebSocket("ws://localhost:8080" + webMetaData.userno);
            webMetaData.ws = new WebSocket("wss://library.baiyichen.asia/fw/consult");
            // webMetaData.ws = new WebSocket("ws://localhost:8080/fw/consult");
            webMetaData.ws.onopen = function () {
                console.log("建立连接")
            };
            webMetaData.ws.onmessage = function (event) {
                const chatVo = JSON.parse(event.data)
                buildMessage(0, "user-chat-question-" + webMetaData.index, __zqChat.getRealDate(new Date()), chatVo.senderName, "http://hoppinzq.com/zui/static/picture/0.jpg",
                    chatVo.content, webMetaData.index, false);
            };
            webMetaData.ws.onclose = function () {
                $.post(ip + "/v1/chat/completions/stopstream/" + webMetaData.userno)
                setTimeout(function () {
                    connect(); // 重新连接
                }, 2000);
            };
            webMetaData.ws.onerror = function () {
                setTimeout(function () {
                    connect(); // 重新连接
                }, 2000);
            };
        }
    }

    /**
     * 提问
     * */
    function question() {
        if (webMetaData.chatState > 0) {
            new jBox('Notice', {
                attributes: {
                    y: 'bottom'
                },
                position: {
                    x: 'center',
                    y: 'center'
                },
                animation: 'flip',
                color: "red",
                autoClose: 5000,
                content: '请等待聊天完成',
                delayOnHover: true,
                showCountdown: true,
            });
            return;
        }
        let question = $("#sendText").val();
        if (question.length == 0) {
            new jBox('Notice', {
                attributes: {
                    y: 'bottom'
                },
                position: {
                    x: 'center',
                    y: 'center'
                },
                animation: 'flip',
                color: "blue",
                autoClose: 5000,
                content: '请输入内容',
                delayOnHover: true,
                showCountdown: true,
            });
            $("#sendText").focus();
            return;
        }
        $("#sendText").val("");
        buildMessage(2, "user-chat-question-" + webMetaData.index, __zqChat.getRealDate(new Date()), webMetaData.messageContent.senderName, "http://hoppinzq.com/zui/static/picture/0.jpg", question, webMetaData.index, false);
        webMetaData.messageContent.sendTime = __zqChat.getRealDate(new Date())
        webMetaData.messageContent.content = question
        webMetaData.ws.send(JSON.stringify(webMetaData.messageContent))
    };

    /**
     * 不渲染md，还原原来的聊天格式
     * */
    function notUserMd(id) {
        if (webMetaData.chatState > 0) {
            new jBox('Notice', {
                attributes: {
                    y: 'bottom'
                },
                position: {
                    x: 'center',
                    y: 'center'
                },
                animation: 'flip',
                color: "blue",
                autoClose: 5000,
                content: '正在生成聊天中，生成完毕可操作',
                delayOnHover: true,
                showCountdown: true,
            });
            return;
        }
        $("#" + id).removeClass("markdown-body").removeClass("editormd-html-preview").html("")
            .text($("#" + id).data("predate"));
    }

    /**
     * 渲染md
     * */
    function userMd(id) {
        if (webMetaData.chatState > 0) {
            new jBox('Notice', {
                attributes: {
                    y: 'bottom'
                },
                position: {
                    x: 'center',
                    y: 'center'
                },
                animation: 'flip',
                color: "blue",
                autoClose: 5000,
                content: '正在生成聊天中，生成完毕可操作',
                delayOnHover: true,
                showCountdown: true,
            });
            return;
        }
        markdownToHtml(id)
    }

    /**
     * md转html
     * */
    function markdownToHtml(id) {
        let markdown = $("#" + id).text();
        $("#" + id).text("").data("predate", markdown);

        let testEditormdView = editormd.markdownToHTML(id, {
            markdown: markdown,//+ "\r\n" + $("#append-test").text(),
            htmlDecode: true,       // 开启 HTML 标签解析，为了安全性，默认不开启
            //htmlDecode: "style,script,iframe",  // you can filter tags decode
            //toc             : false,
            tocm: true,    // Using [TOCM]
            //tocContainer    : "#custom-toc-container", // 自定义 ToC 容器层
            //gfm             : false,
            //tocDropdown     : true,
            // markdownSourceCode : true, // 是否保留 Markdown 源码，即是否删除保存源码的 Textarea 标签
            emoji: true,
            taskList: true,
            tex: true,  // 默认不解析
            flowChart: true,  // 默认不解析
            sequenceDiagram: true,  // 默认不解析
        });
        $(".message-content pre").each(function (index_code, element_code) {
            let $element_code = $(element_code);
            $(element_code).find(".code_change").remove();
            $(element_code).find(".copy-code-btn").remove();
            let code = $element_code.text();
            $element_code.addClass("pre_" + index_code);
            let $code = $element_code.on({
                mouseover: function (e1) {
                    e1.stopPropagation();
                },
                mouseout: function (e2) {
                    e2.stopPropagation();
                }
            });
            $element_code.prepend($(`<button class="code_change cursor-pointer" data-html2canvas-ignore>切换主题</button>`).off("click").on("click", function () {
                $code.toggleClass("hljs");
            })).prepend($(`<button class="copy-code-btn" data-html2canvas-ignore>复制</button>`).off("click").on("click", function () {
                $(".copy-code-btn").each(function (index, elem) {
                    $(elem).text("复制");
                });
                let save = function (e) {
                    e.clipboardData.setData('text/plain', code);
                    e.preventDefault();//阻止默认行为
                }
                document.addEventListener('copy', save);
                document.execCommand("copy");
                $(this).text("复制成功！");
            }))
        })
    }

    /**
     * botType:0用户 / 1 gpt机器人 / 2 :其他
     **/
    function buildMessage(botType, id, date, user, userImg, message, index, isHtml, messageId = null) {
        message = message.trim();
        if (messageId == null) {
            messageId = __zqChat.uuid(32, 64);
        }
        if (botType == 1) {
            $(".new-answer").removeClass("new-answer");//永远保证类标签dropdown-item在最后一个对话
            $(".chat-message").append2(`<li class="d-flex message message-bot" id="\${id}">
                            <div class="message-body">
                                <div class="d-flex align-items-center">
                                    <div class="avatar sm rounded-circle bg-primary d-flex align-items-center justify-content-center">
                                        <span><i class="zmdi zmdi-comment-text text-light"></i></span>
                                    </div>
                                    <div class="mx-10 p-2">
                                        <a href="#" class="text-dark hover-primary font-weight-bold">\${user}</a>
                                    </div>
                                </div>
                                <span class="date-time text-muted">\${date} <i
                                        class="zmdi zmdi-check-all text-primary"></i></span>
                                <div class="message-row d-flex align-items-center">
                                    <div class="message-content p-3 text-chat" id="message-\${id}" data-img="\${userImg}" data-user="\${user}" data-date="\${date}" data-role="assistant" data-id="\${messageId}"></div>
                                    <div class="dropdown">
                                        <a class="text-muted me-1 p-2 text-muted" href="#" data-toggle="dropdown"
                                           aria-haspopup="true" aria-expanded="false">
                                            <i class="zmdi zmdi-more-vert"></i>
                                        </a>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#" onclick="notUserMd('message-\${id}')" title="将会还原ChatBot原来的文本">不使用样式</a>
                                            <a class="dropdown-item" href="#" onclick="userMd('message-\${id}')" title="渲染ChatBot代码，表格等数据">渲染样式</a>
                                            <a class="dropdown-item new-answer" href="#" onclick="reAnswer(this,'message-\${id}','\${id}','\${messageId}')" title="将会还原ChatBot原来的文本">不满意，重新回答</a>
                                            <a class="dropdown-item" href="#" onclick="needhelp('message-\${id}')" title="将会还原ChatBot原来的文本">对回答有疑问？</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>`, function () {
                if (isHtml) {
                    $("#message-" + id).html(message);
                } else {
                    $("#message-" + id).text(message);
                    markdownToHtml("message-" + id);
                }
            })
        } else if (botType == 0) {
            $(".chat-message").append2(`<li class="d-flex message message-user right" id="\${id}">
                            <div class="message-body">
                                <div class="d-flex align-items-center justify-content-end">
                                    <div class="mx-10 p-2">
                                        <a href="#" class="text-dark hover-primary font-weight-bold">\${user}</a>
                                    </div>
                                    <span class="msg-avatar">
                                        <img src="\${userImg}" class="avatar avatar-lg rounded-circle">
                                    </span>
                                </div>
                                <span class="date-time text-muted">\${date}<i
                                        class="zmdi zmdi-check-all text-primary"></i></span>
                                <div class="message-row d-flex align-items-center justify-content-end">
                                    <div class="dropdown">
                                        <a class="text-muted me-1 p-2 text-muted" href="#" data-toggle="dropdown"
                                           aria-haspopup="true" aria-expanded="false">
                                            <i class="zmdi zmdi-more-vert"></i>
                                        </a>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#" onclick="needhelp()" title="将会还原ChatBot原来的文本">有疑问？</a>
                                        </div>
                                    </div>
                                    <div class="message-content p-3 text-chat" id="message-\${id}" data-img="\${userImg}" data-user="\${user}" data-role="user" data-date="\${date}" data-id="\${messageId}">\${message}</div>
                                </div>
                            </div>
                        </li>`, function () {
            })
        } else {
            $(".chat-message").append(`<li class="d-flex message message-bot" id="\${id}">
                            <div class="message-body">
                                <div class="d-flex align-items-center">
                                    <div class="avatar sm rounded-circle bg-primary d-flex align-items-center justify-content-center">
                                        <span><i class="zmdi zmdi-comment-text text-light"></i></span>
                                    </div>
                                    <div class="mx-10 p-2">
                                        <a href="#" class="text-dark hover-primary font-weight-bold">\${user}</a>
                                    </div>
                                </div>
                                <span class="date-time text-muted">\${date} <i
                                        class="zmdi zmdi-check-all text-primary"></i></span>
                                <div class="message-row d-flex align-items-center">
                                    <div class="message-content message-content-ex p-3 text-chat" data-role="helper">\${message}</div>
                                </div>
                            </div>
                        </li>`)
        }
        let scrollableDiv = document.getElementById("chat-content");
        scrollableDiv.scrollTop = scrollableDiv.scrollHeight;
    }

    /**
     *
     * */
    function deleteMessages(messageDomId, messageId) {
        let $nextBotDom = $("#" + messageDomId).next(".message-bot");
        let nextMessageId = $nextBotDom.find(".message-content").data("id");
        $.get(`\${ip}/hoppinzq?method=deleteChatMessageBatchByMessageIds&params={"messageIds":"['\${messageId}','\${nextMessageId}']"}`, function (data) {
            let _data = JSON.parse(data);
            if (_data.code == 200) {
                $("#" + messageDomId).remove();
                $nextBotDom.remove();
                let chat = getCurrentChat();
                let messages = chat.chatMessageList;
                let tempChatMessage = [];
                webMetaData.index--;
                //倒着删
                for (let i = messages.length - 1; i >= 0; i--) {
                    let message = messages[i]
                    if (message.message_id == messageId || message.message_id == nextMessageId) {
                        messages.splice(i, 1);
                    } else {
                        message.message_index = parseInt((i - 2) / 2) + 1;
                        tempChatMessage.push({
                            "messageId": message.message_id,
                            "index": message.message_index,
                        })
                    }
                }
                $.ajax({
                    url: `\${ip}/hoppinzq?method=updateChatMessages`,
                    type: "post",
                    data: JSON.stringify({
                        "chatMessages": tempChatMessage
                    }),
                    contentType: "application/json",
                    success: function (data) {
                        //webMetaData.index++;
                    },
                    error: function (data) {
                    }
                })
            } else {
                swal("啊呀呀!", "删除有错误！", "error");
            }
        });
    }

    /**
     * 保存对话
     * */
    function saveChat() {
        let chat = findChatByChatid(webMetaData.chatCurrentId);
        if (chat != undefined) {
            let lastIndex = webMetaData.index - 1;
            let lastChatUserDom = $("#message-user-chat-question-" + lastIndex);
            let tempChatMessage = [];
            chat.chatMessageList.push({
                "chatId": webMetaData.chatCurrentId,
                "messageId": lastChatUserDom.data("id"),
                "role": lastChatUserDom.data("role"),
                "message": lastChatUserDom.text(),
                "date": lastChatUserDom.data("date"),
                "user": lastChatUserDom.data("user"),
                "index": lastIndex,
                "image": lastChatUserDom.data("img")
            });
            tempChatMessage.push({
                "chatId": webMetaData.chatCurrentId,
                "messageId": lastChatUserDom.data("id"),
                "role": lastChatUserDom.data("role"),
                "message": lastChatUserDom.text(),
                "date": lastChatUserDom.data("date"),
                "user": lastChatUserDom.data("user"),
                "userId": webMetaData.userId,
                "index": lastIndex,
                "image": lastChatUserDom.data("img")
            })
            let lastChatAssistantDom = $("#message-user-chat-answer-" + lastIndex);
            chat.chatMessageList.push({
                "chatId": webMetaData.chatCurrentId,
                "messageId": lastChatAssistantDom.data("id"),
                "role": lastChatAssistantDom.data("role"),
                "message": lastChatAssistantDom.data("predate") == undefined ? lastChatAssistantDom.text() : lastChatAssistantDom.data("predate"),
                "date": lastChatAssistantDom.data("date"),
                "user": lastChatAssistantDom.data("user"),
                "index": lastIndex,
                "image": lastChatAssistantDom.data("img")
            });
            tempChatMessage.push({
                "chatId": webMetaData.chatCurrentId,
                "messageId": lastChatAssistantDom.data("id"),
                "role": lastChatAssistantDom.data("role"),
                "message": lastChatAssistantDom.data("predate") == undefined ? lastChatAssistantDom.text() : lastChatAssistantDom.data("predate"),
                "date": lastChatAssistantDom.data("date"),
                "user": lastChatAssistantDom.data("user"),
                "index": lastIndex,
                "image": lastChatAssistantDom.data("img")
            })
            $.ajax({
                url: `\${ip}/hoppinzq?method=createChatMessages`,
                type: "post",
                data: JSON.stringify({
                    "chatMessages": tempChatMessage
                }),
                contentType: "application/json",
                success: function (data) {
                },
                error: function (data) {
                }
            })
        }
    }

    /**
     * 需要帮助？
     * */
    function needhelp() {
        $("#settings").click();
        $("#faqs").click();
    }

    /**
     * 重新回答
     * */
    function reAnswer(element, messageDomid, domId, messageId) {
        if (!$(element).hasClass("new-answer")) {
            swal("啊呀呀!", "只能重新回答最新一条聊天！你可以通过右边三个点来重新提问", "error");
            return;
        }
        let tempIndex = webMetaData.index - 1;
        let lastMessageId = $("#message-user-chat-question-" + tempIndex).data("id");
        $.get(`\${ip}/hoppinzq?method=deleteChatMessageBatchByMessageIds&params={"messageIds":"['\${lastMessageId}','\${messageId}']"}`, function (data) {
            let _data = JSON.parse(data);
            if (_data.code == 200) {
                webMetaData.index--;
                $("#" + domId).remove();
                let chat = getCurrentChat();
                let messages = chat.chatMessageList;
                //倒着删
                for (let i = messages.length - 1; i >= 0; i--) {
                    let message = messages[i]
                    if (message.messageId == messageId || message.messageId == lastMessageId) {
                        messages.splice(i, 1);
                    }
                }
                let question = $("#message-user-chat-question-" + webMetaData.index).text();
                answer("user-chat-answer-" + webMetaData.index, question, "sse");
            } else {
                swal("啊呀呀!", "删除现有回答有错误，不能重新回答！", "error");
            }
        });
    }

    /**
     * 回复,支持ws跟sse，推荐使用sse
     * */
    function answer(chatid, question, type) {
        if (type == "ws") {
            let chat = getCurrentChat();
            let questionEncode = encodeURI(question);
            let eventSource = new EventSource(ip + '/stream-sse3?message=' + questionEncode + "&chatId=" + webMetaData.chatCurrentId + "&context_number=" + chat.chat_context + "&system=" + chat.chat_system + "&apikey=" + webMetaData.apikey);
            webMetaData.chatState = 1;
            buildMessage(1, "user-chat-answer-" + webMetaData.index, __zqChat.getRealDate(new Date()), "ChatGPT Bot", "botimg", `
                                        <div class="wave">
                                            <span class="dot"></span>
                                            <span class="dot"></span>
                                            <span class="dot"></span>
                                        </div>`, webMetaData.index, true);
            $("#sendChat").hide();
            $("#stopChat").show();
            webMetaData.sse = eventSource;
            eventSource.onopen = function (event) {
            };
            eventSource.addEventListener("message", function (event) {
                $("#message-user-chat-answer-" + webMetaData.index).find(".wave").remove();
                let msg = event.data;
                //错误了
                if (msg.indexOf("500sse_error_zq") != -1) {
                    webMetaData.chatState = 0;
                    setErrorChat(msg);
                    eventSource.close();
                    $("#sendChat").show();
                    $("#stopChat").hide();
                } else {
                    let chat = JSON.parse(msg);
                    if (chat.choices[0].message.content != undefined && chat.choices[0].message.content != null) {
                        webMetaData.chatState = 2;
                        $("#message-user-chat-answer-" + webMetaData.index).text($("#message-user-chat-answer-" + webMetaData.index).text() + chat.choices[0].message.content);
                    }
                    if (chat.choices[0].finishReason != undefined && chat.choices[0].finishReason == "length") {
                        swal("啊呀呀!", "token超出限制", "error");
                    }
                }
                if (webMetaData.cache.isscoll == "1") {
                    let scrollableDiv = document.getElementById("chat-content");
                    scrollableDiv.scrollTop = scrollableDiv.scrollHeight;
                }
            });
            eventSource.addEventListener("error", function (event) {
                if (webMetaData.index == 1) {
                    updateChat();
                }
                markdownToHtml("message-user-chat-answer-" + webMetaData.index);
                webMetaData.index++;
                //结束
                webMetaData.chatState = 0;
                eventSource.close();
                $("#sendChat").show();
                $("#stopChat").hide();
                saveChat();
                //聊天错误
                //checkChatError();
            });
        } else {
            $.ajax({
                type: "post",
                url: ip + "/v1/chat/completions/poststream/" + webMetaData.userno,
                data: JSON.stringify({
                    "model": "gpt-3.5-turbo",
                    "stream": true,
                    "messages": [
                        {"role": "user", "content": question}
                    ]
                }),
                contentType: "application/json",
                beforeSend: function () {
                    webMetaData.chatState = 1;
                    buildMessage(1, "user-chat-answer-" + webMetaData.index, __zqChat.getRealDate(new Date()), "ChatGPT Bot", "botimg", `<div class="wave"><span class="dot"></span><span class="dot"></span><span class="dot"></span></div>`, webMetaData.index, true);
                },
                success: function (response) {
                },
                error: function (xhr, status, error) {
                    alert("出错了！");
                }
            });
        }

    }

    /**
     * 错误的聊天
     * */
    function setErrorChat(error) {
        let logid = error.substring(error.indexOf(":") + 1);
        $("#user-chat-question-" + webMetaData.index).attr("id", "user-chat-question-error-" + webMetaData.index);
        $("#user-chat-answer-" + webMetaData.index).attr("id", "user-chat-answer-error-" + webMetaData.index);
        $("#message-user-chat-answer-" + webMetaData.index).addClass("alert-danger").css("border", "1px solid").html("似乎出现了某些问题,可能是apikey过期了，也可能是你问的问题本身超出了最大token,但我不能提供具体的原因和细节," +
            "你可以微信HOPPIN_HAZZ,并提供您的日志id：" + logid + "<br>另外，该对话不会被保存！");
    }

    /**
     * 更新&新增聊天
     * */
    function updateChat() {
        let chatId = webMetaData.chatCurrentId;
        let index = webMetaData.index;
        let chat_title = $("#message-user-chat-question-" + index).text().substr(0, 10);
        let chat_answer = $("#message-user-chat-answer-" + index).text().substr(0, 20);
        let nowTime = __zqChat.getRealDate(new Date());
        $(".chat-title").each(function (i, element) {
            if ($(element).data("id") == chatId) {
                $(element).find(".chat-question-header").text(chat_title);
                $(element).find(".chat-answer-header").text(chat_answer);
            }
        })
        let chat = {};
        chat.chat_id = chatId;
        chat.chat_user_id = webMetaData.userId;
        chat.chat_createDate = nowTime;
        chat.chat_title = chat_title;
        chat.chat_answer = chat_answer;
        chat.chat_state = "0";
        chat.chat_modal = webMetaData.modal;

        $.ajax({
            url: `\${ip}/hoppinzq?method=insertOrUpdateChat`,
            type: "post",
            contentType: "application/json",
            data: JSON.stringify({
                "chat": chat
            }),
            success: function (data) {
            },
            error: function (data) {
            }
        })
    }


    /**
     * 删除回答对话
     * */
    function removeAnswer(id) {
        $("#" + id).remove();
    }

    /**
     * 设置帮助
     */
    function setHelp() {
        /*if (webMetaData.cache.ishelp == "1") {
            $(".chat-message").append2(`<li class="d-flex message chat-help" id="chat-help1">
                            <div class="message-body">
                                <div class="d-flex align-items-center">
                                    <div class="avatar sm rounded-circle bg-primary d-flex align-items-center justify-content-center">
                                        <span><i class="zmdi zmdi-comment-text text-light"></i></span>
                                    </div>
                                    <div class="mx-10 p-2">
                                        <a href="#" class="text-dark hover-primary font-weight-bold">ChatGPT Bot</a>
                                    </div>
                                </div>
                                <span class="date-time text-muted">这是提示对话 不想要？<a data-toggle="pill" href="#nav-tab-user">设置关闭</a></span>
                                <div class="message-row d-flex align-items-center">
                                    <div class="message-content p-3 text-chat">🙌 欢迎你!
我是ChatGPT Bot🤖
<a href="#" onclick="openImage()">(现已支持生成图片👈)</a>
如果你有疑问，或者想将该项目部署在本地，可以访问<a href="http://hoppin.cn/blog/436946891859607550" target="_blank">我的博客</a>。建议你直接问我问题，包括但不限于</div>
                                    <div class="dropdown">
                                        <a class="text-muted me-1 p-2 text-muted" href="#" data-toggle="dropdown"
                                           aria-haspopup="true" aria-expanded="false">
                                            <i class="zmdi zmdi-more-vert"></i>
                                        </a>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#" onclick="removeAnswer('chat-help1')">删除对话</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="message-row d-flex align-items-center">
                                    <button type="button" class="btn btn-outline-primary btn-rounded mb-1 me-1" onclick="openAndImage('生成1张忧郁的猫的图片')">
                                        生成1张忧郁的猫的图片
                                    </button>
                                    <button type="button" class="btn btn-outline-warning btn-rounded mb-1 me-1 demochat" data-message="请编写一个基于java的二叉树的代码">
                                        请编写一个基于java的二叉树的代码
                                    </button>
                                    <button type="button" class="btn btn-outline-dark btn-rounded mb-1 me-1 demochat" data-message="给小黑狗起个名字">
                                        给小黑狗起个名字
                                    </button>
                                    <button type="button" class="btn btn-outline-success btn-rounded mb-1 me-1 demochat" data-message="写一篇关于搜索引擎的论文">
                                        写一篇关于搜索引擎的论文
                                    </button>
                                </div>
                            </div>
                        </li>
                        <li class="d-flex message chat-help" id="chat-help2">
                            <div class="message-body">
                                <div class="d-flex align-items-center">
                                    <div class="avatar sm rounded-circle bg-primary d-flex align-items-center justify-content-center">
                                        <span><i class="zmdi zmdi-comment-text text-light"></i></span>
                                    </div>
                                    <div class="mx-10 p-2">
                                        <a href="#" class="text-dark hover-primary font-weight-bold">ChatGPT Bot</a>
                                    </div>
                                </div>
                                <span class="date-time text-muted">这是提示对话 不想要？<a data-toggle="pill" href="#nav-tab-user">设置关闭</a></span>
                                <div class="message-row d-flex align-items-center">
                                    <div class="card rounded-3">
                                        <div class="card-body"><h5 class="card-title">开始尝试吧!</h5>
                                            <p class="card-text">你有任何疑问可以查看我的帮助文档，如果你不会使用我，你可以在下面获取帮助。</p>
                                            <p class="card-text text-danger fw-bold">最后，请不要清理缓存，因为没有引入用户登录机制，我无法知道你是谁。
                                            您的所有聊天会被缓存到本地和数据库，误清缓存请联系我恢复聊天数据。微信：HOPPIN_HAZZ</p>
                                            <p class="card-text">您的临时用户id是:\${webMetaData.userId}。临时id只跟您的设备有关，如要同步其他端的聊天，请手动修改缓存的用户id。</p></div>
                                        <div class="card-body"><a href="https://hoppinzq.com/manager/chatgptAPI.html" target="_blank" class="card-link">✨ 查看文档</a>
                                            <a href="#" onclick="needhelp()" class="card-link">👈 我需要帮助</a></div>
                                    </div>
                                    <div class="dropdown">
                                        <a class="text-muted me-1 p-2 text-muted" href="#" data-toggle="dropdown"
                                           aria-haspopup="true" aria-expanded="false">
                                            <i class="zmdi zmdi-more-vert"></i>
                                        </a>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#" onclick="removeAnswer('chat-help2')">删除对话</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="d-flex message chat-help" id="chat-help3">
                            <div class="message-body">
                                <div class="d-flex align-items-center">
                                    <div class="avatar sm rounded-circle bg-primary d-flex align-items-center justify-content-center">
                                        <span><i class="zmdi zmdi-comment-text text-light"></i></span>
                                    </div>
                                    <div class="mx-10 p-2">
                                        <a href="#" class="text-dark hover-primary font-weight-bold">ChatGPT Bot</a>
                                    </div>
                                </div>
                                <span class="date-time text-muted">这是提示对话 不想要？<a data-toggle="pill" href="#nav-tab-user">设置关闭</a></span>
                                <div class="message-row d-flex align-items-center">
                                    <div class="message-content border p-3">
                                        关于一些你的疑问,如何将该项目部署在你自己的服务器上,以及定制自己的功能等问题，可以看下面的博客
                                        <div class="card mt-2">
                                            <div class="card-body">
                                                <h6 class="mt-2"><a href="http://hoppin.cn/blog/436946891859607550" target="_blank">chatGPT的使用</a></h6>
                                                <span class="text-muted">作者：<a href="http://hoppin.cn/author/1" target="_blank">zhangqi</a> <br>2023-04-30 22:48:06</span>
                                                <div class="d-flex">
                                                    <a href="http://hoppin.cn/blog/436946891859607550" target="_blank" class="align-self-center me-2"><i class="zmdi zmdi-star-outline"></i></a>
                                                    <span class="align-self-center">收藏</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="dropdown">
                                        <a class="text-muted me-1 p-2 text-muted" href="#" data-toggle="dropdown"
                                           aria-haspopup="true" aria-expanded="false">
                                            <i class="zmdi zmdi-more-vert"></i>
                                        </a>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#" onclick="removeAnswer('chat-help3')">删除对话</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="d-flex message divider mt-xl-5 mt-md-3 mb-xl-5 mb-md-3">
                            <small class="text-muted">今天</small>
                        </li>`, function () {
                $(".demochat").off("click").on("click", function () {
                    $("#sendText").val($(this).data("message"));
                    question();
                })
            })
        }*/
    }


    function account() {
        let token = webMetaData.accessToken;
        if (token == null) {
            __zqChat.getResource("https://hoppinzq.com/chat/static/json/apiKeys.json", function (data) {
                let keys = data.data;
                $.each(keys, function (index, key) {
                    $(".api-key-list").append(`<tr>
                                                    <td>\${key.publishable == "ture" ? "Publish key" : "Secret key"}</td>
                                                    <td>\${key.sensitive_id}</td>
                                                    <td>\${__zqChat.getRealDate(parseInt(key.created) * 1000)}</td>
                                                    <td>\${key.last_use == null ? "未使用" : __zqChat.getRealDate(parseInt(key.last_use) * 1000)}</td>
                                                </tr>`)
                })
            })
            __zqChat.getResource("https://hoppinzq.com/chat/static/json/billing.json", function (data) {
                $("#billing").append("$" + data.total_granted + "/$" + data.total_available);
                let grants = data.grants.data;
                $.each(grants, function (index, grant) {
                    $(".account-billing").append(`<tr>
                                                    <td><a href="javascript:;">\${grant.id}</a></td>
                                                    <td>$${grant.grant_amount}</td>
                                                    <td>$${grant.used_amount}</td>
                                                    <td>\${__zqChat.getRealDate(parseInt(grant.effective_at) * 1000)}</td>
                                                    <td>\${__zqChat.getRealDate(parseInt(grant.expires_at) * 1000)}</td>
                                                </tr>`)
                })
            })
        } else {
            //请求api请看后台代码
        }
    }


    function createImage(prompt, n, size) {
        $(".image-sc").html("");
        $.ajax({
            url: `\${ip}/v1/images/generations`,
            type: "post",
            data: JSON.stringify({
                "prompt": prompt,
                "n": n,
                "size": size
            }),
            beforeSend: function () {
                $(".image-sc").append(`<div class="wave">
                                            <span class="dot"></span>
                                            <span class="dot"></span>
                                            <span class="dot"></span>
                                        </div>`);
            },
            contentType: "application/json",
            success: function (data) {
                if (data.code != undefined && data.code == 500) {
                    swal("出错了!", data.msg, "error");
                    $(".image-sc").html("");
                } else {
                    $(".image-sc").html("");
                    let images = data.data;
                    $.each(images, function (index, image) {
                        $(".image-sc").append(`<img class="rounded mt-1" width="256" src="\${image.url}" alt="">`);
                    })
                }
            },
            complete: function () {
                resetImageH();
            }
        })
    }

    function openAndImage(prompt) {
        $(".image-nav").click();
        $("#image-prompt").val(prompt);
        createImage(prompt, 1, "256x256");
    }

    function openImage() {
        $(".image-nav").click();
    }

    function resetImageH() {

    }

</script>
</body>
</html>