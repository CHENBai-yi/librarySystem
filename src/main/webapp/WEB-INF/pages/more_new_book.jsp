<%@ page import="cn.hutool.core.date.DateUtil" %>
<%@ page import="com.bai.utils.constants.Constants" %>
<%@ page import="com.bai.utils.CharUtils" %>
<%@ page import="com.sun.tools.classfile.ConstantPool" %>
<%@ page contentType="text/html;charset=utf-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- InstanceBegin template="/Templates/ejymfw.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
	<title>新书通报</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
	<link href="/static/css/xxtb.css" rel="stylesheet" type="text/css"/>
	<link href="/static/css/xxtb-new-new.css" rel="stylesheet" type="text/css"/>
	<link href="/static/css/style.css" rel="stylesheet" type="text/css"/>
	<script src="/static/js/jquery.js" type="text/javascript"></script>
	<script src="/static/js/jquery.superslide2.js" type="text/javascript"></script>
	<!-- 引入Bootstrap 5的JavaScript文件 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
	<style type="text/css">
        .my-modal-content {
            border: none;
            background-color: initial;
        }

        body {
            overflow: auto !important;
            padding-right: 0 !important;
        }
	</style>
</head>


<body>
<!---------头部：LOGO、导航栏菜单------------>
<div id="xxtb-banner">
	<div class="content-wrapper">
		<!--		<div id="xxtb-banner-logo"><a href="http://newbooks.lib.pku.edu.cn/"  ><img src="/static/picture/banner-logo.png"></a></div>-->
		<div id="xxtb-banner-menu">
			<a href="http://newbooks.lib.pku.edu.cn/"><span class="menu-selected">新书通报</span></a>
			<a href="http://newbooks.lib.pku.edu.cn/bookclickorder.jsp"><span class="menu">热门浏览</span></a>
			<a href="/index" target="_blank"><span class="menu">图书馆首页</span></a>
		
		</div>
	</div>
