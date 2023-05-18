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
    <link href="static/css/ejym.css" rel="stylesheet" type="text/css"/>
    <link href="static/css/xxtb.css" rel="stylesheet" type="text/css"/>
    <link href="static/css/xxtb-new-new.css" rel="stylesheet" type="text/css"/>
</head>

<body>
<!---------头部：LOGO、导航栏菜单------------>
<div id="xxtb-banner">
    <div class="content-wrapper">
        <!--		<div id="xxtb-banner-logo"><a href="http://newbooks.lib.pku.edu.cn/"  ><img src="static/picture/banner-logo.png"></a></div>-->
        <div id="xxtb-banner-menu">
            <a href="http://newbooks.lib.pku.edu.cn/"><span class="menu">新书通报</span></a>
            <a href="http://newbooks.lib.pku.edu.cn/bookclickorder.jsp"><span class="menu">热门浏览</span></a>
            <a href="/index" target="_blank"><span class="menu">图书馆首页</span></a>
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
                                        ${sessionScope.readercard.readerId==null}
                                        if (isLogin) {
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
                        <div class="basic-image"><img src="static/picture/6018151-fm.jpg!cckb_b"
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
                                    <a href="<c:url  value="/xxtbcountclick?jmptype=${relatedBook.class_id}&newbookid=${relatedBook.newBookId}"/>"><img
                                            src="<c:url value="${relatedBook.coverImg}"/>" title="${relatedBook.title}"
                                            alt="${relatedBook.title}"></a>
                                    <div class="book-intro">
                                        <div class="book-title"><a
                                                href="<c:url  value="/xxtbcountclick?jmptype=${relatedBook.class_id}&newbookid=${relatedBook.newBookId}"/>">${relatedBook.title}</a>
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
        <c:if test="${relatedBooks==null||relatedBooks.size()==0}">
            <div id="xxtb-content-right">
                <div class="browse-book-title">相关图书</div>
                <div id="hot-books">
                    <ul>

                        <li>
                            <div class="hot-book-image">
                                <a href="xxtbcountclick.jsp?jmptype=4&newbookid=254532"><img
                                        src="static/picture/4333851-fm.jpg!cckb_b" title="经济法基础 刘泽海主编"
                                        alt="经济法基础 刘泽海主编"></a>
                                <div class="book-intro">
                                    <div class="book-title"><a href="xxtbcountclick.jsp?jmptype=4&newbookid=254532">经济法基础
                                        刘泽海主编</a></div>
                                    <div class="book-author">刘泽海 主编</div>
                                    <div class="book-publisher">北京 清华大学出版社 2018</div>
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="hot-book-image">
                                <a href="xxtbcountclick.jsp?jmptype=4&newbookid=153907"><img
                                        src="static/picture/4575702-fm.jpg" title="中国早期经济法文献辑注与研究 "
                                        alt="中国早期经济法文献辑注与研究 "></a>
                                <div class="book-intro">
                                    <div class="book-title"><a href="xxtbcountclick.jsp?jmptype=4&newbookid=153907">中国早期经济法文献辑注与研究 </a>
                                    </div>
                                    <div class="book-author">张世明 编著 王济东 编著</div>
                                    <div class="book-publisher">北京 社会科学文献出版社 2019</div>
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="hot-book-image">
                                <a href="xxtbcountclick.jsp?jmptype=4&newbookid=198985"><img
                                        src="static/picture/4844277-fm.jpg" title="电子商务法律法规 "
                                        alt="电子商务法律法规 "></a>
                                <div class="book-intro">
                                    <div class="book-title"><a
                                            href="xxtbcountclick.jsp?jmptype=4&newbookid=198985">电子商务法律法规 </a>
                                    </div>
                                    <div class="book-author">罗佩华 主编 魏彦珩 主编</div>
                                    <div class="book-publisher">北京 清华大学出版社 2019</div>
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="hot-book-image">
                                <a href="xxtbcountclick.jsp?jmptype=4&newbookid=167392"><img
                                        src="static/picture/4594434-fm.jpg" title="强制性产品认证的经济法规制 "
                                        alt="强制性产品认证的经济法规制 "></a>
                                <div class="book-intro">
                                    <div class="book-title"><a href="xxtbcountclick.jsp?jmptype=4&newbookid=167392">强制性产品认证的经济法规制 </a>
                                    </div>
                                    <div class="book-author">高国钧 著</div>
                                    <div class="book-publisher">北京 法律出版社 2019</div>
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="hot-book-image">
                                <a href="xxtbcountclick.jsp?jmptype=4&newbookid=180954"><img
                                        src="static/picture/xstjkb.jpg"
                                        title="2019年注册会计师考试应试指导及全真模拟测试经济法 郭守杰编著"
                                        alt="2019年注册会计师考试应试指导及全真模拟测试经济法 郭守杰编著"></a>
                                <div class="book-intro">
                                    <div class="book-title"><a href="xxtbcountclick.jsp?jmptype=4&newbookid=180954">2019年注册会计师考试应试指导及全真模拟测试经济法
                                        郭守杰编著</a></div>
                                    <div class="book-author">郭守杰 编著</div>
                                    <div class="book-publisher">北京 北京科学技术出版社 2019</div>
                                </div>
                            </div>
                        </li>

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
			<div id="xxtb-bottom-logo"><a href="http://newbooks.lib.pku.edu.cn"  ><img src="static/picture/banner-logo.png"></a></div>
			版权所有   北京大学图书馆©2017-2019
		</div>
		
	</div>
</div>-->
<script>
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?2e4e4ad9369812e47f6230a823376a33";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
    window.onload = function () {
        let msg =
            ${sessionScope.msg}
            alert(msg)
        if (msg) {
            alert("登录成功！！！")
        }
    }
</script>
</body>
</html>