<%@ page import="cn.hutool.Hutool" %>
<%@ page import="cn.hutool.core.util.StrUtil" %>
<%@ page import="com.bai.utils.constants.Constants" %>
<%@ page import="cn.hutool.core.date.DateUtil" %>
<%@ page contentType="text/html;charset=utf-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- InstanceBegin template="/Templates/ejymfw.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>新书通报--图书详细信息</title>
	
	<link href='/static/css/main.min.css' id='_main-css' media='all' rel='stylesheet' type='text/css'/>
	<link href='/static/css/bootstrap.min.css' id='_bootstrap-css' media='all' rel='stylesheet' type='text/css'/>
	<link href='/static/css/font-awesome.min.css' id='_fontawesome-css' media='all' rel='stylesheet' type='text/css'/>
	<link href='/static/css/style.min.css' id='wp-block-library-css' media='all' rel='stylesheet' type='text/css'/>
	<link href='/static/css/classic-themes.min.css' id='classic-theme-styles-css' media='all' rel='stylesheet'
	      type='text/css'/>
	<link href="/static/css/ejym.css" rel="stylesheet" type="text/css"/>
	<link href="/static/css/xxtb.css" rel="stylesheet" type="text/css"/>
	<link href="/static/css/xxtb-new-new.css" rel="stylesheet" type="text/css"/>
	<!--[if IE]>
	<script src="/static/js/html5.min.js"></script><![endif]-->
	<script id='jquery-js' src='/static/js/jquery.min.js' type='text/javascript'></script>
	<c:if test="${msg!=null}">
		<style>
            /* 控制消息提示框的位置 */
            .alert-fixed-top {
                position: fixed;
                top: -100px;
                left: 0;
                right: 0;
                margin-left: auto;
                margin-right: auto;
                z-index: 9999;
                text-align: center;
                width: 200px; /* 设置弹窗宽度 */
            }
		</style>
	</c:if>
</head>

<body>
<!---------头部：LOGO、导航栏菜单------------>
<div id="xxtb-banner">
	<div class="content-wrapper">
		<!--		<div id="xxtb-banner-logo"><a href="http://newbooks.lib.pku.edu.cn/"  ><img src="/static/picture/banner-logo.png"></a></div>-->
		<div id="xxtb-banner-menu">
			<%--			todo 待开发--%>
			<%--			<a href="http://newbooks.lib.pku.edu.cn/"><span class="menu">新书通报</span></a>--%>
			<%--			<a href="http://newbooks.lib.pku.edu.cn/bookclickorder.jsp"><span class="menu">热门浏览</span></a>--%>
			<a href="/index" target="_blank"><span class="menu">图书馆首页</span></a>
		</div>
	</div>
</div>
</div>