</div>
<!---------上半部：搜索框、新书驾到------------>
<div id="xxtb-top">
	<div class="content-wrapper">
		<div id="xxtb-xinshujiadao-title"><img src="/static/picture/newinlib.png"></div>
		<div id="xxtb-search-form">
			<form action="<%=Constants.AccessPageUrl.MORE_NEW_BOOK%>" id="form3" method="post" name="form3">
				<label for="textfield"></label>
				<input id="searchtxt" name="searchtxt" size="60" type="text" value="${bookQuery.searchtxt}"/>
				<label for="select"></label>
				<select id="searchfield" name="searchfield" size="1">
					<option value="1" <c:if test="${bookQuery.searchfield eq '1'}">selected="selected"</c:if>>书名
					</option>
					<option value="2" <c:if test="${bookQuery.searchfield eq '2'}">selected="selected"</c:if>>著者
					</option>
					<option value="3" <c:if test="${bookQuery.searchfield eq '3'}">selected="selected"</c:if>>ISBN
					</option>
					<option value="4" <c:if test="${bookQuery.searchfield eq '4'}">selected="selected"</c:if>>出版社
					</option>
				</select>
				<input id="button" name="button" type="submit" value="&nbsp"/>
			</form>
		</div>
		<!--
                <div id="xxtb-xinshujiadao">
                           <div class="mr_frbox">
                        <img class="mr_frBtnL prev" src="/static/picture/arrow_l.png" width="28" height="46" />
        <div class="mr_frUl">
                    <ul>
                  <%--  <!-------------殷老师需要在这里取出4张有封面的书，同时还要能翻页，通过左右箭头翻页 ->--%>

                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787300132235&newbookid=433331" ><img class="book-image" src="/static/picture/97873001322351930509-fm.jpg!cckb_b" width="123" height="100" title="契约经济学 : 理论和应用 / (法) 埃里克·布鲁索, 让·米歇尔·格拉尚编 = The economics of contracts : theories and applications / Eric Brousseau, Jean Michel Glachant ; 王秋石, 李国民, 李胜兰等译校" alt="契约经济学 : 理论和应用 / (法) 埃里克·布鲁索, 让·米歇尔·格拉尚编 = The economics of contracts : theories and applications / Eric Brousseau, Jean Michel Glachant ; 王秋石, 李国民, 李胜兰等译校"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787220124143&newbookid=433431" ><img class="book-image" src="/static/picture/5594705-fm.jpg!cckb_b" width="123" height="100" title="清末民初的思想与人物 / 杨琥著" alt="清末民初的思想与人物 / 杨琥著"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787222174979&newbookid=433362" ><img class="book-image" src="/static/picture/4540437-fm.jpg!cckb_b" width="123" height="100" title="白国因由 = Legends of the creation of Bai kingdom / 汉译 (清) 寂裕 ; 英译李昌银, 李秦松" alt="白国因由 = Legends of the creation of Bai kingdom / 汉译 (清) 寂裕 ; 英译李昌银, 李秦松"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787222174993&newbookid=433353" ><img class="book-image" src="/static/picture/4540440-fm.jpg!cckb_b" width="123" height="100" title="古歌 = Old folk songs of the Dai & the Naxi / 搜集整理周良沛 ; 英译陈金金" alt="古歌 = Old folk songs of the Dai & the Naxi / 搜集整理周良沛 ; 英译陈金金"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787222190719&newbookid=433374" ><img class="book-image" src="/static/picture/5024449-fm.jpg!cckb_b" width="123" height="100" title="牡帕密帕 = Mupamipa / 搜集昆明师范学院中文系一九五七级部分学生 ; 整理刘辉豪 ; 英译李昌银" alt="牡帕密帕 = Mupamipa / 搜集昆明师范学院中文系一九五七级部分学生 ; 整理刘辉豪 ; 英译李昌银"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787520538862&newbookid=433386" ><img class="book-image" src="/static/picture/5910623-fm.jpg!cckb_b" width="123" height="100" title="每日一诗 / 谭五昌主编" alt="每日一诗 / 谭五昌主编"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787509757383&newbookid=433368" ><img class="book-image" src="/static/picture/2860344-fm.jpg!cckb_b" width="123" height="100" title="经典的诞生 : 叙事话语、文本发现及田野调查 = The birth of classic : narrative discourse, text discovering, and field study / 裴春芳著" alt="经典的诞生 : 叙事话语、文本发现及田野调查 = The birth of classic : narrative discourse, text discovering, and field study / 裴春芳著"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787225053875&newbookid=433322" ><img class="book-image" src="/static/picture/3982515-fm.jpg!cckb_b" width="123" height="100" title="中国新诗排行榜 / 谭五昌主编" alt="中国新诗排行榜 / 谭五昌主编"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787520204781&newbookid=433357" ><img class="book-image" src="/static/picture/4538983-fm.jpg!cckb_b" width="123" height="100" title="谦卑 / 陈越光, (法) 米歇尔·冉刻著 ; (法) 金丝燕译" alt="谦卑 / 陈越光, (法) 米歇尔·冉刻著 ; (法) 金丝燕译"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787100175951&newbookid=433364" ><img class="book-image" src="/static/picture/4688332-fm.jpg!cckb_b" width="123" height="100" title="德语应用语法 / 姚保琮, 佟秀英编著" alt="德语应用语法 / 姚保琮, 佟秀英编著"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787301137109&newbookid=433328" ><img class="book-image" src="/static/picture/97873011371091378150-fm.jpg!cckb_b" width="123" height="100" title="20世纪以来中国的图书馆事业 / 张树华, 张久珍编著" alt="20世纪以来中国的图书馆事业 / 张树华, 张久珍编著"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787540263638&newbookid=433428" ><img class="book-image" src="/static/picture/4946084-fm.jpg!cckb_b" width="123" height="100" title="契丹文字辨偽錄 / 劉鳳翥, 張少珊, 李春敏著" alt="契丹文字辨偽錄 / 劉鳳翥, 張少珊, 李春敏著"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787301323571&newbookid=433384" ><img class="book-image" src="/static/picture/5539008-fm.jpg!cckb_b" width="123" height="100" title="北京大学志 / 王学珍主编" alt="北京大学志 / 王学珍主编"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787500871576&newbookid=433379" ><img class="book-image" src="/static/picture/5150267-fm.jpg!cckb_b" width="123" height="100" title="技术史 = A history of technology / 主编查尔斯·辛格 ... [等] ; 主译高亮华 ... [等]" alt="技术史 = A history of technology / 主编查尔斯·辛格 ... [等] ; 主译高亮华 ... [等]"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787504379375&newbookid=433346" ><img class="book-image" src="/static/picture/3966201-fm.jpg!cckb_b" width="123" height="100" title="中国网络视频史 = Online video / 陆地, 靳戈著" alt="中国网络视频史 = Online video / 陆地, 靳戈著"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787504685988&newbookid=433556" ><img class="book-image" src="/static/picture/5074425-fm.jpg!cckb_b" width="123" height="100" title="知识对话录 / 作者保罗·费耶阿本德 = Three dialogues on knowledge / Paul Feyerabend ; 郭元林, 韩永进译 校" alt="知识对话录 / 作者保罗·费耶阿本德 = Three dialogues on knowledge / Paul Feyerabend ; 郭元林, 韩永进译 校"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787504680990&newbookid=433542" ><img class="book-image" src="/static/picture/4425488-fm.jpg!cckb_b" width="123" height="100" title="科学的专横 / (美) 保罗·费耶阿本德著 ; (德) 埃里克·奥博海姆编 = The tyranny of science / Paul Feyerabend ; Eric Oberheim ; 郭元林译" alt="科学的专横 / (美) 保罗·费耶阿本德著 ; (德) 埃里克·奥博海姆编 = The tyranny of science / Paul Feyerabend ; Eric Oberheim ; 郭元林译"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787532653256&newbookid=433380" ><img class="book-image" src="/static/picture/4617280-fm.jpg!cckb_b" width="123" height="100" title="辞海 : 彩图本 / 陈至立主编" alt="辞海 : 彩图本 / 陈至立主编"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787030727602&newbookid=433445" ><img class="book-image" src="/static/picture/5850010-fm.jpg!cckb_b" width="123" height="100" title="中原地区晚更新世古人类文化发展研究 / 王幼平 ... [等] 著" alt="中原地区晚更新世古人类文化发展研究 / 王幼平 ... [等] 著"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787305254284&newbookid=433446" ><img class="book-image" src="/static/picture/5823888-fm.jpg!cckb_b" width="123" height="100" title="南京大学民国文献珍本图录 / 南京大学图书馆编 ; 程章灿, 史梅主编" alt="南京大学民国文献珍本图录 / 南京大学图书馆编 ; 程章灿, 史梅主编"></a>
                        </li>


                    </ul>
        </div>
        <img class="mr_frBtnR next" src="/static/picture/arrow_r.png" width="28" height="46" />


                         </div>
                </div>
        <script type="text/javascript">
        $(".mr_frbox").slide({
            titCell:"",
            mainCell:".mr_frUl ul",
            autoPage:true,
            effect:"leftLoop",
            autoPlay:true,
            vis:4
        });
        </script>
        -->
	
	</div>
