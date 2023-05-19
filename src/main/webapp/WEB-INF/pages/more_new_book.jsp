﻿<html xmlns="http://www.w3.org/1999/xhtml">
<!-- InstanceBegin template="/Templates/ejymfw.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
    <title>新书通报</title>
    <base href="http://localhost:8080/">
    <link href="static/css/xxtb.css" rel="stylesheet" type="text/css"/>
    <link href="static/css/xxtb-new-new.css" rel="stylesheet" type="text/css"/>
    <link href="static/css/style.css" rel="stylesheet" type="text/css"/>
    <script src="static/js/jquery.js" type="text/javascript"></script>
    <script src="static/js/jquery.superslide2.js" type="text/javascript"></script>

</head>


<body>
<!---------头部：LOGO、导航栏菜单------------>
<div id="xxtb-banner">
    <div class="content-wrapper">
        <!--		<div id="xxtb-banner-logo"><a href="http://newbooks.lib.pku.edu.cn/"  ><img src="static/picture/banner-logo.png"></a></div>-->
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
        <div id="xxtb-xinshujiadao-title"><img src="static/picture/newinlib.png"></div>
        <div id="xxtb-search-form">
            <form action="searchresult.jsp" id="form3" method="post" name="form3">
                <label for="textfield"></label>
                <input id="searchtxt" name="searchtxt" size="60" type="text"/>
                <label for="select"></label>
                <select id="searchfield" name="searchfield" size="1">
                    <option selected="selected" value="1">书名</option>
                    <option value="2">著者</option>
                    <option value="3">ISBN</option>
                    <option value="4">出版社</option>
                </select>
                <input id="button" name="button" type="submit" value="&nbsp"/>
            </form>
        </div>
        <!--
                <div id="xxtb-xinshujiadao">
                           <div class="mr_frbox">
                        <img class="mr_frBtnL prev" src="static/picture/arrow_l.png" width="28" height="46" />
        <div class="mr_frUl">
                    <ul>
                    <!-------------殷老师需要在这里取出4张有封面的书，同时还要能翻页，通过左右箭头翻页 ->

                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787300132235&newbookid=433331" ><img class="book-image" src="static/picture/97873001322351930509-fm.jpg!cckb_b" width="123" height="100" title="契约经济学 : 理论和应用 / (法) 埃里克·布鲁索, 让·米歇尔·格拉尚编 = The economics of contracts : theories and applications / Eric Brousseau, Jean Michel Glachant ; 王秋石, 李国民, 李胜兰等译校" alt="契约经济学 : 理论和应用 / (法) 埃里克·布鲁索, 让·米歇尔·格拉尚编 = The economics of contracts : theories and applications / Eric Brousseau, Jean Michel Glachant ; 王秋石, 李国民, 李胜兰等译校"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787220124143&newbookid=433431" ><img class="book-image" src="static/picture/5594705-fm.jpg!cckb_b" width="123" height="100" title="清末民初的思想与人物 / 杨琥著" alt="清末民初的思想与人物 / 杨琥著"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787222174979&newbookid=433362" ><img class="book-image" src="static/picture/4540437-fm.jpg!cckb_b" width="123" height="100" title="白国因由 = Legends of the creation of Bai kingdom / 汉译 (清) 寂裕 ; 英译李昌银, 李秦松" alt="白国因由 = Legends of the creation of Bai kingdom / 汉译 (清) 寂裕 ; 英译李昌银, 李秦松"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787222174993&newbookid=433353" ><img class="book-image" src="static/picture/4540440-fm.jpg!cckb_b" width="123" height="100" title="古歌 = Old folk songs of the Dai & the Naxi / 搜集整理周良沛 ; 英译陈金金" alt="古歌 = Old folk songs of the Dai & the Naxi / 搜集整理周良沛 ; 英译陈金金"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787222190719&newbookid=433374" ><img class="book-image" src="static/picture/5024449-fm.jpg!cckb_b" width="123" height="100" title="牡帕密帕 = Mupamipa / 搜集昆明师范学院中文系一九五七级部分学生 ; 整理刘辉豪 ; 英译李昌银" alt="牡帕密帕 = Mupamipa / 搜集昆明师范学院中文系一九五七级部分学生 ; 整理刘辉豪 ; 英译李昌银"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787520538862&newbookid=433386" ><img class="book-image" src="static/picture/5910623-fm.jpg!cckb_b" width="123" height="100" title="每日一诗 / 谭五昌主编" alt="每日一诗 / 谭五昌主编"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787509757383&newbookid=433368" ><img class="book-image" src="static/picture/2860344-fm.jpg!cckb_b" width="123" height="100" title="经典的诞生 : 叙事话语、文本发现及田野调查 = The birth of classic : narrative discourse, text discovering, and field study / 裴春芳著" alt="经典的诞生 : 叙事话语、文本发现及田野调查 = The birth of classic : narrative discourse, text discovering, and field study / 裴春芳著"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787225053875&newbookid=433322" ><img class="book-image" src="static/picture/3982515-fm.jpg!cckb_b" width="123" height="100" title="中国新诗排行榜 / 谭五昌主编" alt="中国新诗排行榜 / 谭五昌主编"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787520204781&newbookid=433357" ><img class="book-image" src="static/picture/4538983-fm.jpg!cckb_b" width="123" height="100" title="谦卑 / 陈越光, (法) 米歇尔·冉刻著 ; (法) 金丝燕译" alt="谦卑 / 陈越光, (法) 米歇尔·冉刻著 ; (法) 金丝燕译"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787100175951&newbookid=433364" ><img class="book-image" src="static/picture/4688332-fm.jpg!cckb_b" width="123" height="100" title="德语应用语法 / 姚保琮, 佟秀英编著" alt="德语应用语法 / 姚保琮, 佟秀英编著"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787301137109&newbookid=433328" ><img class="book-image" src="static/picture/97873011371091378150-fm.jpg!cckb_b" width="123" height="100" title="20世纪以来中国的图书馆事业 / 张树华, 张久珍编著" alt="20世纪以来中国的图书馆事业 / 张树华, 张久珍编著"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787540263638&newbookid=433428" ><img class="book-image" src="static/picture/4946084-fm.jpg!cckb_b" width="123" height="100" title="契丹文字辨偽錄 / 劉鳳翥, 張少珊, 李春敏著" alt="契丹文字辨偽錄 / 劉鳳翥, 張少珊, 李春敏著"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787301323571&newbookid=433384" ><img class="book-image" src="static/picture/5539008-fm.jpg!cckb_b" width="123" height="100" title="北京大学志 / 王学珍主编" alt="北京大学志 / 王学珍主编"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787500871576&newbookid=433379" ><img class="book-image" src="static/picture/5150267-fm.jpg!cckb_b" width="123" height="100" title="技术史 = A history of technology / 主编查尔斯·辛格 ... [等] ; 主译高亮华 ... [等]" alt="技术史 = A history of technology / 主编查尔斯·辛格 ... [等] ; 主译高亮华 ... [等]"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787504379375&newbookid=433346" ><img class="book-image" src="static/picture/3966201-fm.jpg!cckb_b" width="123" height="100" title="中国网络视频史 = Online video / 陆地, 靳戈著" alt="中国网络视频史 = Online video / 陆地, 靳戈著"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787504685988&newbookid=433556" ><img class="book-image" src="static/picture/5074425-fm.jpg!cckb_b" width="123" height="100" title="知识对话录 / 作者保罗·费耶阿本德 = Three dialogues on knowledge / Paul Feyerabend ; 郭元林, 韩永进译 校" alt="知识对话录 / 作者保罗·费耶阿本德 = Three dialogues on knowledge / Paul Feyerabend ; 郭元林, 韩永进译 校"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787504680990&newbookid=433542" ><img class="book-image" src="static/picture/4425488-fm.jpg!cckb_b" width="123" height="100" title="科学的专横 / (美) 保罗·费耶阿本德著 ; (德) 埃里克·奥博海姆编 = The tyranny of science / Paul Feyerabend ; Eric Oberheim ; 郭元林译" alt="科学的专横 / (美) 保罗·费耶阿本德著 ; (德) 埃里克·奥博海姆编 = The tyranny of science / Paul Feyerabend ; Eric Oberheim ; 郭元林译"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787532653256&newbookid=433380" ><img class="book-image" src="static/picture/4617280-fm.jpg!cckb_b" width="123" height="100" title="辞海 : 彩图本 / 陈至立主编" alt="辞海 : 彩图本 / 陈至立主编"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787030727602&newbookid=433445" ><img class="book-image" src="static/picture/5850010-fm.jpg!cckb_b" width="123" height="100" title="中原地区晚更新世古人类文化发展研究 / 王幼平 ... [等] 著" alt="中原地区晚更新世古人类文化发展研究 / 王幼平 ... [等] 著"></a>
                        </li>



                        <li><a href="xxtbcountclick.jsp?jmptype=4&isbn=9787305254284&newbookid=433446" ><img class="book-image" src="static/picture/5823888-fm.jpg!cckb_b" width="123" height="100" title="南京大学民国文献珍本图录 / 南京大学图书馆编 ; 程章灿, 史梅主编" alt="南京大学民国文献珍本图录 / 南京大学图书馆编 ; 程章灿, 史梅主编"></a>
                        </li>


                    </ul>
        </div>
        <img class="mr_frBtnR next" src="static/picture/arrow_r.png" width="28" height="46" />


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
        <!-------------分类浏览---------------->
        <a name="config"></a>
        <div class="browse-book-title">分类浏览</div>
        <div id="browse-by-month">
            <div class="select-label">按月浏览</div>
            <ul>
                <li><a href="index.jsp?searchlibrary=北大中心馆&language=0&listflag=1&alllocflag=0#config">所有</a></li>


                <li class=" focus ">2023年</li>

                <li>
                    <a href="index.jsp?selectlocation=&collectyear=2023&collectmonth=01&language=0&listflag=1&classno=&multiclassno=0&alllocflag=0#config">1月</a>
                </li>

                <li>
                    <a href="index.jsp?selectlocation=&collectyear=2023&collectmonth=02&language=0&listflag=1&classno=&multiclassno=0&alllocflag=0#config">2月</a>
                </li>

                <li>
                    <a href="index.jsp?selectlocation=&collectyear=2023&collectmonth=03&language=0&listflag=1&classno=&multiclassno=0&alllocflag=0#config">3月</a>
                </li>

                <li>
                    <a href="index.jsp?selectlocation=&collectyear=2023&collectmonth=04&language=0&listflag=1&classno=&multiclassno=0&alllocflag=0#config">4月</a>
                </li>

                <li class="focus"><a
                        href="index.jsp?selectlocation=&collectyear=2023&collectmonth=05&language=0&listflag=1&classno=&multiclassno=0&alllocflag=0#config">5月</a>
                </li>

                <li></li>

                <li></li>

                <li></li>

                <li></li>

                <li></li>

                <li></li>

                <li></li>

            </ul>
            <ul>


                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>

                <li class="year">2022年</li>

                <li>
                    <a href="index.jsp?selectlocation=&collectyear=2022&collectmonth=01&language=0&listflag=1&classno=&multiclassno=0&alllocflag=0#config">1月</a>
                </li>

                <li>
                    <a href="index.jsp?selectlocation=&collectyear=2022&collectmonth=02&language=0&listflag=1&classno=&multiclassno=0&alllocflag=0#config">2月</a>
                </li>

                <li>
                    <a href="index.jsp?selectlocation=&collectyear=2022&collectmonth=03&language=0&listflag=1&classno=&multiclassno=0&alllocflag=0#config">3月</a>
                </li>

                <li>
                    <a href="index.jsp?selectlocation=&collectyear=2022&collectmonth=04&language=0&listflag=1&classno=&multiclassno=0&alllocflag=0#config">4月</a>
                </li>

                <li>
                    <a href="index.jsp?selectlocation=&collectyear=2022&collectmonth=05&language=0&listflag=1&classno=&multiclassno=0&alllocflag=0#config">5月</a>
                </li>

                <li>
                    <a href="index.jsp?selectlocation=&collectyear=2022&collectmonth=06&language=0&listflag=1&classno=&multiclassno=0&alllocflag=0#config">6月</a>
                </li>

                <li>
                    <a href="index.jsp?selectlocation=&collectyear=2022&collectmonth=07&language=0&listflag=1&classno=&multiclassno=0&alllocflag=0#config">7月</a>
                </li>

                <li>
                    <a href="index.jsp?selectlocation=&collectyear=2022&collectmonth=08&language=0&listflag=1&classno=&multiclassno=0&alllocflag=0#config">8月</a>
                </li>

                <li>
                    <a href="index.jsp?selectlocation=&collectyear=2022&collectmonth=09&language=0&listflag=1&classno=&multiclassno=0&alllocflag=0#config">9月</a>
                </li>

                <li>
                    <a href="index.jsp?selectlocation=&collectyear=2022&collectmonth=10&language=0&listflag=1&classno=&multiclassno=0&alllocflag=0#config">10月</a>
                </li>

                <li>
                    <a href="index.jsp?selectlocation=&collectyear=2022&collectmonth=11&language=0&listflag=1&classno=&multiclassno=0&alllocflag=0#config">11月</a>
                </li>

                <li>
                    <a href="index.jsp?selectlocation=&collectyear=2022&collectmonth=12&language=0&listflag=1&classno=&multiclassno=0&alllocflag=0#config">12月</a>
                </li>

            </ul>
            <ul>

            </ul>


        </div>
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
        <div id="browse-by-subject">
            <div class="select-label">按学科浏览</div>
            <ul>
                <li class="focus"><a
                        href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=&multiclassno=&listflag=1&alllocflag=0#config">所有
                </li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=&multiclassno=1&listflag=1&alllocflag=0#config">人文
                </li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=&multiclassno=2&listflag=1&alllocflag=0#config">社会科学
                </li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=&multiclassno=3&listflag=1&alllocflag=0#config">经济与管理
                </li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=&multiclassno=4&listflag=1&alllocflag=0#config">自然科学
                </li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=&multiclassno=5&listflag=1&alllocflag=0#config">信息工程科学
                </li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=Z&listflag=1&alllocflag=0#config">综合</a>
                </li>
            </ul>
        </div>
        <div id="browse-by-callno">
            <div class="select-label">按索书号浏览</div>
            <ul>
                <li class="focus" style="float:none;"><a
                        href="index.jsp?selectlocation=&collectyear=2023&collectmonth=05&language=0&classno=&multiclassno=0&alllocflag=0#config">所有</a>
                </li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=A&listflag=1&alllocflag=0#config"
                       title="马克思主义、列宁主义、毛泽东思想、邓小平理论">A（马克思主义…）</a></li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=B&listflag=1&alllocflag=0#config"
                       title="哲学、宗教">B（哲学、宗教）</a></li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=C&listflag=1&alllocflag=0#config"
                       title="社会科学总论">C（社会科学总论）</a></li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=D&listflag=1&alllocflag=0#config"
                       title="政治、法律">D（政治、法律）</a></li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=E&listflag=1&alllocflag=0#config"
                       title="军事">E（军事）</a></li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=F&listflag=1&alllocflag=0#config"
                       title="经济">F（经济）</a></li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=G&listflag=1&alllocflag=0#config"
                       title="文化、科学、教育、体育">G（文化、科学…）</a></li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=H&listflag=1&alllocflag=0#config"
                       title="语言、文字">H（语言、文字）</a></li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=I&listflag=1&alllocflag=0#config"
                       title="文学">I（文学）</a></li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=J&listflag=1&alllocflag=0#config"
                       title="艺术">J（艺术）</a></li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=K&listflag=1&alllocflag=0#config"
                       title="历史、地理">K（历史、地理）</a></li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=N&listflag=1&alllocflag=0#config"
                       title="自然科学总论">N（自然科学总论）</a></li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=O&listflag=1&alllocflag=0#config"
                       title="数理科学和化学">O（数理科学…）</a></li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=P&listflag=1&alllocflag=0#config"
                       title="天文学、地球科学">P（天文学…）</a></li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=Q&listflag=1&alllocflag=0#config"
                       title="生物科学">Q（生物科学）</a></li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=R&listflag=1&alllocflag=0#config"
                       title="医药、卫生">R（医药、卫生）</a></li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=S&listflag=1&alllocflag=0#config"
                       title="农业科学">S（农业科学）</a></li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=T&listflag=1&alllocflag=0#config"
                       title="工业技术">T（工业技术）</a></li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=U&listflag=1&alllocflag=0#config"
                       title="交通运输">U（交通运输）</a></li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=V&listflag=1&alllocflag=0#config"
                       title="航空、航天">V（航空、航天）</a></li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=X&listflag=1&alllocflag=0#config"
                       title="环境科学、安全科学">X（环境科学…）</a></li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=Z&listflag=1&alllocflag=0#config"
                       title="综合性图书">Z（综合性图书）</a></li>
            </ul>
            <div class="clear"></div>
        </div>
        <div id="browse-by-language">
            <div class="select-label">按语种浏览</div>
            <ul>
                <li class="focus"><a
                        href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&classno=&multiclassno=0&listflag=1&alllocflag=0#config">所有</a>
                </li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=1&classno=&multiclassno=0&listflag=1&alllocflag=0#config">中文</a>
                </li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=2&classno=&multiclassno=0&listflag=1&alllocflag=0#config">西文</a>
                </li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=3&classno=&multiclassno=0&listflag=1&alllocflag=0#config">日文</a>
                </li>
                <li>
                    <a href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=4&classno=&multiclassno=0&listflag=1&alllocflag=0#config">俄文</a>
                </li>

            </ul>
        </div>

        <div id="browse-type">
            <span class="focus"><a
                    href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=&multiclassno=0&alllocflag=0&listflag=1#config">图文式</a></span>&nbsp;/&nbsp;
            <span><a
                    href="index.jsp?searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=&multiclassno=0&alllocflag=0&listflag=2#config">列表式</a></span>
        </div>
        <a name="brow"></a>
        <div id="browse-order">
            排序方式：<span class="order-option"><font style="color:#e26b2f;font-weight:bold;">上架时间</font>
				</span> | <span class="order-option"><a
                href="index.jsp?orderid=2&classno=&searchtxt=&searchfield=0&searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=&multiclassno=0&listflag=1&alllocflag=0&callnorderid=1#brow">索书号<span
                class="icon icon_n" name="sort-callno"></span></a>
				     
				</span> | <span class="order-option"><a
                href="index.jsp?orderid=3&classno=&searchtxt=&searchfield=0&searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=&multiclassno=0&listflag=1&alllocflag=0#brow"><font>题名</font></a>
				</span> | <span class="order-option"><a
                href="index.jsp?orderid=4&classno=&searchtxt=&searchfield=0&searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=&multiclassno=0&listflag=1&alllocflag=0#brow"><font>作者</font></a>
				</span> | <span class="order-option"><a
                href="index.jsp?orderid=5&classno=&searchtxt=&searchfield=0&searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=&multiclassno=0&listflag=1&alllocflag=0#brow"><font>浏览次数</font></a>
				</span>
        </div>


        <div id="browse-books">

            <ul>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787519466800&newbookid=433575"><img
                                    alt="经济与法探究 : 从部门法到法治一般 / 史际春著"
                                    onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/6018151-fm.jpg!cckb_b"
                                    title="经济与法探究 : 从部门法到法治一般 / 史际春著"></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023055605&newbookid=433575"
                                        title="经济与法探究 : 从部门法到法治一般 / 史际春著">经济与法探究 : 从部门法到法治一般
                                    / 史际春著</a></li>
                                <li>作者：史际春著</li>
                                <li>索书号：D922.2904/162b</li>
                                <li>北京 光明日报出版社 2022</li>
                                <li>浏览次数：4</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787562366010&newbookid=432403"><img
                                    alt="计算流体力学 / 吴家鸣编著"
                                    onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/5314783-fm.jpg!cckb_b" title="计算流体力学 / 吴家鸣编著"></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023040214&newbookid=432403"
                                        title="计算流体力学 / 吴家鸣编著">计算流体力学 / 吴家鸣编著</a></li>
                                <li>作者：吴家鸣编著</li>
                                <li>索书号：O35/212</li>
                                <li>广州 华南理工大学出版社 2022</li>
                                <li>浏览次数：9</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787209131193&newbookid=431777"><img
                                    alt="告别 / (日) 井上理津子著 ; 王菲译"
                                    onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/5384090-fm.jpg!cckb_b"
                                    title="告别 / (日) 井上理津子著 ; 王菲译"></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023049684&newbookid=431777"
                                        title="告别 / (日) 井上理津子著 ; 王菲译">告别 / (日) 井上理津子著 ; 王菲译</a>
                                </li>
                                <li>作者：(日) 井上理津子著 ; 王菲译</li>
                                <li>索书号：I313.65/274</li>
                                <li>济南 山东人民出版社 2023</li>
                                <li>浏览次数：21</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787567239937&newbookid=432092"><img
                                    alt="数学物理方法 / 凌寅生, 徐震宇, 方建兴编著"
                                    onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/6012320-fm.jpg!cckb_b"
                                    title="数学物理方法 / 凌寅生, 徐震宇, 方建兴编著"></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023053862&newbookid=432092"
                                        title="数学物理方法 / 凌寅生, 徐震宇, 方建兴编著">数学物理方法 / 凌寅生, 徐震宇,
                                    方建兴编著</a></li>
                                <li>作者：凌寅生, 徐震宇, 方建兴编著</li>
                                <li>索书号：O411.1/181</li>
                                <li>苏州 苏州大学出版社 2023</li>
                                <li>浏览次数：6</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787522119649&newbookid=432040"><img
                                    alt="平面调和映射与极小曲面 "
                                    onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/5994481-fm.jpg!cckb_b" title="平面调和映射与极小曲面 "></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023044261&newbookid=432040"
                                        title="平面调和映射与极小曲面 ">平面调和映射与极小曲面 </a></li>
                                <li>作者：刘志宏, 王智刚, 李迎春著</li>
                                <li>索书号：O189/84</li>
                                <li>北京 中国原子能出版社 2023</li>
                                <li>浏览次数：10</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787561280911&newbookid=431868"><img
                                    alt="类石墨烯低维纳米材料的性能调控及新型二维材料的预测研究 / 王志勇, 戴学琼著"
                                    onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/5994472-fm.jpg!cckb_b"
                                    title="类石墨烯低维纳米材料的性能调控及新型二维材料的预测研究 / 王志勇, 戴学琼著"></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023041239&newbookid=431868"
                                        title="类石墨烯低维纳米材料的性能调控及新型二维材料的预测研究 / 王志勇, 戴学琼著">类石墨烯低维纳米材料的性能调控及新型二维材料的预测研究
                                    / 王志勇, 戴学琼著</a></li>
                                <li>作者：王志勇, 戴学琼著</li>
                                <li>索书号：TB383/477</li>
                                <li>西安 西北工业大学出版社 2023</li>
                                <li>浏览次数：23</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787559128348&newbookid=432049"><img
                                    alt="图解相对论 / (日) 深泽伊吹著 ; (日) 松原隆彦监修 ; 朱悦伟译"
                                    onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/5917767-fm.jpg!cckb_b"
                                    title="图解相对论 / (日) 深泽伊吹著 ; (日) 松原隆彦监修 ; 朱悦伟译"></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023052931&newbookid=432049"
                                        title="图解相对论 / (日) 深泽伊吹著 ; (日) 松原隆彦监修 ; 朱悦伟译">图解相对论 /
                                    (日) 深泽伊吹著 ; (日) 松原隆彦监修 ; 朱悦伟译</a></li>
                                <li>作者：(日) 深泽伊吹著 ; (日) 松原隆彦监修 ; 朱悦伟译</li>
                                <li>索书号：O412.1/149</li>
                                <li>沈阳 辽宁科学技术出版社 2023</li>
                                <li>浏览次数：10</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787300312262&newbookid=432013"><img
                                    alt="百年战争 : 被英格兰夺走的法兰西王冠 / (英) 朱丽叶·巴克著 "
                                    onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/6005611-fm.jpg!cckb_b"
                                    title="百年战争 : 被英格兰夺走的法兰西王冠 / (英) 朱丽叶·巴克著 "></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023048917&newbookid=432013"
                                        title="百年战争 : 被英格兰夺走的法兰西王冠 / (英) 朱丽叶·巴克著 ">百年战争 :
                                    被英格兰夺走的法兰西王冠 / (英) 朱丽叶·巴克著 </a></li>
                                <li>作者：(英) 朱丽叶·巴克著 ; Juliet Barker ; 关蕊译</li>
                                <li>索书号：K565.3/34</li>
                                <li>北京 中国人民大学出版社 2023</li>
                                <li>浏览次数：11</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787519914400&newbookid=431952"><img
                                    alt="第六届汉语中介语语料库建设与应用国际学术讨论会论文选集 / 胡晓清, 张宝林主编"
                                    onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/6002996-fm.jpg!cckb_b"
                                    title="第六届汉语中介语语料库建设与应用国际学术讨论会论文选集 / 胡晓清, 张宝林主编"></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023050687&newbookid=431952"
                                        title="第六届汉语中介语语料库建设与应用国际学术讨论会论文选集 / 胡晓清, 张宝林主编">第六届汉语中介语语料库建设与应用国际学术讨论会论文选集
                                    / 胡晓清, 张宝林主编</a></li>
                                <li>作者：胡晓清, 张宝林主编</li>
                                <li>索书号：H1-532/16:6</li>
                                <li>北京 研究出版社 2023</li>
                                <li>浏览次数：9</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787570229055&newbookid=431819"><img
                                    alt="向南不惑 / 也人著" onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/5999543-fm.jpg!cckb_b" title="向南不惑 / 也人著"></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023049818&newbookid=431819"
                                        title="向南不惑 / 也人著">向南不惑 / 也人著</a></li>
                                <li>作者：也人著</li>
                                <li>索书号：I227/5055</li>
                                <li>武汉 长江文艺出版社 2023</li>
                                <li>浏览次数：12</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787531490036&newbookid=431873"><img
                                    alt="无墙的学院 : 36位世界顶级艺术家的艺术和生活课 / 高远译 "
                                    onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/5492645-fm.jpg!cckb_b"
                                    title="无墙的学院 : 36位世界顶级艺术家的艺术和生活课 / 高远译 "></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023050510&newbookid=431873"
                                        title="无墙的学院 : 36位世界顶级艺术家的艺术和生活课 / 高远译 ">无墙的学院 :
                                    36位世界顶级艺术家的艺术和生活课 / 高远译 </a></li>
                                <li>作者：高远译 ; Gao Yuan translates</li>
                                <li>索书号：K815.72/46</li>
                                <li>沈阳 辽宁美术出版社 2021</li>
                                <li>浏览次数：12</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787569059212&newbookid=431947"><img
                                    alt="汉语数字词语研究 / 胡亭 ... [等] 著"
                                    onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/6002626-fm.jpg!cckb_b"
                                    title="汉语数字词语研究 / 胡亭 ... [等] 著"></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023050672&newbookid=431947"
                                        title="汉语数字词语研究 / 胡亭 ... [等] 著">汉语数字词语研究 / 胡亭 ... [等]
                                    著</a></li>
                                <li>作者：胡亭 ... [等] 著</li>
                                <li>索书号：H136/145</li>
                                <li>成都 四川大学出版社 2023</li>
                                <li>浏览次数：8</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787020177882&newbookid=431955"><img
                                    alt="多多的诗 / 多多著" onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/5999157-fm.jpg!cckb_b" title="多多的诗 / 多多著"></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012012196193&newbookid=431955"
                                        title="多多的诗 / 多多著">多多的诗 / 多多著</a></li>
                                <li>作者：多多著</li>
                                <li>索书号：I227/1542d</li>
                                <li>北京 人民文学出版社 2012</li>
                                <li>浏览次数：9</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787517143963&newbookid=431853"><img
                                    alt="和光同尘 / 行超著" onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/6004930-fm.jpg!cckb_b" title="和光同尘 / 行超著"></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023050412&newbookid=431853"
                                        title="和光同尘 / 行超著">和光同尘 / 行超著</a></li>
                                <li>作者：行超著</li>
                                <li>索书号：I206.7-53/294a</li>
                                <li>北京 中国言实出版社 2023</li>
                                <li>浏览次数：19</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787020168866&newbookid=431925"><img
                                    alt="十九世纪文学主流. Ⅱ, 德国的浪漫派, "
                                    onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/5999168-fm.jpg!cckb_b"
                                    title="十九世纪文学主流. Ⅱ, 德国的浪漫派, "></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023049854&newbookid=431925"
                                        title="十九世纪文学主流. Ⅱ, 德国的浪漫派, ">十九世纪文学主流. Ⅱ,
                                    德国的浪漫派, </a></li>
                                <li>作者：(丹) 勃兰兑斯著 ; 刘半九译</li>
                                <li>索书号：I509/1.2:2</li>
                                <li>北京 人民文学出版社 2023</li>
                                <li>浏览次数：12</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787020168842&newbookid=431808"><img
                                    alt="十九世纪文学主流. Ⅲ, 法国的反动, "
                                    onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/5999166-fm.jpg!cckb_b"
                                    title="十九世纪文学主流. Ⅲ, 法国的反动, "></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023049373&newbookid=431808"
                                        title="十九世纪文学主流. Ⅲ, 法国的反动, ">十九世纪文学主流. Ⅲ, 法国的反动, </a>
                                </li>
                                <li>作者：(丹) 勃兰兑斯著 ; 张道真译</li>
                                <li>索书号：I509/1.2:3</li>
                                <li>北京 人民文学出版社 2023</li>
                                <li>浏览次数：9</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787020168804&newbookid=431807"><img
                                    alt="十九世纪文学主流. Ⅳ, 英国的自然主义, "
                                    onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/5999165-fm.jpg!cckb_b"
                                    title="十九世纪文学主流. Ⅳ, 英国的自然主义, "></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023049364&newbookid=431807"
                                        title="十九世纪文学主流. Ⅳ, 英国的自然主义, ">十九世纪文学主流. Ⅳ,
                                    英国的自然主义, </a></li>
                                <li>作者：(丹) 勃兰兑斯著 ; 徐式谷, 江枫, 张自谋译</li>
                                <li>索书号：I509/1.2:4</li>
                                <li>北京 人民文学出版社 2023</li>
                                <li>浏览次数：12</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787020168873&newbookid=431914"><img
                                    alt="十九世纪文学主流. Ⅰ, 流亡文学, "
                                    onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/5995589-fm.jpg!cckb_b" title="十九世纪文学主流. Ⅰ, 流亡文学, "></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023049850&newbookid=431914"
                                        title="十九世纪文学主流. Ⅰ, 流亡文学, ">十九世纪文学主流. Ⅰ, 流亡文学, </a></li>
                                <li>作者：(丹) 勃兰兑斯著 ; 张道真译</li>
                                <li>索书号：I509/1.2:1</li>
                                <li>北京 人民文学出版社 2023</li>
                                <li>浏览次数：11</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787020168798&newbookid=431790"><img
                                    alt="十九世纪文学主流. Ⅴ, 法国的浪漫派, "
                                    onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/5995588-fm.jpg!cckb_b"
                                    title="十九世纪文学主流. Ⅴ, 法国的浪漫派, "></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023049345&newbookid=431790"
                                        title="十九世纪文学主流. Ⅴ, 法国的浪漫派, ">十九世纪文学主流. Ⅴ,
                                    法国的浪漫派, </a></li>
                                <li>作者：(丹) 勃兰兑斯著 ; 李宗杰译</li>
                                <li>索书号：I509/1.2:5</li>
                                <li>北京 人民文学出版社 2023</li>
                                <li>浏览次数：12</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787521340488&newbookid=431771"><img
                                    alt="语言的深度计算理论与技术应用 "
                                    onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/5969101-fm.jpg!cckb_b"
                                    title="语言的深度计算理论与技术应用 "></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023037634&newbookid=431771"
                                        title="语言的深度计算理论与技术应用 ">语言的深度计算理论与技术应用 </a></li>
                                <li>作者：王璐璐, 袁毓林著</li>
                                <li>索书号：TP391/509</li>
                                <li>北京 外语教学与研究出版社 2023</li>
                                <li>浏览次数：6</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787020177639&newbookid=431834"><img
                                    alt="月牙儿 断魂枪 / 老舍著"
                                    onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/5999163-fm.jpg!cckb_b" title="月牙儿 断魂枪 / 老舍著"></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023049838&newbookid=431834"
                                        title="月牙儿 断魂枪 / 老舍著">月牙儿 断魂枪 / 老舍著</a></li>
                                <li>作者：老舍著</li>
                                <li>索书号：I246.7/21m</li>
                                <li>北京 人民文学出版社 2023</li>
                                <li>浏览次数：8</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787560666891&newbookid=432507"><img
                                    alt="现代通信原理与技术 / 张辉, 曹丽娜主编"
                                    onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/6002307-fm.jpg!cckb_b"
                                    title="现代通信原理与技术 / 张辉, 曹丽娜主编"></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023040237&newbookid=432507"
                                        title="现代通信原理与技术 / 张辉, 曹丽娜主编">现代通信原理与技术 / 张辉,
                                    曹丽娜主编</a></li>
                                <li>作者：张辉, 曹丽娜主编</li>
                                <li>索书号：TN911/75.3</li>
                                <li>西安 西安电子科技大学出版社 2023</li>
                                <li>浏览次数：2</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787521220810&newbookid=433599"><img
                                    alt="李季年谱 / 史建国编著"
                                    onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/6002135-fm.jpg!cckb_b" title="李季年谱 / 史建国编著"></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023055653&newbookid=433599"
                                        title="李季年谱 / 史建国编著">李季年谱 / 史建国编著</a></li>
                                <li>作者：史建国编著</li>
                                <li>索书号：K825.6/828a</li>
                                <li>北京 作家出版社 2023</li>
                                <li>浏览次数：4</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787309163919&newbookid=431797"><img
                                    alt="言语交际与人际沟通 / 吴礼权著"
                                    onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/5996440-fm.jpg!cckb_b"
                                    title="言语交际与人际沟通 / 吴礼权著"></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023049975&newbookid=431797"
                                        title="言语交际与人际沟通 / 吴礼权著">言语交际与人际沟通 / 吴礼权著</a></li>
                                <li>作者：吴礼权著</li>
                                <li>索书号：H019/173b1</li>
                                <li>上海 复旦大学出版社 2023</li>
                                <li>浏览次数：7</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787560666945&newbookid=431815"><img
                                    alt="随机介质中的波传播与散射基础 / 吴振森, 李海英编著"
                                    onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/5992346-fm.jpg!cckb_b"
                                    title="随机介质中的波传播与散射基础 / 吴振森, 李海英编著"></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023050221&newbookid=431815"
                                        title="随机介质中的波传播与散射基础 / 吴振森, 李海英编著">随机介质中的波传播与散射基础
                                    / 吴振森, 李海英编著</a></li>
                                <li>作者：吴振森, 李海英编著</li>
                                <li>索书号：O4/584</li>
                                <li>西安 西安电子科技大学出版社 2023</li>
                                <li>浏览次数：8</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787560666679&newbookid=431825"><img
                                    alt="基于ARM的嵌入式Linux开发与应用 / 马小陆, 王兵, 王磊编著"
                                    onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/5992267-fm.jpg!cckb_b"
                                    title="基于ARM的嵌入式Linux开发与应用 / 马小陆, 王兵, 王磊编著"></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023050230&newbookid=431825"
                                        title="基于ARM的嵌入式Linux开发与应用 / 马小陆, 王兵, 王磊编著">基于ARM的嵌入式Linux开发与应用
                                    / 马小陆, 王兵, 王磊编著</a></li>
                                <li>作者：马小陆, 王兵, 王磊编著</li>
                                <li>索书号：TP332/181.1</li>
                                <li>西安 西安电子科技大学出版社 2022</li>
                                <li>浏览次数：13</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787515411262&newbookid=433489"><img
                                    alt="关系纠缠 : 换个维度看世界 / 徐九庆著"
                                    onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/5477947-fm.jpg!cckb_b"
                                    title="关系纠缠 : 换个维度看世界 / 徐九庆著"></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023055518&newbookid=433489"
                                        title="关系纠缠 : 换个维度看世界 / 徐九庆著">关系纠缠 : 换个维度看世界 /
                                    徐九庆著</a></li>
                                <li>作者：徐九庆著</li>
                                <li>索书号：B821-49/546</li>
                                <li>北京 当代中国出版社 2023</li>
                                <li>浏览次数：1</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787511153371&newbookid=432067"><img
                                    alt="“一带一路”项目绿色发展指南. 二期, 企业及金融机构应用手册 / (挪) 埃里克·索尔海姆 ... [等] 著 ; 赵翰夫译"
                                    onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/6000161-fm.jpg!cckb_b"
                                    title="“一带一路”项目绿色发展指南. 二期, 企业及金融机构应用手册 / (挪) 埃里克·索尔海姆 ... [等] 著 ; 赵翰夫译"></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023053555&newbookid=432067"
                                        title="“一带一路”项目绿色发展指南. 二期, 企业及金融机构应用手册 / (挪) 埃里克·索尔海姆 ... [等] 著 ; 赵翰夫译">“一带一路”项目绿色发展指南.
                                    二期, 企业及金融机构应用手册 / (挪) 埃里克·索尔海姆 ... [等] 著 ; 赵翰夫译</a></li>
                                <li>作者：(挪) 埃里克·索尔海姆 ... [等] 著 ; 赵翰夫译</li>
                                <li>索书号：X171.1/112:2</li>
                                <li>北京 中国环境出版集团 2022</li>
                                <li>浏览次数：2</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787511152909&newbookid=432068"><img
                                    alt="生态毒理学基础 " onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/5975923-fm.jpg!cckb_b" title="生态毒理学基础 "></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023045680&newbookid=432068"
                                        title="生态毒理学基础 ">生态毒理学基础 </a></li>
                                <li>作者：孟紫强主编</li>
                                <li>索书号：R994.6/7f</li>
                                <li>北京 中国环境出版集团 2023</li>
                                <li>浏览次数：16</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <li>
                    <div class="book-full">
                        <div class="book-image">
                            <a href="xxtbcountclick.jsp?jmptype=4&isbn=9787220105524&newbookid=431945"><img
                                    alt="艺事回眸 : 杨淑英川剧表演艺术 / 成都市川剧研究院主编"
                                    onerror="this.src='../images/xstjkb.jpg';this.onerror=null"
                                    src="static/picture/5991255-fm.jpg!cckb_b"
                                    title="艺事回眸 : 杨淑英川剧表演艺术 / 成都市川剧研究院主编"></a>
                        </div>
                        <div class="book-intro">
                            <ul>
                                <li class="book-title"><a
                                        href="xxtbcountclick.jsp?jmptype=4&001fld=012023050669&newbookid=431945"
                                        title="艺事回眸 : 杨淑英川剧表演艺术 / 成都市川剧研究院主编">艺事回眸 :
                                    杨淑英川剧表演艺术 / 成都市川剧研究院主编</a></li>
                                <li>作者：成都市川剧研究院主编</li>
                                <li>索书号：K825.78/588</li>
                                <li>成都 四川人民出版社 2023</li>
                                <li>浏览次数：9</li>
                            </ul>

                        </div>
                        <div class="clear"></div>
                    </div>
                </li>

                <!-------每页显示21本书，以下重复20遍------->
            </ul>

        </div>

        <div id="pagging">

            <span>1 <a
                    href="index.jsp?mypage=2&orderid=0&classno=&searchtxt=&searchfield=0&searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=&listflag=1&multiclassno=0&callnorderid=0&alllocflag=0#brow">2</a> <a
                    href="index.jsp?mypage=3&orderid=0&classno=&searchtxt=&searchfield=0&searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=&listflag=1&multiclassno=0&callnorderid=0&alllocflag=0#brow">3</a> <a
                    href="index.jsp?mypage=4&orderid=0&classno=&searchtxt=&searchfield=0&searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=&listflag=1&multiclassno=0&callnorderid=0&alllocflag=0#brow">4</a> <a
                    href="index.jsp?mypage=5&orderid=0&classno=&searchtxt=&searchfield=0&searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=&listflag=1&multiclassno=0&callnorderid=0&alllocflag=0#brow">5</a> <a
                    href="index.jsp?mypage=6&orderid=0&classno=&searchtxt=&searchfield=0&searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=&listflag=1&multiclassno=0&callnorderid=0&alllocflag=0#brow">6</a> <a
                    href="index.jsp?mypage=7&orderid=0&classno=&searchtxt=&searchfield=0&searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=&listflag=1&multiclassno=0&callnorderid=0&alllocflag=0#brow">7</a> <a
                    href="index.jsp?mypage=8&orderid=0&classno=&searchtxt=&searchfield=0&searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=&listflag=1&multiclassno=0&callnorderid=0&alllocflag=0#brow">8</a> <a
                    href="index.jsp?mypage=9&orderid=0&classno=&searchtxt=&searchfield=0&searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=&listflag=1&multiclassno=0&callnorderid=0&alllocflag=0#brow">9</a> <a
                    href="index.jsp?mypage=10&orderid=0&classno=&searchtxt=&searchfield=0&searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=&listflag=1&multiclassno=0&callnorderid=0&alllocflag=0#brow">10</a> <a
                    href="index.jsp?mypage=11&orderid=0&classno=&searchtxt=&searchfield=0&searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=&listflag=1&multiclassno=0&callnorderid=0&alllocflag=0#brow">11</a> </span>
            <span><a
                    href='index.jsp?mypage=2&orderid=0&classno=&searchtxt=&searchfield=0&searchlibrary=北大中心馆&collectyear=2023&collectmonth=05&language=0&classno=&listflag=1&multiclassno=0&callnorderid=0&alllocflag=0#brow'>下一页</a></span>

        </div>


        <div class="clear"></div>
    </div>
</div>
<!---------底部：LOGO、分享、导航栏展开------------>
<!--<div id="xxtb-bottom">-->
<!--	<div class="content-wrapper">-->
<!--		<div id="xxtb-bottom-top">-->
<!--			<div id="xxtb-bottom-logo"><a href="http://newbooks.lib.pku.edu.cn"  ><img src="static/picture/banner-logo.png"></a></div>-->
<!--			版权所有   北京大学图书馆©2017-2019-->
<!--		</div>-->
<!--		-->
<!--	</div>-->
<!--</div>-->
<script>
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