<!---------内容：图书详细信息、相关图书（可根据690分类号字段获取，取最新上架的5本书）------------>
<div id="xxtb-content">
	<div class="content-wrapper">
		<c:set value="<%=new DateUtil()%>" var="dateUtil"/>
		<!-------------图书详细信息---------------->
		<div id="xxtb-content-left">
			<c:if test="${detailList!=null}">
				<div class="article">
					<h1>${detailList.title}</h1>
					<div id="book-basic-info">
						<div class="basic-image"><img src="<c:url value="${detailList.coverImg}"/>"
						                              title="${detailList.title}"
						                              alt="${detailList.title}" style="max-height:220px;"></div>
						<div class="basic-content">
							<c:set value="<%=new StrUtil()%>" var="str"/>
							<ul>
								<c:if test="${str.isNotEmpty(detailList.subtitle)}">
									<li>副标题：${detailList.subtitle}</li>
								</c:if>
								<c:if test="${str.isNotEmpty(detailList.bookType)}">
									<li>丛书名：${detailList.bookType}</li>
								</c:if>
								<c:if test="${str.isNotEmpty(detailList.author)}">
									<li>作者：${detailList.author}</li>
								</c:if>
								<c:if test="${str.isNotEmpty(detailList.publishYear)}">
									<li>出版社：${detailList.publishYear}</li>
								</c:if>
								<c:if test="${detailList.bookPages!=null}">
									<li>页数：${detailList.bookPages}</li>
								</c:if>
								<c:if test="${str.isNotEmpty(detailList.callNumber)}">
									<li>索书号：${detailList.callNumber}</li>
								</c:if>
								<c:if test="${str.isNotEmpty(detailList.libraryLocation)}">
									<li>馆藏地址：${detailList.libraryLocation}</li>
								</c:if>
								<c:if test="${str.isNotEmpty(detailList.isbn)}">
									<li>ISBN：${detailList.isbn}</li>
								</c:if>
								<c:if test="${detailList.viewCount>0}">
									<li>浏览次数：${detailList.viewCount}</li>
								</c:if>
									<%--								todo 跳转到借阅图书页面，需要登录才能借阅--%>
								<script type="text/javascript">
                                    function click(bookId) {
                                        let isLogin =
                                        ${sessionScope.readercard.readerId==null}
                                        if (isLogin) {
                                            if (confirm('登陆后借阅，点击确定去登录>>')) {
                                                window.location.href = "<%=Constants.AccessPageUrl.READER_LOGIN_URL%>"
                                            }
                                        } else {
                                            if (isNaN(bookId)) {
                                                alert("当前访问人数过多，借阅失败")
                                            } else if (confirm("确定要借阅吗?借阅成功后您可以登录到后台个人中心查看借阅详情。")) {
                                                window.location.href = "/lendbook.html?bookId=" + bookId
                                            }
                                        }
                                    }

                                    function b(bookId) {
                                        let isLogin =
                                        ${!empty sessionScope.readercard.readerId}||${!empty sessionScope.readercard.readerId}
                                        if (!isLogin) {
                                            if (confirm('登陆后还书，点击确定去登录>>')) {
                                                window.location.href = "<%=Constants.AccessPageUrl.READER_LOGIN_URL%>"
                                            }
                                        } else {
                                            if (isNaN(bookId)) {
                                                alert("当前访问人数过多，还书失败")
                                            } else if (confirm("确定要还书吗?还书成功后您可以登录到后台个人中心查看还书详情。")) {
                                                window.location.href = "/returnbook.html?bookId=" + bookId
                                            }
                                        }
                                    }
								</script>
									<%--                                todo 点击借阅后再重新定向为当前图书页面--%>
								
								<c:if test="${detailList.returnBook==0}">
									<li class="button">
										<a
												href="javascript:click(${detailList.newBookId})"
												title="东楼三层;库本阅览室" alt="东楼三层;库本阅览室"
												target="_self">我要借阅</a>
									</li>
								</c:if>
								<c:if test="${detailList.returnBook>0}">
									<li class="button">
										<a
												href="javascript:b(${detailList.newBookId})"
												title="东楼三层;库本阅览室" alt="东楼三层;库本阅览室"
												target="_self">归还书籍</a>
											<%--                                        todo 归还书籍时显示读者推荐按钮方便读者推荐--%>
										<c:out value="<span>&nbsp;&nbsp;&nbsp;上一次借阅日期: ${dateUtil.format(detailList.lendDate,\"yyyy-MM-dd\")}</span>"
										       escapeXml="false"/>
									</li>
									<li>待还本类书籍：${detailList.returnBook}本</li>
								</c:if>
							
							
							</ul>
						</div>
						<c:if test="${backBookStatus}">
							
							<div class="alert alert-success alert-dismissable">
								<button type="button" class="close" data-dismiss="alert"
								        aria-hidden="true" id="close_rec">
									&times;
								</button>
								<a href="<c:url value="#"/> " class="alert-link open-modal">是否推荐本书</a>
							
							</div>
							<!-- 模态框结构 -->
							<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
							     aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title" id="myModalLabel">设定</h4>
										</div>
										<div class="modal-body">
											<!-- 推荐按钮和取消按钮 -->
											<button class="btn btn-primary" id="recommendBtn">推荐</button>
											<button class="btn btn-default" data-dismiss="modal">取消</button>
											
											<!-- 文本输入框 -->
											<input type="text" class="form-control" id="textInput"
											       placeholder="输入文本">
										</div>
									</div>
								</div>
							</div>
							<script>
                                // 当点击打开模态框的按钮时，显示模态框
                                $('.open-modal').click(function () {
                                    $('#myModal').modal('show');
                                });

                                // 当模态框关闭时，触发的事件
                                $('#myModal').on('hidden.bs.modal', function () {
                                    var inputValue = $('#textInput').val();
                                    if (inputValue) {
                                        // 处理推荐逻辑，这里只是简单的提示
                                        // alert('推荐成功：' + inputValue);
                                    }
                                });

                                // 自定义逻辑，处理推荐按钮的点击事件
                                $('#recommendBtn').click(function () {
                                    let id =
                                    ${sessionScope.readercard.readerId}||${sessionScope.readercard.readerId}
                                    $.ajax({
                                        type: "POST",
                                        url: "/fw/readertuijian",
                                        data: JSON.stringify({
                                            bookId: $("#comment_post_ID").val(),
                                            readerId: id,
                                            recommendationReason: $('#textInput').val()
                                        }),
                                        dataType: "JSON",

                                        contentType: "application/json",
                                        success: function ({code, msg}) {
                                            if (!!code && code === 1) {
                                                alert('推荐成功：' + msg);
                                                $("#close_rec")[0].click()
                                                $('#myModal').modal('hide');
                                            }
                                        }
                                    })

                                });
							</script>
						
						</c:if>
					</div>
					<div id="book-detail-info">
						<!----------以下信息（作者简介、目录、内容提要、序言、评论）有则显示，无则隐藏----------->
						<c:set var="intr" value="${detailList.introduction}"/>
						<c:set var="authorIntroduction" value="${detailList.authorIntroduction}"/>
						<c:set var="content" value="${detailList.content}"/>
						<c:if test="${intr!=null&&fn:length(intr)>0}">
							<div class="detail-label">内容简介</div>
							<div class="detail-content">
									${intr}
							</div>
						</c:if>
						
						<c:if test="${authorIntroduction!=null&&fn:length(authorIntroduction)>0}">
							<div class="detail-label">作者简介</div>
							<div class="detail-content">
									${authorIntroduction}
							</div>
						</c:if>
						
						
						<c:if test="${content!=null&&fn:length(content)>0}">
							<div class="detail-label">目录</div>
							<div class="detail-content-mulu">
								<c:out value="${content}" escapeXml="false"/>
							</div>
						</c:if>
					</div>
				</div>
			</c:if>
			<c:if test="${detailList==null}">
				<div class="article">
					<h1>经济与法探究--从部门法到法治一般(精)/法律与社会书系/光明社科文库(0)</h1>
					<div id="book-basic-info">
						<div class="basic-image"><img src="/static/picture/6018151-fm.jpg!cckb_b"
						                              title="经济与法探究 : 从部门法到法治一般 / 史际春著"
						                              alt="经济与法探究 : 从部门法到法治一般 / 史际春著"></div>
						<div class="basic-content">
							<ul>
								<li>副标题：从部门法到法治一般</li>
								<li>丛书名：法律与社会书系</li>
								
								<li>作者：史际春著</li>
								<li>出版社：北京 光明日报出版社 2022</li>
								<li>页数：602</li>
								<li>索书号：D922.2904/162b</li>
								<!--<li>馆藏地址：东楼三层;库本阅览室</li>-->
								<li>ISBN：9787519466800</li>
								
								<li>浏览次数：4</li>
								<li class="button"><a href="http://162.105.138.200/uhtbin/f001/012023055605"
								                      title="东楼三层;库本阅览室" alt="东楼三层;库本阅览室"
								                      target="_blank">我要借阅</a></li>
							
							</ul>
						</div>
					</div>
					<div id="book-detail-info">
						<!----------以下信息（作者简介、目录、内容提要、序言、评论）有则显示，无则隐藏----------->
						
						<div class="detail-label">内容简介</div>
						<div class="detail-content">
							本书作者长期从事经济法教学科研工作，从对规划和产业政策、财税、金融、国有企业、反垄断和反不正当竞争等的研究中，体悟到法治的机制、框架和模式，进而思考政府与市场关系的法治、规制的概念和本质、政策与法的关系、问责制、理念之于经济法治等。本书汇集了进入新世纪以来他的这些研究成果，分为三篇。一是法治实践及原理篇，探究与经济法相关的法治原理；二是民商经济法总论篇，包括对规制、经济法的“龙头法”、商法的地位、营利性、节制资本、税收法定、“竞争中立”、问责制等的研究；三是分论篇，是对经济法制度的相关前沿探讨，涉及宏观调控及规划法治、金融监管、住宅房产税、国有企业及其公益性、公用事业引入竞争机制、竞争政策和竞争法等。
						</div>
						
						
						<div class="detail-label">作者简介</div>
						<div class="detail-content">
							史际春，男，1952年3月生于上海，籍贯江苏溧阳。法学博士，中国人民大学教授，《法学家》主编兼社长。出版《经济法总论》等专著十余部、《政府与市场关系的法治思考》《论商法》等论文百余篇、主持《关于“错法”及其纠正机制问题研究》等国家级省部级项目十余项。获国务院“政府特殊津贴”和北京市优秀教师称号、国家教委首届“全国高等学校人文社会科学研究优秀成果奖”一等奖。曾任“中共中央法制讲座”课题组长（1998）、“中央政治局学习讲座”主讲人（2005）。
						</div>
						
						
						<div class="detail-label">目录</div>
						<div class="detail-content-mulu"> 法治实践及原理篇<BR> 法治之现代蜕变：从法典主义到规制时代<BR>
							法治与国民<BR> 论错法如何纠正<BR> 政策作为法的渊源及其法治价值<BR> “法制统一”新诠<BR>
							政府与市场关系的法治思考<BR> 论和谐社会语境下的地方经济法治<BR> 转变经济发展方式与法治<BR>
							以法治保障供给侧结构性改革<BR>民商经济法总论篇<BR> 论经济法的理念<BR> “规制”辨析<BR>
							经济法与经济法治<BR> 新发展观与经济法治新发展<BR> 民生法大纲<BR> 再论商法<BR> 论营利性<BR>
							股东权不是丧失所有权的对价<BR> 论法人<BR> 论“竞争中立”<BR> 论财政法是经济法的“龙头法”<BR>
							论“税收法定”与政府主导<BR> “问责制”研究——兼论问责制在中国经济法中的地位<BR> 再识“责任”与经济法<BR>
							WTO与经济法学新机遇：只有民族的才是国际的<BR>
							求真务实、肩负社会责任的人大经济法学<BR>分论篇<BR> 论分权、法治的宏观调控<BR> 地方法治与地方宏观调控<BR>
							论规划的法治化<BR> 如何优化金融监管：以我国金融业的集中抑或分业监管为中心<BR>
							从证券市场看“错法”及其纠正机制<BR> 论价格法<BR> 关于直接税间接税孰优孰劣及应否对住宅开征房产税的探讨<BR>
							财产权观念应跟上“修宪”步伐<BR> 论物权关系的法律调整——以经济法与民商法的功能协同为视角<BR>
							国企公益性之辨<BR> “政资分开”辨正<BR> 国有公司、企业中哪些人被视为“国家工作人员”<BR>
							论公司社会责任：法律义务、道德责任及其他<BR> 市场和政府谁更聪明<BR> 关于我国的竞争政策：法和政策分析<BR>
							我国银行卡清算市场规制策略研究<BR> 《反垄断法》与社会主义市场经济<BR> 反垄断法：一本难啃的市场经济“大部头”<BR>
							银行卡“交换费”集中定价的反垄断法分析<BR> 公用事业民营化及其相关法律问题研究<BR>
							公用事业引入竞争机制与“反垄断法”<BR> 《反垄断法》与行业立法、反垄断机构与行业监管机构的关系之比较研究及立法建议<BR>
							由“3Q大战”对竞争执法权配置的再审视<BR> 反公用事业垄断若干问题研究——以电信业和电力业的改革为例<BR>
							合法垄断与政府职责——关于《反垄断法》第7条的若干解读<BR>
							反垄断法适用除外制度的理论和实践依据<BR> 论食品安全卡特尔——一种食品安全法律治理的路径<BR>
							论维护市场竞争秩序中公权力的定位——从国美的艰难崛起反观我国竞争法制的缺失<BR> 漫话“消法”
						</div>
					
					
					</div>
				</div>
			</c:if>
			<div style="border-top: 2px solid #e26b2f;margin: 40px;"></div>
			<div class="theme-box" id="comments">
				<div class="box-body notop">
					<div class="title-theme">评论 <small>共${bookComments.size()}条</small></div>
				</div>
				
				<div class="no_webshot main-bg theme-box box-body radius8 main-shadow">
					<c:choose>
						<c:when test="${sessionScope['admin']!=null}">
							<c:set value="${sessionScope['admin']}" var="admin"/>
							<div class="flex ac jsb virtual-input " fixed-input="#respond">
								<div class="flex flex1 ac"><img alt="头像" class="lazyload avatar avatar-id-0"
								                                data-src="//www.clash-gaming.com/wp-content/themes/zibll%20V6.5/img/avatar-default.png"
								                                src="static/picture/avatar-default.png">
									<div class="text-ellipsis simulation mr10">欢迎您留言获取订阅地址！</div>
								</div>
								<span class="but c-blue">提交</span></div>
							<div class="mobile-fixed" id="respond">
								<div class="fixed-body"></div>
								<form id="commentform">
									<div class="flex ac">
										<div class="comt-title text-center flex0 mr10">
											<div class="comt-avatar mb10"><img alt="头像"
											                                   class="lazyload avatar avatar-id-0"
											                                   data-src="//www.clash-gaming.com/wp-content/themes/zibll%20V6.5/img/avatar-default.png"
											                                   src="static/picture/avatar-default.png">
											</div>
											<p class="" data-target="#comment-user-info" data-toggle="tooltip"
											   data-toggle-class="open" title="${admin.username}">${admin.username}</p>
										</div>
										<div class="comt-box grow1">
											<div class="action-text mb10 em09 muted-2-color"></div>
											<textarea autoheight="true" class="form-control grin" cols="100%"
											          id="comment" maxheight="188" name="comment"
											          onkeydown="if(event.ctrlKey&amp;&amp;event.keyCode==13){document.getElementById('submit').click();return false};"
											          placeholder="欢迎您留言获取订阅地址！"
											          rows="4"
											          tabindex="1"></textarea>
											<div class="comt-ctrl relative">
												<div class="comt-tips">
													<input id='comment_post_ID' name='comment_post_ID' type='hidden'
													       value='${detailList.newBookId}'/>
													<input id='comment_parent' name='comment_parent' type='hidden'
													       value='0'/>
													<input id='author' name='author' type='hidden'
													       value='${admin.username}'/>
												</div>
												<div class="comt-tips-right pull-right">
													<a class="but c-red" href="javascript:;"
													   id="cancel-comment-reply-link">取消</a>
													<button class="but c-blue pw-1em" id="submit" name="submit"
													        onclick="sendComment()"
													        type="button">
														提交评论
													</button>
												</div>
												<div class="comt-tips-left">
											<span
													class="dropup relative smilie"><a
													class="but btn-input-expand input-smilie mr6" href="javascript:;"><i
													class="fa fa-fw fa-smile-o"></i><span
													class="hide-sm">表情</span></a><div
													class="dropdown-menu"><div
													class="dropdown-smilie scroll-y mini-scrollbar"><a
													class="smilie-icon"
													data-smilie="aoman"
													href="javascript:;"><img
													alt="[aoman]" class="lazyload" data-src="static/picture/aoman.gif"/></a><a
													class="smilie-icon" data-smilie="baiyan" href="javascript:;"><img
													alt="[baiyan]" class="lazyload"
													data-src="static/picture/baiyan.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="bishi"
											                                                     href="javascript:;"><img
													alt="[bishi]"
													class="lazyload"
													data-src="static/picture/bishi.gif"/></a><a
													class="smilie-icon" data-smilie="bizui" href="javascript:;"><img
													alt="[bizui]" class="lazyload" data-src="static/picture/bizui.gif"/></a><a
													class="smilie-icon" data-smilie="cahan" href="javascript:;"><img
													alt="[cahan]" class="lazyload" data-src="static/picture/cahan.gif"/></a><a
													class="smilie-icon" data-smilie="ciya" href="javascript:;"><img
													alt="[ciya]" class="lazyload"
													data-src="static/picture/ciya.gif"/></a><a
													class="smilie-icon" data-smilie="dabing" href="javascript:;"><img
													alt="[dabing]" class="lazyload"
													data-src="static/picture/dabing.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="daku"
											                                                     href="javascript:;"><img
													alt="[daku]"
													class="lazyload"
													data-src="static/picture/daku.gif"/></a><a
													class="smilie-icon" data-smilie="deyi" href="javascript:;"><img
													alt="[deyi]" class="lazyload"
													data-src="static/picture/deyi.gif"/></a><a
													class="smilie-icon" data-smilie="doge" href="javascript:;"><img
													alt="[doge]" class="lazyload"
													data-src="static/picture/doge.gif"/></a><a
													class="smilie-icon" data-smilie="fadai" href="javascript:;"><img
													alt="[fadai]" class="lazyload" data-src="static/picture/fadai.gif"/></a><a
													class="smilie-icon" data-smilie="fanu" href="javascript:;"><img
													alt="[fanu]" class="lazyload"
													data-src="static/picture/fanu.gif"/></a><a
													class="smilie-icon" data-smilie="fendou" href="javascript:;"><img
													alt="[fendou]" class="lazyload"
													data-src="static/picture/fendou.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="ganga"
											                                                     href="javascript:;"><img
													alt="[ganga]"
													class="lazyload"
													data-src="static/picture/ganga.gif"/></a><a
													class="smilie-icon" data-smilie="guzhang" href="javascript:;"><img
													alt="[guzhang]" class="lazyload"
													data-src="static/picture/guzhang.gif"/></a><a
													class="smilie-icon" data-smilie="haixiu" href="javascript:;"><img
													alt="[haixiu]" class="lazyload"
													data-src="static/picture/haixiu.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="hanxiao"
											                                                     href="javascript:;"><img
													alt="[hanxiao]"
													class="lazyload"
													data-src="static/picture/hanxiao.gif"/></a><a
													class="smilie-icon" data-smilie="zuohengheng"
													href="javascript:;"><img
													alt="[zuohengheng]" class="lazyload"
													data-src="static/picture/zuohengheng.gif"/></a><a
													class="smilie-icon"
													data-smilie="zhuakuang"
													href="javascript:;"><img
													alt="[zhuakuang]" class="lazyload"
													data-src="static/picture/zhuakuang.gif"/></a><a class="smilie-icon"
											                                                        data-smilie="zhouma"
											                                                        href="javascript:;"><img
													alt="[zhouma]"
													class="lazyload"
													data-src="static/picture/zhouma.gif"/></a><a
													class="smilie-icon" data-smilie="zhemo" href="javascript:;"><img
													alt="[zhemo]" class="lazyload" data-src="static/picture/zhemo.gif"/></a><a
													class="smilie-icon" data-smilie="zhayanjian"
													href="javascript:;"><img
													alt="[zhayanjian]" class="lazyload"
													data-src="static/picture/zhayanjian.gif"/></a><a class="smilie-icon"
											                                                         data-smilie="zaijian"
											                                                         href="javascript:;"><img
													alt="[zaijian]"
													class="lazyload"
													data-src="static/picture/zaijian.gif"/></a><a
													class="smilie-icon" data-smilie="yun" href="javascript:;"><img
													alt="[yun]" class="lazyload" data-src="static/picture/yun.gif"/></a><a
													class="smilie-icon" data-smilie="youhengheng"
													href="javascript:;"><img
													alt="[youhengheng]" class="lazyload"
													data-src="static/picture/youhengheng.gif"/></a><a
													class="smilie-icon"
													data-smilie="yiwen"
													href="javascript:;"><img
													alt="[yiwen]"
													class="lazyload"
													data-src="static/picture/yiwen.gif"/></a><a
													class="smilie-icon" data-smilie="yinxian" href="javascript:;"><img
													alt="[yinxian]" class="lazyload"
													data-src="static/picture/yinxian.gif"/></a><a
													class="smilie-icon" data-smilie="xu" href="javascript:;"><img
													alt="[xu]" class="lazyload" data-src="static/picture/xu.gif"/></a><a
													class="smilie-icon" data-smilie="xieyanxiao"
													href="javascript:;"><img
													alt="[xieyanxiao]" class="lazyload"
													data-src="static/picture/xieyanxiao.gif"/></a><a class="smilie-icon"
											                                                         data-smilie="xiaoku"
											                                                         href="javascript:;"><img
													alt="[xiaoku]"
													class="lazyload"
													data-src="static/picture/xiaoku.gif"/></a><a
													class="smilie-icon" data-smilie="xiaojiujie"
													href="javascript:;"><img
													alt="[xiaojiujie]" class="lazyload"
													data-src="static/picture/xiaojiujie.gif"/></a><a class="smilie-icon"
											                                                         data-smilie="xia"
											                                                         href="javascript:;"><img
													alt="[xia]"
													class="lazyload"
													data-src="static/picture/xia.gif"/></a><a
													class="smilie-icon" data-smilie="wunai" href="javascript:;"><img
													alt="[wunai]" class="lazyload" data-src="static/picture/wunai.gif"/></a><a
													class="smilie-icon" data-smilie="wozuimei" href="javascript:;"><img
													alt="[wozuimei]" class="lazyload"
													data-src="static/picture/wozuimei.gif"/></a><a class="smilie-icon"
											                                                       data-smilie="weixiao"
											                                                       href="javascript:;"><img
													alt="[weixiao]"
													class="lazyload"
													data-src="static/picture/weixiao.gif"/></a><a
													class="smilie-icon" data-smilie="weiqu" href="javascript:;"><img
													alt="[weiqu]" class="lazyload" data-src="static/picture/weiqu.gif"/></a><a
													class="smilie-icon" data-smilie="tuosai" href="javascript:;"><img
													alt="[tuosai]" class="lazyload"
													data-src="static/picture/tuosai.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="tu"
											                                                     href="javascript:;"><img
													alt="[tu]"
													class="lazyload"
													data-src="static/picture/tu.gif"/></a><a
													class="smilie-icon" data-smilie="touxiao" href="javascript:;"><img
													alt="[touxiao]" class="lazyload"
													data-src="static/picture/touxiao.gif"/></a><a
													class="smilie-icon" data-smilie="tiaopi" href="javascript:;"><img
													alt="[tiaopi]" class="lazyload"
													data-src="static/picture/tiaopi.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="shui"
											                                                     href="javascript:;"><img
													alt="[shui]"
													class="lazyload"
													data-src="static/picture/shui.gif"/></a><a
													class="smilie-icon" data-smilie="se" href="javascript:;"><img
													alt="[se]" class="lazyload" data-src="static/picture/se.gif"/></a><a
													class="smilie-icon" data-smilie="saorao" href="javascript:;"><img
													alt="[saorao]" class="lazyload"
													data-src="static/picture/saorao.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="qiudale"
											                                                     href="javascript:;"><img
													alt="[qiudale]"
													class="lazyload"
													data-src="static/picture/qiudale.gif"/></a><a
													class="smilie-icon" data-smilie="se" href="javascript:;"><img
													alt="[se]" class="lazyload" data-src="static/picture/se.gif"/></a><a
													class="smilie-icon" data-smilie="qinqin" href="javascript:;"><img
													alt="[qinqin]" class="lazyload"
													data-src="static/picture/qinqin.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="qiaoda"
											                                                     href="javascript:;"><img
													alt="[qiaoda]"
													class="lazyload"
													data-src="static/picture/qiaoda.gif"/></a><a
													class="smilie-icon" data-smilie="piezui" href="javascript:;"><img
													alt="[piezui]" class="lazyload"
													data-src="static/picture/piezui.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="penxue"
											                                                     href="javascript:;"><img
													alt="[penxue]"
													class="lazyload"
													data-src="static/picture/penxue.gif"/></a><a
													class="smilie-icon" data-smilie="nanguo" href="javascript:;"><img
													alt="[nanguo]" class="lazyload"
													data-src="static/picture/nanguo.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="liulei"
											                                                     href="javascript:;"><img
													alt="[liulei]"
													class="lazyload"
													data-src="static/picture/liulei.gif"/></a><a
													class="smilie-icon" data-smilie="liuhan" href="javascript:;"><img
													alt="[liuhan]" class="lazyload"
													data-src="static/picture/liuhan.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="lenghan"
											                                                     href="javascript:;"><img
													alt="[lenghan]"
													class="lazyload"
													data-src="static/picture/lenghan.gif"/></a><a
													class="smilie-icon" data-smilie="leiben" href="javascript:;"><img
													alt="[leiben]" class="lazyload"
													data-src="static/picture/leiben.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="kun"
											                                                     href="javascript:;"><img
													alt="[kun]"
													class="lazyload"
													data-src="static/picture/kun.gif"/></a><a
													class="smilie-icon" data-smilie="kuaikule" href="javascript:;"><img
													alt="[kuaikule]" class="lazyload"
													data-src="static/picture/kuaikule.gif"/></a><a class="smilie-icon"
											                                                       data-smilie="ku"
											                                                       href="javascript:;"><img
													alt="[ku]"
													class="lazyload"
													data-src="static/picture/ku.gif"/></a><a
													class="smilie-icon" data-smilie="koubi" href="javascript:;"><img
													alt="[koubi]" class="lazyload" data-src="static/picture/koubi.gif"/></a><a
													class="smilie-icon" data-smilie="kelian" href="javascript:;"><img
													alt="[kelian]" class="lazyload"
													data-src="static/picture/kelian.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="keai"
											                                                     href="javascript:;"><img
													alt="[keai]"
													class="lazyload"
													data-src="static/picture/keai.gif"/></a><a
													class="smilie-icon" data-smilie="jingya" href="javascript:;"><img
													alt="[jingya]" class="lazyload"
													data-src="static/picture/jingya.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="jingxi"
											                                                     href="javascript:;"><img
													alt="[jingxi]"
													class="lazyload"
													data-src="static/picture/jingxi.gif"/></a><a
													class="smilie-icon" data-smilie="jingkong" href="javascript:;"><img
													alt="[jingkong]" class="lazyload"
													data-src="static/picture/jingkong.gif"/></a><a class="smilie-icon"
											                                                       data-smilie="jie"
											                                                       href="javascript:;"><img
													alt="[jie]"
													class="lazyload"
													data-src="static/picture/jie.gif"/></a><a
													class="smilie-icon" data-smilie="huaixiao" href="javascript:;"><img
													alt="[huaixiao]" class="lazyload"
													data-src="static/picture/huaixiao.gif"/></a><a class="smilie-icon"
											                                                       data-smilie="haqian"
											                                                       href="javascript:;"><img
													alt="[haqian]"
													class="lazyload"
													data-src="static/picture/haqian.gif"/></a><a
													class="smilie-icon" data-smilie="aini" href="javascript:;"><img
													alt="[aini]" class="lazyload"
													data-src="static/picture/aini.gif"/></a><a
													class="smilie-icon" data-smilie="OK" href="javascript:;"><img
													alt="[OK]" class="lazyload" data-src="static/picture/ok.gif"/></a><a
													class="smilie-icon" data-smilie="qiang" href="javascript:;"><img
													alt="[qiang]" class="lazyload" data-src="static/picture/qiang.gif"/></a><a
													class="smilie-icon" data-smilie="quantou" href="javascript:;"><img
													alt="[quantou]" class="lazyload"
													data-src="static/picture/quantou.gif"/></a><a
													class="smilie-icon" data-smilie="shengli" href="javascript:;"><img
													alt="[shengli]" class="lazyload"
													data-src="static/picture/shengli.gif"/></a><a
													class="smilie-icon" data-smilie="woshou" href="javascript:;"><img
													alt="[woshou]" class="lazyload"
													data-src="static/picture/woshou.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="gouyin"
											                                                     href="javascript:;"><img
													alt="[gouyin]"
													class="lazyload"
													data-src="static/picture/gouyin.gif"/></a><a
													class="smilie-icon" data-smilie="baoquan" href="javascript:;"><img
													alt="[baoquan]" class="lazyload"
													data-src="static/picture/baoquan.gif"/></a><a
													class="smilie-icon" data-smilie="aixin" href="javascript:;"><img
													alt="[aixin]" class="lazyload" data-src="static/picture/aixin.gif"/></a><a
													class="smilie-icon" data-smilie="bangbangtang"
													href="javascript:;"><img
													alt="[bangbangtang]" class="lazyload"
													data-src="static/picture/bangbangtang.gif"/></a><a
													class="smilie-icon"
													data-smilie="xiaoyanger"
													href="javascript:;"><img
													alt="[xiaoyanger]" class="lazyload"
													data-src="static/picture/xiaoyanger.gif"/></a><a class="smilie-icon"
											                                                         data-smilie="xigua"
											                                                         href="javascript:;"><img
													alt="[xigua]"
													class="lazyload"
													data-src="static/picture/xigua.gif"/></a><a
													class="smilie-icon" data-smilie="hexie" href="javascript:;"><img
													alt="[hexie]" class="lazyload" data-src="static/picture/hexie.gif"/></a><a
													class="smilie-icon" data-smilie="pijiu" href="javascript:;"><img
													alt="[pijiu]" class="lazyload" data-src="static/picture/pijiu.gif"/></a><a
													class="smilie-icon" data-smilie="lanqiu" href="javascript:;"><img
													alt="[lanqiu]" class="lazyload"
													data-src="static/picture/lanqiu.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="juhua"
											                                                     href="javascript:;"><img
													alt="[juhua]"
													class="lazyload"
													data-src="static/picture/juhua.gif"/></a><a
													class="smilie-icon" data-smilie="hecai" href="javascript:;"><img
													alt="[hecai]" class="lazyload" data-src="static/picture/hecai.gif"/></a><a
													class="smilie-icon" data-smilie="haobang" href="javascript:;"><img
													alt="[haobang]" class="lazyload"
													data-src="static/picture/haobang.gif"/></a><a
													class="smilie-icon" data-smilie="caidao" href="javascript:;"><img
													alt="[caidao]" class="lazyload"
													data-src="static/picture/caidao.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="baojin"
											                                                     href="javascript:;"><img
													alt="[baojin]"
													class="lazyload"
													data-src="static/picture/baojin.gif"/></a><a
													class="smilie-icon" data-smilie="chi" href="javascript:;"><img
													alt="[chi]" class="lazyload" data-src="static/picture/chi.gif"/></a><a
													class="smilie-icon" data-smilie="dan" href="javascript:;"><img
													alt="[dan]" class="lazyload" data-src="static/picture/dan.gif"/></a><a
													class="smilie-icon" data-smilie="kulou" href="javascript:;"><img
													alt="[kulou]" class="lazyload" data-src="static/picture/kulou.gif"/></a><a
													class="smilie-icon" data-smilie="shuai" href="javascript:;"><img
													alt="[shuai]" class="lazyload" data-src="static/picture/shuai.gif"/></a><a
													class="smilie-icon" data-smilie="shouqiang" href="javascript:;"><img
													alt="[shouqiang]" class="lazyload"
													data-src="static/picture/shouqiang.gif"/></a><a class="smilie-icon"
											                                                        data-smilie="yangtuo"
											                                                        href="javascript:;"><img
													alt="[yangtuo]"
													class="lazyload"
													data-src="static/picture/yangtuo.gif"/></a><a
													class="smilie-icon" data-smilie="youling" href="javascript:;"><img
													alt="[youling]" class="lazyload"
													data-src="static/picture/youling.gif"/></a></div></div></span>
												</div>
											</div>
										</div>
									</div>
								</form>
							</div>
						</c:when>
						
						<c:when test="${sessionScope['readercard']!=null}">
							<c:set value="${sessionScope['readercard']}" var="reader"/>
							<div class="flex ac jsb virtual-input " fixed-input="#respond">
								<div class="flex flex1 ac"><img alt="头像" class="lazyload avatar avatar-id-0"
								                                data-src="//www.clash-gaming.com/wp-content/themes/zibll%20V6.5/img/avatar-default.png"
								                                src="static/picture/avatar-default.png">
									<div class="text-ellipsis simulation mr10">欢迎您留言获取订阅地址！</div>
								</div>
								<span class="but c-blue">提交</span></div>
							<div class="mobile-fixed" id="respond">
								<div class="fixed-body"></div>
								<form id="commentform">
									<div class="flex ac">
										<div class="comt-title text-center flex0 mr10">
											<div class="comt-avatar mb10"><img alt="头像"
											                                   class="lazyload avatar avatar-id-0"
											                                   data-src="//www.clash-gaming.com/wp-content/themes/zibll%20V6.5/img/avatar-default.png"
											                                   src="static/picture/avatar-default.png">
											</div>
											<p class="" data-target="#comment-user-info" data-toggle="tooltip"
											   data-toggle-class="open"
											   title="${reader.username}">${reader.username}</p>
										</div>
										<div class="comt-box grow1">
											<div class="action-text mb10 em09 muted-2-color"></div>
											<textarea autoheight="true" class="form-control grin" cols="100%"
											          id="comment" maxheight="188" name="comment"
											          onkeydown="if(event.ctrlKey&amp;&amp;event.keyCode==13){document.getElementById('submit').click();return false};"
											          placeholder="欢迎您留言获取订阅地址！"
											          rows="4"
											          tabindex="1"></textarea>
											<div class="comt-ctrl relative">
												<div class="comt-tips">
													<input id='comment_post_ID' name='comment_post_ID' type='hidden'
													       value='${detailList.newBookId}'/>
													<input id='comment_parent' name='comment_parent' type='hidden'
													       value='0'/>
													<input id='author' name='author' type='hidden'
													       value='${reader.username}'/>
												</div>
												<div class="comt-tips-right pull-right">
													<a class="but c-red" href="javascript:;"
													   id="cancel-comment-reply-link">取消</a>
													<button class="but c-blue pw-1em" name="submit"
													        onclick="sendComment()"
													        type="button">
														提交评论
													</button>
												</div>
												<div class="comt-tips-left">
											<span
													class="dropup relative smilie"><a
													class="but btn-input-expand input-smilie mr6" href="javascript:;"><i
													class="fa fa-fw fa-smile-o"></i><span
													class="hide-sm">表情</span></a><div
													class="dropdown-menu"><div
													class="dropdown-smilie scroll-y mini-scrollbar"><a
													class="smilie-icon"
													data-smilie="aoman"
													href="javascript:;"><img
													alt="[aoman]" class="lazyload" data-src="static/picture/aoman.gif"/></a><a
													class="smilie-icon" data-smilie="baiyan" href="javascript:;"><img
													alt="[baiyan]" class="lazyload"
													data-src="static/picture/baiyan.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="bishi"
											                                                     href="javascript:;"><img
													alt="[bishi]"
													class="lazyload"
													data-src="static/picture/bishi.gif"/></a><a
													class="smilie-icon" data-smilie="bizui" href="javascript:;"><img
													alt="[bizui]" class="lazyload" data-src="static/picture/bizui.gif"/></a><a
													class="smilie-icon" data-smilie="cahan" href="javascript:;"><img
													alt="[cahan]" class="lazyload" data-src="static/picture/cahan.gif"/></a><a
													class="smilie-icon" data-smilie="ciya" href="javascript:;"><img
													alt="[ciya]" class="lazyload"
													data-src="static/picture/ciya.gif"/></a><a
													class="smilie-icon" data-smilie="dabing" href="javascript:;"><img
													alt="[dabing]" class="lazyload"
													data-src="static/picture/dabing.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="daku"
											                                                     href="javascript:;"><img
													alt="[daku]"
													class="lazyload"
													data-src="static/picture/daku.gif"/></a><a
													class="smilie-icon" data-smilie="deyi" href="javascript:;"><img
													alt="[deyi]" class="lazyload"
													data-src="static/picture/deyi.gif"/></a><a
													class="smilie-icon" data-smilie="doge" href="javascript:;"><img
													alt="[doge]" class="lazyload"
													data-src="static/picture/doge.gif"/></a><a
													class="smilie-icon" data-smilie="fadai" href="javascript:;"><img
													alt="[fadai]" class="lazyload" data-src="static/picture/fadai.gif"/></a><a
													class="smilie-icon" data-smilie="fanu" href="javascript:;"><img
													alt="[fanu]" class="lazyload"
													data-src="static/picture/fanu.gif"/></a><a
													class="smilie-icon" data-smilie="fendou" href="javascript:;"><img
													alt="[fendou]" class="lazyload"
													data-src="static/picture/fendou.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="ganga"
											                                                     href="javascript:;"><img
													alt="[ganga]"
													class="lazyload"
													data-src="static/picture/ganga.gif"/></a><a
													class="smilie-icon" data-smilie="guzhang" href="javascript:;"><img
													alt="[guzhang]" class="lazyload"
													data-src="static/picture/guzhang.gif"/></a><a
													class="smilie-icon" data-smilie="haixiu" href="javascript:;"><img
													alt="[haixiu]" class="lazyload"
													data-src="static/picture/haixiu.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="hanxiao"
											                                                     href="javascript:;"><img
													alt="[hanxiao]"
													class="lazyload"
													data-src="static/picture/hanxiao.gif"/></a><a
													class="smilie-icon" data-smilie="zuohengheng"
													href="javascript:;"><img
													alt="[zuohengheng]" class="lazyload"
													data-src="static/picture/zuohengheng.gif"/></a><a
													class="smilie-icon"
													data-smilie="zhuakuang"
													href="javascript:;"><img
													alt="[zhuakuang]" class="lazyload"
													data-src="static/picture/zhuakuang.gif"/></a><a class="smilie-icon"
											                                                        data-smilie="zhouma"
											                                                        href="javascript:;"><img
													alt="[zhouma]"
													class="lazyload"
													data-src="static/picture/zhouma.gif"/></a><a
													class="smilie-icon" data-smilie="zhemo" href="javascript:;"><img
													alt="[zhemo]" class="lazyload" data-src="static/picture/zhemo.gif"/></a><a
													class="smilie-icon" data-smilie="zhayanjian"
													href="javascript:;"><img
													alt="[zhayanjian]" class="lazyload"
													data-src="static/picture/zhayanjian.gif"/></a><a class="smilie-icon"
											                                                         data-smilie="zaijian"
											                                                         href="javascript:;"><img
													alt="[zaijian]"
													class="lazyload"
													data-src="static/picture/zaijian.gif"/></a><a
													class="smilie-icon" data-smilie="yun" href="javascript:;"><img
													alt="[yun]" class="lazyload" data-src="static/picture/yun.gif"/></a><a
													class="smilie-icon" data-smilie="youhengheng"
													href="javascript:;"><img
													alt="[youhengheng]" class="lazyload"
													data-src="static/picture/youhengheng.gif"/></a><a
													class="smilie-icon"
													data-smilie="yiwen"
													href="javascript:;"><img
													alt="[yiwen]"
													class="lazyload"
													data-src="static/picture/yiwen.gif"/></a><a
													class="smilie-icon" data-smilie="yinxian" href="javascript:;"><img
													alt="[yinxian]" class="lazyload"
													data-src="static/picture/yinxian.gif"/></a><a
													class="smilie-icon" data-smilie="xu" href="javascript:;"><img
													alt="[xu]" class="lazyload" data-src="static/picture/xu.gif"/></a><a
													class="smilie-icon" data-smilie="xieyanxiao"
													href="javascript:;"><img
													alt="[xieyanxiao]" class="lazyload"
													data-src="static/picture/xieyanxiao.gif"/></a><a class="smilie-icon"
											                                                         data-smilie="xiaoku"
											                                                         href="javascript:;"><img
													alt="[xiaoku]"
													class="lazyload"
													data-src="static/picture/xiaoku.gif"/></a><a
													class="smilie-icon" data-smilie="xiaojiujie"
													href="javascript:;"><img
													alt="[xiaojiujie]" class="lazyload"
													data-src="static/picture/xiaojiujie.gif"/></a><a class="smilie-icon"
											                                                         data-smilie="xia"
											                                                         href="javascript:;"><img
													alt="[xia]"
													class="lazyload"
													data-src="static/picture/xia.gif"/></a><a
													class="smilie-icon" data-smilie="wunai" href="javascript:;"><img
													alt="[wunai]" class="lazyload" data-src="static/picture/wunai.gif"/></a><a
													class="smilie-icon" data-smilie="wozuimei" href="javascript:;"><img
													alt="[wozuimei]" class="lazyload"
													data-src="static/picture/wozuimei.gif"/></a><a class="smilie-icon"
											                                                       data-smilie="weixiao"
											                                                       href="javascript:;"><img
													alt="[weixiao]"
													class="lazyload"
													data-src="static/picture/weixiao.gif"/></a><a
													class="smilie-icon" data-smilie="weiqu" href="javascript:;"><img
													alt="[weiqu]" class="lazyload" data-src="static/picture/weiqu.gif"/></a><a
													class="smilie-icon" data-smilie="tuosai" href="javascript:;"><img
													alt="[tuosai]" class="lazyload"
													data-src="static/picture/tuosai.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="tu"
											                                                     href="javascript:;"><img
													alt="[tu]"
													class="lazyload"
													data-src="static/picture/tu.gif"/></a><a
													class="smilie-icon" data-smilie="touxiao" href="javascript:;"><img
													alt="[touxiao]" class="lazyload"
													data-src="static/picture/touxiao.gif"/></a><a
													class="smilie-icon" data-smilie="tiaopi" href="javascript:;"><img
													alt="[tiaopi]" class="lazyload"
													data-src="static/picture/tiaopi.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="shui"
											                                                     href="javascript:;"><img
													alt="[shui]"
													class="lazyload"
													data-src="static/picture/shui.gif"/></a><a
													class="smilie-icon" data-smilie="se" href="javascript:;"><img
													alt="[se]" class="lazyload" data-src="static/picture/se.gif"/></a><a
													class="smilie-icon" data-smilie="saorao" href="javascript:;"><img
													alt="[saorao]" class="lazyload"
													data-src="static/picture/saorao.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="qiudale"
											                                                     href="javascript:;"><img
													alt="[qiudale]"
													class="lazyload"
													data-src="static/picture/qiudale.gif"/></a><a
													class="smilie-icon" data-smilie="se" href="javascript:;"><img
													alt="[se]" class="lazyload" data-src="static/picture/se.gif"/></a><a
													class="smilie-icon" data-smilie="qinqin" href="javascript:;"><img
													alt="[qinqin]" class="lazyload"
													data-src="static/picture/qinqin.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="qiaoda"
											                                                     href="javascript:;"><img
													alt="[qiaoda]"
													class="lazyload"
													data-src="static/picture/qiaoda.gif"/></a><a
													class="smilie-icon" data-smilie="piezui" href="javascript:;"><img
													alt="[piezui]" class="lazyload"
													data-src="static/picture/piezui.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="penxue"
											                                                     href="javascript:;"><img
													alt="[penxue]"
													class="lazyload"
													data-src="static/picture/penxue.gif"/></a><a
													class="smilie-icon" data-smilie="nanguo" href="javascript:;"><img
													alt="[nanguo]" class="lazyload"
													data-src="static/picture/nanguo.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="liulei"
											                                                     href="javascript:;"><img
													alt="[liulei]"
													class="lazyload"
													data-src="static/picture/liulei.gif"/></a><a
													class="smilie-icon" data-smilie="liuhan" href="javascript:;"><img
													alt="[liuhan]" class="lazyload"
													data-src="static/picture/liuhan.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="lenghan"
											                                                     href="javascript:;"><img
													alt="[lenghan]"
													class="lazyload"
													data-src="static/picture/lenghan.gif"/></a><a
													class="smilie-icon" data-smilie="leiben" href="javascript:;"><img
													alt="[leiben]" class="lazyload"
													data-src="static/picture/leiben.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="kun"
											                                                     href="javascript:;"><img
													alt="[kun]"
													class="lazyload"
													data-src="static/picture/kun.gif"/></a><a
													class="smilie-icon" data-smilie="kuaikule" href="javascript:;"><img
													alt="[kuaikule]" class="lazyload"
													data-src="static/picture/kuaikule.gif"/></a><a class="smilie-icon"
											                                                       data-smilie="ku"
											                                                       href="javascript:;"><img
													alt="[ku]"
													class="lazyload"
													data-src="static/picture/ku.gif"/></a><a
													class="smilie-icon" data-smilie="koubi" href="javascript:;"><img
													alt="[koubi]" class="lazyload" data-src="static/picture/koubi.gif"/></a><a
													class="smilie-icon" data-smilie="kelian" href="javascript:;"><img
													alt="[kelian]" class="lazyload"
													data-src="static/picture/kelian.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="keai"
											                                                     href="javascript:;"><img
													alt="[keai]"
													class="lazyload"
													data-src="static/picture/keai.gif"/></a><a
													class="smilie-icon" data-smilie="jingya" href="javascript:;"><img
													alt="[jingya]" class="lazyload"
													data-src="static/picture/jingya.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="jingxi"
											                                                     href="javascript:;"><img
													alt="[jingxi]"
													class="lazyload"
													data-src="static/picture/jingxi.gif"/></a><a
													class="smilie-icon" data-smilie="jingkong" href="javascript:;"><img
													alt="[jingkong]" class="lazyload"
													data-src="static/picture/jingkong.gif"/></a><a class="smilie-icon"
											                                                       data-smilie="jie"
											                                                       href="javascript:;"><img
													alt="[jie]"
													class="lazyload"
													data-src="static/picture/jie.gif"/></a><a
													class="smilie-icon" data-smilie="huaixiao" href="javascript:;"><img
													alt="[huaixiao]" class="lazyload"
													data-src="static/picture/huaixiao.gif"/></a><a class="smilie-icon"
											                                                       data-smilie="haqian"
											                                                       href="javascript:;"><img
													alt="[haqian]"
													class="lazyload"
													data-src="static/picture/haqian.gif"/></a><a
													class="smilie-icon" data-smilie="aini" href="javascript:;"><img
													alt="[aini]" class="lazyload"
													data-src="static/picture/aini.gif"/></a><a
													class="smilie-icon" data-smilie="OK" href="javascript:;"><img
													alt="[OK]" class="lazyload" data-src="static/picture/ok.gif"/></a><a
													class="smilie-icon" data-smilie="qiang" href="javascript:;"><img
													alt="[qiang]" class="lazyload" data-src="static/picture/qiang.gif"/></a><a
													class="smilie-icon" data-smilie="quantou" href="javascript:;"><img
													alt="[quantou]" class="lazyload"
													data-src="static/picture/quantou.gif"/></a><a
													class="smilie-icon" data-smilie="shengli" href="javascript:;"><img
													alt="[shengli]" class="lazyload"
													data-src="static/picture/shengli.gif"/></a><a
													class="smilie-icon" data-smilie="woshou" href="javascript:;"><img
													alt="[woshou]" class="lazyload"
													data-src="static/picture/woshou.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="gouyin"
											                                                     href="javascript:;"><img
													alt="[gouyin]"
													class="lazyload"
													data-src="static/picture/gouyin.gif"/></a><a
													class="smilie-icon" data-smilie="baoquan" href="javascript:;"><img
													alt="[baoquan]" class="lazyload"
													data-src="static/picture/baoquan.gif"/></a><a
													class="smilie-icon" data-smilie="aixin" href="javascript:;"><img
													alt="[aixin]" class="lazyload" data-src="static/picture/aixin.gif"/></a><a
													class="smilie-icon" data-smilie="bangbangtang"
													href="javascript:;"><img
													alt="[bangbangtang]" class="lazyload"
													data-src="static/picture/bangbangtang.gif"/></a><a
													class="smilie-icon"
													data-smilie="xiaoyanger"
													href="javascript:;"><img
													alt="[xiaoyanger]" class="lazyload"
													data-src="static/picture/xiaoyanger.gif"/></a><a class="smilie-icon"
											                                                         data-smilie="xigua"
											                                                         href="javascript:;"><img
													alt="[xigua]"
													class="lazyload"
													data-src="static/picture/xigua.gif"/></a><a
													class="smilie-icon" data-smilie="hexie" href="javascript:;"><img
													alt="[hexie]" class="lazyload" data-src="static/picture/hexie.gif"/></a><a
													class="smilie-icon" data-smilie="pijiu" href="javascript:;"><img
													alt="[pijiu]" class="lazyload" data-src="static/picture/pijiu.gif"/></a><a
													class="smilie-icon" data-smilie="lanqiu" href="javascript:;"><img
													alt="[lanqiu]" class="lazyload"
													data-src="static/picture/lanqiu.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="juhua"
											                                                     href="javascript:;"><img
													alt="[juhua]"
													class="lazyload"
													data-src="static/picture/juhua.gif"/></a><a
													class="smilie-icon" data-smilie="hecai" href="javascript:;"><img
													alt="[hecai]" class="lazyload" data-src="static/picture/hecai.gif"/></a><a
													class="smilie-icon" data-smilie="haobang" href="javascript:;"><img
													alt="[haobang]" class="lazyload"
													data-src="static/picture/haobang.gif"/></a><a
													class="smilie-icon" data-smilie="caidao" href="javascript:;"><img
													alt="[caidao]" class="lazyload"
													data-src="static/picture/caidao.gif"/></a><a class="smilie-icon"
											                                                     data-smilie="baojin"
											                                                     href="javascript:;"><img
													alt="[baojin]"
													class="lazyload"
													data-src="static/picture/baojin.gif"/></a><a
													class="smilie-icon" data-smilie="chi" href="javascript:;"><img
													alt="[chi]" class="lazyload" data-src="static/picture/chi.gif"/></a><a
													class="smilie-icon" data-smilie="dan" href="javascript:;"><img
													alt="[dan]" class="lazyload" data-src="static/picture/dan.gif"/></a><a
													class="smilie-icon" data-smilie="kulou" href="javascript:;"><img
													alt="[kulou]" class="lazyload" data-src="static/picture/kulou.gif"/></a><a
													class="smilie-icon" data-smilie="shuai" href="javascript:;"><img
													alt="[shuai]" class="lazyload" data-src="static/picture/shuai.gif"/></a><a
													class="smilie-icon" data-smilie="shouqiang" href="javascript:;"><img
													alt="[shouqiang]" class="lazyload"
													data-src="static/picture/shouqiang.gif"/></a><a class="smilie-icon"
											                                                        data-smilie="yangtuo"
											                                                        href="javascript:;"><img
													alt="[yangtuo]"
													class="lazyload"
													data-src="static/picture/yangtuo.gif"/></a><a
													class="smilie-icon" data-smilie="youling" href="javascript:;"><img
													alt="[youling]" class="lazyload"
													data-src="static/picture/youling.gif"/></a></div></div></span>
												</div>
											</div>
										</div>
									</div>
								</form>
							</div>
						</c:when>
					</c:choose>
					
					
					<div id="postcomments">
						<div class="comment-filter tab-nav-theme flex ac jsb" win-ajax-replace="comment-order-btn">
							<ul class="list-inline comment-order-box" style="padding:0;">
								<li class="mr6 active"><a class="comment-orderby"
								                          href="https://www.clash-gaming.com/3013.html?corderby=comment_date_gmt">最新</a>
								</li>
								<li class=""><a class="comment-orderby"
								                href="https://www.clash-gaming.com/3013.html?corderby=comment_like">最热</a>
								</li>
							</ul>
							<a class="but comment-orderby btn-only-author p2-10"
							   href="https://www.clash-gaming.com/3013.html?only_author=2">只看作者</a></div>
						<ol class="commentlist list-unstyled" id="comments_area">
							<c:if test="${bookComments!=null and bookComments.size()>0}">
								<c:forEach items="${bookComments}" var="comment">
									${comment.html}
								</c:forEach>
							</c:if>
							<div class="post_ajax_loader" style="display:none;">
								<ul class="list-inline flex">
									<div class="avatar-img placeholder radius"></div>
									<li class="flex1">
										<div class="placeholder s1 mb6" style="width: 30%;"></div>
										<div class="placeholder k2 mb10"></div>
										<i class="placeholder s1 mb6"></i><i class="placeholder s1 mb6 ml10"></i></li>
								</ul>
								<ul class="list-inline flex">
									<div class="avatar-img placeholder radius"></div>
									<li class="flex1">
										<div class="placeholder s1 mb6" style="width: 30%;"></div>
										<div class="placeholder k2 mb10"></div>
										<i class="placeholder s1 mb6"></i><i class="placeholder s1 mb6 ml10"></i></li>
								</ul>
								<ul class="list-inline flex">
									<div class="avatar-img placeholder radius"></div>
									<li class="flex1">
										<div class="placeholder s1 mb6" style="width: 30%;"></div>
										<div class="placeholder k2 mb10"></div>
										<i class="placeholder s1 mb6"></i><i class="placeholder s1 mb6 ml10"></i></li>
								</ul>
								<ul class="list-inline flex">
									<div class="avatar-img placeholder radius"></div>
									<li class="flex1">
										<div class="placeholder s1 mb6" style="width: 30%;"></div>
										<div class="placeholder k2 mb10"></div>
										<i class="placeholder s1 mb6"></i><i class="placeholder s1 mb6 ml10"></i></li>
								</ul>
							</div>
						</ol>
					</div>
				</div>
			</div>
		</div>
		
		<!-------------相关图书（可根据690分类号字段获取，取最新上架的5本书）---------------->
		<c:set value="${detailList.relatedBooks}" var="relatedBooks"/>
		<c:if test="${relatedBooks!=null&&relatedBooks.size()>0}">
			<div id="xxtb-content-right">
				<div class="browse-book-title">相关图书</div>
				<div id="hot-books">
					<ul>
						<c:forEach items="${relatedBooks}" var="relatedBook">
							<li>
								<div class="hot-book-image">
									<a href="<c:url  value="/xxtbcountclick?jmptype=${relatedBook.classId}&newbookid=${relatedBook.newBookId}"/>"><img
											src="<c:url value="${relatedBook.coverImg}"/>" title="${relatedBook.title}"
											alt="${relatedBook.title}"></a>
									<div class="book-intro">
										<div class="book-title"><a
												href="<c:url  value="/xxtbcountclick?jmptype=${relatedBook.classId}&newbookid=${relatedBook.newBookId}"/>">${relatedBook.title}</a>
										</div>
										<div class="book-author">${relatedBook.author} 主编</div>
										<div class="book-publisher">${relatedBook.publishYear}</div>
									</div>
								</div>
							</li>
						</c:forEach>
						<!-------每页显示5本书，以下重复4遍------->
					</ul>
				</div>
			</div>
		</c:if>
		<div class="clear"></div>
	</div>