</div>
<!---------内容：分类浏览、热门浏览排行榜------------>
<div id="xxtb-content">
	<div class="content-wrapper">
		<c:if test="${moreNewBookIndexVo==null}">
			<a name="config"></a>
			<div class="browse-book-title">暂无分类信息</div>
		</c:if>
		<c:if test="${moreNewBookIndexVo!=null}">
			<!-------------分类浏览---------------->
			<a name="config"></a>
			<div class="browse-book-title">分类浏览</div>
			<c:if test="${moreNewBookIndexVo.date!=null&&moreNewBookIndexVo.date.size()>0}">
				<div id="browse-by-month">
					<div class="select-label">按月浏览</div>
					<c:forEach items="${moreNewBookIndexVo.date}" varStatus="s" var="categoryByDate">
						<c:set var="date" value="${categoryByDate.y}"/>
						<c:set var="monthList" value="${categoryByDate.month}"/>
						<ul>
							<c:if test="${s.first}">
								<li class=" focus ">
									<a href="<%=Constants.AccessPageUrl.MORE_NEW_BOOK%>?
                                    searchlibrary=${bookQuery.searchlibrary}&collectyear=&collectmonth=&language=${bookQuery.language}&classno=${bookQuery.classno}&multiclassno=${bookQuery.multiclassno}&listflag=${bookQuery.listflag}&alllocflag=${bookQuery.alllocflag}#config">所有</a>
								</li>
							</c:if>
							<c:if test="${!s.first}">
								<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
							</c:if>
							<li>${date}</li>
							<c:forEach items="${monthList}" var="month">
								<li
										<c:if test="${date eq bookQuery.collectyear && month eq bookQuery.collectmonth}">class=" focus " </c:if>>
									<fmt:parseNumber value="${month}" type="number" var="month_num"/>
									<a href="<%=Constants.AccessPageUrl.MORE_NEW_BOOK%>?selectlocation=&collectyear=${date}&collectmonth=${month}&language=${bookQuery.language}&listflag=${bookQuery.listflag}&classno=${bookQuery.classno}&multiclassno=${bookQuery.multiclassno}&alllocflag=${bookQuery.alllocflag}#config">
											${month_num+="月"}
									</a>
								</li>
							</c:forEach>
						</ul>
					</c:forEach>
				</div>
			</c:if>
			<div id="browse-by-location">
				<!--	<div class="select-label">按图书馆浏览</div>
	
							<ul>
							<li  style="float:none;"><a href="index.jsp?collectyear=2023&collectmonth=05&language=0&classno=&multiclassno=0&listflag=1&alllocflag=1#config">所有</a></li>
	
								<li  class="focus" ><a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=&multiclassno=0&listflag=1#config">北大中心馆</a></li>
	
								<li ><a href="index.jsp?searchlibrary=沙特分馆&collectyear=2023&collectmonth=05&language=0&classno=&multiclassno=0&listflag=1#config">沙特分馆</a></li>
	
								<li ><a href="index.jsp?searchlibrary=中古史中心&collectyear=2023&collectmonth=05&language=0&classno=&multiclassno=0&listflag=1#config">中古史中心</a></li>
	
								<li ><a href="index.jsp?searchlibrary=中文系&collectyear=2023&collectmonth=05&language=0&classno=&multiclassno=0&listflag=1#config">中文系</a></li>
	
								<li ><a href="index.jsp?searchlibrary=历史学系&collectyear=2023&collectmonth=05&language=0&classno=&multiclassno=0&listflag=1#config">历史学系</a></li>
	
								<li ><a href="index.jsp?searchlibrary=哲学系&collectyear=2023&collectmonth=05&language=0&classno=&multiclassno=0&listflag=1#config">哲学系</a></li>
	
								<li ><a href="index.jsp?searchlibrary=外哲所&collectyear=2023&collectmonth=05&language=0&classno=&multiclassno=0&listflag=1#config">外哲所</a></li>
	
								<li ><a href="index.jsp?searchlibrary=新闻传播学院&collectyear=2023&collectmonth=05&language=0&classno=&multiclassno=0&listflag=1#config">新闻传播学院</a></li>
	
								<li ><a href="index.jsp?searchlibrary=社会学系&collectyear=2023&collectmonth=05&language=0&classno=&multiclassno=0&listflag=1#config">社会学系</a></li>
	
								<li ><a href="index.jsp?searchlibrary=考古文博学院&collectyear=2023&collectmonth=05&language=0&classno=&multiclassno=0&listflag=1#config">考古文博学院</a></li>
	
								<li ><a href="index.jsp?searchlibrary=汉学图书馆&collectyear=2023&collectmonth=05&language=0&classno=&multiclassno=0&listflag=1#config">汉学图书馆</a></li>
	
	
							</ul>-->
				
				
				<div class="clear"></div>
			</div>
			<c:if test="${moreNewBookIndexVo.subjects!=null&&moreNewBookIndexVo.subjects.size()>0}">
				<div id="browse-by-subject">
					<div class="select-label">按学科浏览</div>
					<ul>
						<c:set value="${moreNewBookIndexVo.subjects}" var="subjects"/>
						<li class="focus"><a
								href="<%=Constants.AccessPageUrl.MORE_NEW_BOOK%>?searchlibrary=${bookQuery.searchlibrary}&collectyear=${bookQuery.collectyear}&collectmonth=${bookQuery.collectmonth}&language=${bookQuery.language}&classno=${bookQuery.classno}&multiclassno=&listflag=${bookQuery.listflag}&alllocflag=${bookQuery.alllocflag}#config">所有</a>
						</li>
						<c:forEach items="${subjects}" var="subject">
							
							<li <c:if test="${subject.id eq bookQuery.multiclassno}">class="focus"</c:if>>
								<a href="<%=Constants.AccessPageUrl.MORE_NEW_BOOK%>?searchlibrary=${bookQuery.searchlibrary}&collectyear=${bookQuery.collectyear}&collectmonth=${bookQuery.collectmonth}&language=${bookQuery.language}&classno=${bookQuery.classno}&multiclassno=${subject.id}&listflag=${bookQuery.listflag}&alllocflag=${bookQuery.alllocflag}#config">${subject.subject}</a>
							</li>
						
						</c:forEach>
					</ul>
				</div>
			</c:if>
			<c:if test="${moreNewBookIndexVo.callNumber!=null&&moreNewBookIndexVo.callNumber.size()>0}">
				
				<div id="browse-by-callno">
					<div class="select-label">按索书号浏览</div>
					<c:set value="<%=new CharUtils()%>" var="charUtils"/>
					<ul>
						<li class="focus" style="float:none;">
							<a
									href="<%=Constants.AccessPageUrl.MORE_NEW_BOOK%>?searchlibrary=${bookQuery.searchlibrary}&collectyear=${bookQuery.collectyear}&collectmonth=${bookQuery.collectmonth}&language=${bookQuery.language}&classno=&multiclassno=${bookQuery.multiclassno}&listflag=${bookQuery.listflag}&alllocflag=${bookQuery.alllocflag}#config">所有
							</a>
						</li>
						<c:set value="${moreNewBookIndexVo.callNumber}" var="callNumberList"/>
						<c:forEach items="${callNumberList}" varStatus="s" var="callNumber">
							<c:set var="classNo" value="${charUtils.toCharacter(callNumber.id)}"/>
							
							<li <c:if test="${classNo eq bookQuery.classno}">class="focus" </c:if>>
								<a href="<%=Constants.AccessPageUrl.MORE_NEW_BOOK%>?searchlibrary=${bookQuery.searchlibrary}&collectyear=${bookQuery.collectyear}&collectmonth=${bookQuery.collectmonth}&language=${bookQuery.language}&classno=${classNo}&multiclassno=${bookQuery.multiclassno}&listflag=${bookQuery.listflag}&alllocflag=${bookQuery.alllocflag}#config"
								   title="${callNumber.name}">${classNo+=" ".concat(callNumber.name)}</a>
							</li>
						
						</c:forEach>
					</ul>
					<div class="clear"></div>
				</div>
			</c:if>
			<c:if test="${moreNewBookIndexVo.language!=null&&moreNewBookIndexVo.language.size()>0}">
				<div id="browse-by-language">
					<div class="select-label">按语种浏览</div>
					<ul>
						<li class="focus"><a
								href="<%=Constants.AccessPageUrl.MORE_NEW_BOOK%>?searchlibrary=${bookQuery.searchlibrary}&collectyear=${bookQuery.collectyear}&collectmonth=${bookQuery.collectmonth}&language=&classno=${bookQuery.classno}&multiclassno=${bookQuery.multiclassno}&listflag=${bookQuery.listflag}&alllocflag=${bookQuery.alllocflag}#config">所有</a>
						</li>
						<c:forEach items="${moreNewBookIndexVo.language}" var="language">
							
							<li <c:if test="${language eq bookQuery.language}">class="focus" </c:if>>
								<a href="<%=Constants.AccessPageUrl.MORE_NEW_BOOK%>?searchlibrary=${bookQuery.searchlibrary}&collectyear=${bookQuery.collectyear}&collectmonth=${bookQuery.collectmonth}&language=${language}&classno=${bookQuery.classno}&multiclassno=${bookQuery.multiclassno}&listflag=${bookQuery.listflag}&alllocflag=${bookQuery.alllocflag}#config">${language}</a>
							</li>
						
						</c:forEach>
					</ul>
				</div>
			</c:if>
			
			<div id="browse-type">
            <span class="focus"><a
		            href="<%=Constants.AccessPageUrl.MORE_NEW_BOOK%>?searchlibrary=${bookQuery.searchlibrary}&collectyear=${bookQuery.collectyear}&collectmonth=${bookQuery.collectmonth}&language=${bookQuery.language}&classno=${bookQuery.classno}&multiclassno=${bookQuery.multiclassno}&listflag=1&alllocflag=${bookQuery.alllocflag}#config">图文式</a></span>&nbsp;/&nbsp;
				<span><a
						href="<%=Constants.AccessPageUrl.MORE_NEW_BOOK%>?searchlibrary=${bookQuery.searchlibrary}&collectyear=${bookQuery.collectyear}&collectmonth=${bookQuery.collectmonth}&language=${bookQuery.language}&classno=${bookQuery.classno}&multiclassno=${bookQuery.multiclassno}&listflag=2&alllocflag=${bookQuery.alllocflag}#config">列表式</a></span>
			</div>
			<a name="brow"></a>
			<div id="browse-order">
				排序方式：
				<span class="order-option">
                    <a href="<%=Constants.AccessPageUrl.MORE_NEW_BOOK%>?orderid=1&classno=${bookQuery.classno}&searchtxt=${bookQuery.searchtxt}&searchfield=${bookQuery.searchfield}&searchlibrary=${bookQuery.searchlibrary}&collectyear=${bookQuery.collectyear}&collectmonth=${bookQuery.collectmonth}&language=${bookQuery.language}&multiclassno=${bookQuery.multiclassno}&listflag=${bookQuery.listflag}&alllocflag=${bookQuery.alllocflag}#brow">
                            <font <c:if
		                            test="${bookQuery.orderid==null||bookQuery.orderid eq 1 }"> style="color:#e26b2f;font-weight:bold;"</c:if>>
                            上架时间
                            </font>

                    </a>
				</span> |
				<span class="order-option">
                    <a href="<%=Constants.AccessPageUrl.MORE_NEW_BOOK%>?orderid=2&classno=${bookQuery.classno}&searchtxt=${bookQuery.searchtxt}&searchfield=${bookQuery.searchfield}&searchlibrary=${bookQuery.searchlibrary}&collectyear=${bookQuery.collectyear}&collectmonth=${bookQuery.collectmonth}&language=${bookQuery.language}&multiclassno=${bookQuery.multiclassno}&listflag=${bookQuery.listflag}&alllocflag=${bookQuery.alllocflag}&callnorderid=0#brow">
                         <font <c:if
		                         test="${bookQuery.orderid eq 2 }"> style="color:#e26b2f;font-weight:bold;"</c:if>>索书号</font>
	                        <span name="sort-callno"
			                        <c:choose>
				                        <c:when test="${bookQuery.orderid eq 2 && bookQuery.callnorderid eq 0}">
					                        class="icon icon_n icon_t active"
				                        </c:when>
				                        <c:when test="${bookQuery.orderid eq 2 && bookQuery.callnorderid eq 1}">
					                        class="icon icon_n icon_b active"
				                        </c:when>
				                        <c:otherwise>
					                        class="icon icon_n"
				                        </c:otherwise>
			                        </c:choose>>
	                        </span>
                    </a>
					<span style="display: inline-block;width: 0">
						 <a style="position: relative;left: -12px;top: 30px;opacity: 0;"
						    href="<%=Constants.AccessPageUrl.MORE_NEW_BOOK%>?orderid=2&classno=${bookQuery.classno}&searchtxt=${bookQuery.searchtxt}&searchfield=${bookQuery.searchfield}&searchlibrary=${bookQuery.searchlibrary}&collectyear=${bookQuery.collectyear}&collectmonth=${bookQuery.collectmonth}&language=${bookQuery.language}&multiclassno=${bookQuery.multiclassno}&listflag=${bookQuery.listflag}&alllocflag=${bookQuery.alllocflag}&callnorderid=0#brow"> 0</a>
		                        <a style="position: relative;left: -12px;top: 8px;opacity: 0"
		                           href="<%=Constants.AccessPageUrl.MORE_NEW_BOOK%>?orderid=2&classno=${bookQuery.classno}&searchtxt=${bookQuery.searchtxt}&searchfield=${bookQuery.searchfield}&searchlibrary=${bookQuery.searchlibrary}&collectyear=${bookQuery.collectyear}&collectmonth=${bookQuery.collectmonth}&language=${bookQuery.language}&multiclassno=${bookQuery.multiclassno}&listflag=${bookQuery.listflag}&alllocflag=${bookQuery.alllocflag}&callnorderid=1#brow"> 1</a>
					</span>

				</span> | <span class="order-option"><a
					href="<%=Constants.AccessPageUrl.MORE_NEW_BOOK%>?orderid=3&classno=${bookQuery.classno}&searchtxt=${bookQuery.searchtxt}&searchfield=${bookQuery.searchfield}&searchlibrary=${bookQuery.searchlibrary}&collectyear=${bookQuery.collectyear}&collectmonth=${bookQuery.collectmonth}&language=${bookQuery.language}&multiclassno=${bookQuery.multiclassno}&listflag=${bookQuery.listflag}&alllocflag=${bookQuery.alllocflag}#brow">
                <font
		                <c:if
				                test="${bookQuery.orderid eq 3 }"> style="color:#e26b2f;font-weight:bold;"</c:if>
                >题名</font>
            </a>
				</span> | <span class="order-option"><a
					href="<%=Constants.AccessPageUrl.MORE_NEW_BOOK%>?orderid=4&classno=${bookQuery.classno}&searchtxt=${bookQuery.searchtxt}&searchfield=${bookQuery.searchfield}&searchlibrary=${bookQuery.searchlibrary}&collectyear=${bookQuery.collectyear}&collectmonth=${bookQuery.collectmonth}&language=${bookQuery.language}&multiclassno=${bookQuery.multiclassno}&listflag=${bookQuery.listflag}&alllocflag=${bookQuery.alllocflag}#brow"><font
					<c:if
							test="${bookQuery.orderid eq 4 }"> style="color:#e26b2f;font-weight:bold;"</c:if>>作者</font></a>
				</span> | <span class="order-option"><a
					href="<%=Constants.AccessPageUrl.MORE_NEW_BOOK%>?orderid=5&classno=${bookQuery.classno}&searchtxt=${bookQuery.searchtxt}&searchfield=${bookQuery.searchfield}&searchlibrary=${bookQuery.searchlibrary}&collectyear=${bookQuery.collectyear}&collectmonth=${bookQuery.collectmonth}&language=${bookQuery.language}&multiclassno=${bookQuery.multiclassno}&listflag=${bookQuery.listflag}&alllocflag=${bookQuery.alllocflag}#brow"><font
					<c:if
							test="${bookQuery.orderid eq 5 }"> style="color:#e26b2f;font-weight:bold;"</c:if>>浏览次数</font></a>
				</span>
			</div>
			
			
			<div id="browse-books">
				<c:set value="${moreNewBookIndexVo.pageDetail.bookVos}" var="bookVos"/>
				<c:set value="${bookVos.size()<=0}" var="haveBooks"/>
				<ul>
					<c:if test="${haveBooks}">
						<h1>暂无图书......</h1>
					</c:if>
					<c:if test="${!haveBooks}">
						<c:forEach items="${bookVos}" var="book">
							<li>
								<div class="book-full">
									<div class="book-image">
										<a href="<c:url value="/xxtbcountclick?jmptype=${book.classId}&isbn=${book.isbn}&newbookid=${book.bookId}"/>"><img
												alt="${book.bookName}"
												onerror="this.src='${book.coverImg}';this.onerror=null"
												src="${book.coverImg}"
												title="${book.bookName}"></a>
									</div>
									<div class="book-intro">
										<ul>
											<li class="book-title"><a
													href="<c:url value="/xxtbcountclick?jmptype=${book.classId}&isbn=${book.isbn}&newbookid=${book.bookId}"/>"
													title="${book.bookName}">${book.bookName}</a>
											</li>
											<li>${"作者：".concat(book.bookAuthor)}</li>
											<li>${"索书号：".concat(book.isbn)}</li>
											<li>${book.publishYear}</li>
											<li>${"浏览次数：4"}</li>
										</ul>
									
									</div>
									<div class="clear"></div>
								</div>
							</li>
						</c:forEach>
					</c:if>
						<%--  <!-------每页显示21本书，以下重复20遍------->--%>
				</ul>
			
			</div>
			
			<div class="clear"></div>
		</c:if>
	</div>
	<div id="pagging">
		
		
		<c:if test="${haveBooks}">
	<span>
	               <font style="color:#e26b2f;font-weight:bold;">
		               1
	             </font>
		</span>
		</c:if>
		
		
		<c:if test="${!haveBooks}">
			<%--@elvariable id="Math" type="java"--%>
			<fmt:formatNumber
					value="${Math.ceil(moreNewBookIndexVo.pageDetail.total/moreNewBookIndexVo.pageDetail.size)}"
					type="number" maxFractionDigits="0"
					var="totalPage"/>
			<c:set var="size" value="<%=Constants._NEW_BOOK_PAGE_SIZE_FOOTER_%>"/>
			<fmt:formatNumber value="${totalPage/size}"
			                  type="number" maxFractionDigits="0"
			                  var="totalSize"/>
			<c:set value="${moreNewBookIndexVo.pageDetail.cur}" var="cur1"/>
			
			<c:if test="${cur1 ne 1}">
		<span>
	<a href='<%=Constants.AccessPageUrl.MORE_NEW_BOOK%>?mypage=${cur1-1}&orderid=${bookQuery.orderid}&
	classno=${bookQuery.classno}&searchtxt=${bookQuery.searchtxt}&searchfield=${bookQuery.searchfield}&
	searchlibrary=${bookQuery.searchlibrary}&collectyear=${bookQuery.collectyear}&collectmonth=${bookQuery.collectmonth}&language=
	${bookQuery.language}&listflag=${bookQuery.listflag}&multiclassno=${bookQuery.multiclassno}&callnorderid=${bookQuery.callnorderid}&alllocflag=${bookQuery.alllocflag}#brow'>上一页</a>
	</span>
			</c:if>
			<c:if test="${totalPage<size}">
		<span>
		<c:forEach begin="${totalSize+1}" end="${totalPage}" var="cur">
		              <a href="<%=Constants.AccessPageUrl.MORE_NEW_BOOK%>?
			              mypage=${cur}&orderid=${bookQuery.orderid}&
	classno=${bookQuery.classno}&searchtxt=${bookQuery.searchtxt}&searchfield=${bookQuery.searchfield}&
	searchlibrary=${bookQuery.searchlibrary}&collectyear=${bookQuery.collectyear}&collectmonth=${bookQuery.collectmonth}&language=
	${bookQuery.language}&listflag=${bookQuery.listflag}&multiclassno=${bookQuery.multiclassno}&callnorderid=${bookQuery.callnorderid}&alllocflag=${bookQuery.alllocflag}#brow">
					               <font
							               <c:if
									               test="${cur1 eq cur}"> style="color:#e26b2f;font-weight:bold;"
							               </c:if>>
							               ${cur}
					               </font>
			              </a>
		</c:forEach>
		</span>
			</c:if>
			
			<c:if test="${totalPage>=size}">
		<span>
		<c:forEach begin="1" end="${size}" var="cur">
			<%--@elvariable id="Math" type="java"--%>
			<fmt:formatNumber maxFractionDigits="0" value="${Math.floor(cur1/size)}" type="number" var="p"/>
			<a href="<%=Constants.AccessPageUrl.MORE_NEW_BOOK%>?
			              mypage=${cur+p*size}&orderid=${bookQuery.orderid}&
	classno=${bookQuery.classno}&searchtxt=${bookQuery.searchtxt}&searchfield=${bookQuery.searchfield}&
	searchlibrary=${bookQuery.searchlibrary}&collectyear=${bookQuery.collectyear}&collectmonth=${bookQuery.collectmonth}&language=
	${bookQuery.language}&listflag=${bookQuery.listflag}&multiclassno=${bookQuery.multiclassno}&callnorderid=${bookQuery.callnorderid}&alllocflag=${bookQuery.alllocflag}#brow">
					               <font
							               <c:if
									               test="${cur1%size+1 eq cur}"> style="color:#e26b2f;font-weight:bold;"
							               </c:if>>
							               ${cur+p*size}
					               </font>
			              </a>
		</c:forEach>
		</span>
			</c:if>
		</c:if>
		
		<c:if test="${cur1 ne totalPage}">
		<span>
	<a href='<%=Constants.AccessPageUrl.MORE_NEW_BOOK%>?mypage=${cur1+1}&orderid=${bookQuery.orderid}&
	classno=${bookQuery.classno}&searchtxt=${bookQuery.searchtxt}&searchfield=${bookQuery.searchfield}&
	searchlibrary=${bookQuery.searchlibrary}&collectyear=${bookQuery.collectyear}&collectmonth=${bookQuery.collectmonth}&language=
	${bookQuery.language}&listflag=${bookQuery.listflag}&multiclassno=${bookQuery.multiclassno}&callnorderid=${bookQuery.callnorderid}&alllocflag=${bookQuery.alllocflag}#brow'>下一页</a>
	</span>
		</c:if>
	</div>