</div>

<!---------底部：LOGO、分享、导航栏展开------------>
<!--<div id="xxtb-bottom">
	<div class="content-wrapper">
		<div id="xxtb-bottom-top">
			<div id="xxtb-bottom-logo"><a href="http://newbooks.lib.pku.edu.cn"  ><img src="/static/picture/banner-logo.png"></a></div>
			版权所有   北京大学图书馆©2017-2019
		</div>
		
	</div>
</div>-->
<script type="text/javascript">
    function sendComment() {
        $.ajax({
            type: "POST",
            url: "/comment/book",
            data: JSON.stringify({
                comment_post_ID: $("#comment_post_ID").val(),
                author: $("#author").val(),
                comment: $("#comment").val()
            }),
            dataType: "JSON",

            contentType: "application/json",
            success: function ({error, html}) {
                console.log(!!error, error, html)
                if (!!error && error === 1) {
                    $("#comment")[0].value = ""
                    $("#comments_area").prepend(html)
                }
            }
        })
    }

</script>

<script async id='crisp-js' src='/static/js/l.js' type='text/javascript'></script>
<script id='bootstrap-js' src='/static/js/bootstrap.min.js' type='text/javascript'></script>
<script id='_loader-js' src='/static/js/loader.js' type='text/javascript'></script>
<!--FOOTER_CODE_START-->
<script async data-website-id="3b09fa9c-69a7-4f1f-bde0-f8e512f7ef34" src="/static/js/script.js"></script>
<script>
    <c:if test="${msg!=null}">
    window.onload = () => {
        var alertHtml = '<div class="alert alert-success alert-fixed-top" role="alert">${msg}！</div>';
        $(alertHtml).appendTo('body');
        var alertBox = $('.alert-fixed-top');
        alertBox.animate({top: '50px'}, 200, 'swing')
            .delay(5000)
            .animate({top: '-100px', opacity: 0}, 500, 'linear', function () {
                $(this).remove();
                $("style").remove();
            });
    }
    </c:if>
    console.log("数据库查询：92次 | 页面生成耗时：3358.386ms");
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?2e4e4ad9369812e47f6230a823376a33";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
</body>
</html>