</div>
<!---------底部：LOGO、分享、导航栏展开------------>
<!--<div id="xxtb-bottom">-->
<!-- <div class="content-wrapper">-->
<!-- <div id="xxtb-bottom-top">-->
<!-- <div id="xxtb-bottom-logo"><a href="http://newbooks.lib.pku.edu.cn" ><img src="/static/picture/banner-logo.png"></a></div>-->
<!-- 版权所有 北京大学图书馆©2017-2019-->
<!-- </div>-->
<!-- -->
<!-- </div>-->
<!--</div>-->

<!-- 加载模态框 -->
<div class="modal fade" id="loadingModal" tabindex="-1" aria-labelledby="loadingModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content my-modal-content">
			<div class="modal-body text-center">
				<div class="spinner-border text-primary" role="status">
					<span class="visually-hidden">Loading...</span>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        var loadingModal = new bootstrap.Modal(document.getElementById('loadingModal'), {
            backdrop: 'static',
            keyboard: false
        });
        loadingModal.show();
    });
    window.addEventListener('load', function () {
        var loadingModal = document.getElementById('loadingModal');
        var backdrop = document.querySelector('.modal-backdrop');
        loadingModal.parentNode.removeChild(backdrop);
        loadingModal.parentNode.removeChild(loadingModal);

    });
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
