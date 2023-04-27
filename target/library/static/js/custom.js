jQuery(document).ready(function ($) {
    var mm_duration = 0;
    $('.t3-megamenu').each(function () {
        if ($(this).data('duration')) {
            mm_duration = $(this).data('duration');
        }
    });
    var mm_timeout = mm_duration ? 100 + mm_duration : 500;
    $('.nav > li, li.mega').hover(function (event) {
            //console.log("okay");
            var $this = $(this);
            if ($this.hasClass('mega')) {
                $this.addClass('animating');
                clearTimeout($this.data('animatingTimeout'));
                $this.data('animatingTimeout', setTimeout(function () {
                    $this.removeClass('animating')
                }, mm_timeout));
                clearTimeout($this.data('hoverTimeout'));
                $this.data('hoverTimeout', setTimeout(function () {
                    $this.addClass('open')
                }, 100));
            } else {
                clearTimeout($this.data('hoverTimeout'));
                $this.data('hoverTimeout',
                    setTimeout(function () {
                        $this.addClass('open')
                    }, 100));
            }
        },
        function (event) {
            var $this = $(this);
            if ($this.hasClass('mega')) {
                $this.addClass('animating');
                clearTimeout($this.data('animatingTimeout'));
                $this.data('animatingTimeout',
                    setTimeout(function () {
                        $this.removeClass('animating')
                    }, mm_timeout));
                clearTimeout($this.data('hoverTimeout'));
                $this.data('hoverTimeout', setTimeout(function () {
                    $this.removeClass('open')
                }, 100));
            } else {
                clearTimeout($this.data('hoverTimeout'));
                $this.data('hoverTimeout',
                    setTimeout(function () {
                        $this.removeClass('open')
                    }, 100));
            }
        });
    // 根据用户设置，初始化搜索栏启动状态
    if (getCookie('hideSearchBlock') == 1) {
        $('.search-open-toggle-btn').addClass('un-pin')
        $('.search-open-toggle-btn').attr('title', '点击图钉，可将搜索栏设置为默认打开。')
        $(".front #block-quicktabs-search-quicktab").show() /*配合20200201修改收缩逻辑*/
        setTimeout(function () {
            $(".front #block-quicktabs-search-quicktab").slideUp();
            $('.front #custom-global-top-search-switch').addClass('search-tab-open');
        }, 2000)
    } else { /*配合20200201修改收缩逻辑*/
        $('.front #custom-global-top-search-switch').addClass('search-tab-open');
        setTimeout(function () {
            $(".front #block-quicktabs-search-quicktab").slideDown()
            $('.front #custom-global-top-search-switch').removeClass('search-tab-open');
        }, 1000)
    }
    $('.not-front #custom-global-top-search-switch').addClass('search-tab-open');
    // 设置默认打开关闭操作；hideSearchBlock = 1 关闭， 没有 打开
    $('.search-open-toggle-btn').click(function () {
        if (getCookie('hideSearchBlock') == 1) {
            setCookie('hideSearchBlock', 0, -1)
            $(this).removeClass('un-pin').attr('title', '点击图钉，可将搜索栏设置为默认收起。')
        } else {
            setCookie('hideSearchBlock', 1)
            $(this).addClass('un-pin').attr('title', '点击图钉，可将搜索栏设置为默认打开。')
            setTimeout(function () {
                $(".front #block-quicktabs-search-quicktab").slideUp()
                $('.front #custom-global-top-search-switch').addClass('search-tab-open');
            }, 1000)
        }
        return false;
    })


    // 设置社交网络工具的底部边距
    function setCustomGlobalBottomEdgeBottom() {
        // 滚动到 footer 以后，社交网络工具悬停在 footer 顶端 / #block-block-56 = footer 区块
        var customGlobalBottomEdgeBottom = window.pageYOffset + document.body.clientHeight - $("#block-block-56").offset().top;
        if (customGlobalBottomEdgeBottom < 0)
            $(".custom-global-bottom-sticker").removeClass('fixed-to-bottom')
        else {
            $(".custom-global-bottom-sticker").addClass('fixed-to-bottom')
        }
        /*$("#custom-global-bottom-edge-QRcode-current-url").css("bottom", customGlobalBottomEdgeBottom + 26); // 可省略 px 单位
        $("#custom-global-bottom-edge-wechat-official").css("bottom", customGlobalBottomEdgeBottom + 23);
        $("#custom-global-bottom-edge-label-ask").css("bottom", customGlobalBottomEdgeBottom + 20);*/
    }

    setCustomGlobalBottomEdgeBottom();
    $(window).on("resize", setCustomGlobalBottomEdgeBottom);
    $(window).on("scroll", setCustomGlobalBottomEdgeBottom);


    // 设置社交网络工具的右边距，停靠在版心内的右侧
    /*function setCustomGlobalBottomEdgeRight() {
        var customGlobalBottomEdgeRight = (document.body.scrollWidth - parseInt($("header#navbar .container").css("width")))/2 // 可视宽度-版心宽度，再平分
        $("#custom-global-bottom-edge-navbar").css("right", customGlobalBottomEdgeRight);
        $("#custom-global-bottom-edge-QRcode-current-url").css("right", customGlobalBottomEdgeRight + 72); // 可省略 px 单位
        $("#custom-global-bottom-edge-wechat-official").css("right", customGlobalBottomEdgeRight + 50);
        $("#custom-global-bottom-edge-label-ask").css("right", customGlobalBottomEdgeRight + 10);
    }
    setCustomGlobalBottomEdgeRight();
    $(window).on("resize", setCustomGlobalBottomEdgeRight);*/


    // 滚动到最新动态图片的翻页按钮以下才开始显示全部社交网络工具，否则隐藏
    function showHideCustomGlobalBottomEdge() {
        if (!$("#front-news")[0]) // 如果不是首页，中断
            return;
        if ($("#custom-global-bottom-edge-navbar").offset().top - 40 > $("#front-news .swiper-pagination").offset().top)
            $("#block-block-59").css("visibility", "visible"); // #block-block-56 = 社交网络工具区块
        else
            $("#block-block-59").css("visibility", "hidden");
    }

    showHideCustomGlobalBottomEdge();
    $(window).on("scroll", showHideCustomGlobalBottomEdge);
    $('.custom-global-bttom-edge-wechat-btn').click(function (e) {
        $('#custom-global-bottom-edge-QRcode-current-url').hide();
        if (!/micromessenger/i.test(navigator.userAgent)) {
            jQuery('#custom-global-bottom-edge-wechat-official').css('visibility',
                jQuery('#custom-global-bottom-edge-wechat-official').css('visibility') == 'hidden' ? 'visible' : 'hidden'
            );
            e.stopPropagation();
            return false;
        }

        e.stopPropagation();
    })
    $('.custom-global-bottom-edge-QRcode-btn').click(function (e) {
        var q = jQuery('#custom-global-bottom-edge-QRcode-current-url');
        q.empty().qrcode({width: 160, height: 160, text: window.location.href.split('#')[0]})
            .css('display', q.css('display') == 'none' ? 'block' : 'none');
        e.stopPropagation();
        jQuery('#custom-global-bottom-edge-wechat-official').css('visibility', 'hidden');
        return false;
    })
    // 使用jQuery取需要点击的<div>或者<a><span>等标签，响应click事件
    $('#custom-global-top-search-switch').click(function (e) {
        $(this).toggleClass('search-tab-open')
        //$("#block-quicktabs-search-quicktab").slideToggle(); //使用jQuery取到需要隐藏的<div>调用slideToggle方法就可以实现收起、展开的效果了。
        if ($("#block-quicktabs-search-quicktab").is(':visible')) {
            $("#block-quicktabs-search-quicktab").css('display', 'none');
        } else {
            $("#block-quicktabs-search-quicktab").css('display', 'block');
        }
        e.stopPropagation();

        //$("#block-quicktabs-search-quicktab ul.quicktabs-tabs").css('background', 'none');
        //$("#block-quicktabs-search-quicktab ul.quicktabs-tabs").css('background', '#ffffff');
        //alert(123);

        //$("#block-quicktabs-search-quicktab ul.quicktabs-tabs li").removeClass('active');
        //$("#block-quicktabs-search-quicktab ul.quicktabs-tabs li").first().addClass('active');
        //var first_a = $("#block-quicktabs-search-quicktab ul.quicktabs-tabs li:first a");
        //console.log(first_a);
        //first_a.click();
        //$("#block-quicktabs-search-quicktab ul.quicktabs-tabs li:first a").click();
        //quicktabs-tabs quicktabs-style-navlist

    })
    $('#edit-keywords').click(function (e) {
        e.stopPropagation();
    });
    $('ul.quicktabs-style-navlist > li > a').click(function (e) {
        var i = $(this).attr('id').replace('quicktabs-tab-search_quicktab-', '')
        var names = ['s.q', 'searchdata1', 'title', 'criteria', 'keywords']
        $('#quicktabs-tabpage-search_quicktab-' + i + ' input[name="' + names[i] + '"]').focus();
        $('#quicktabs-search_quicktab').toggleClass('select-open')
    })
    $('a[href*=mailto]').click(function (e) {
        var href = $(this).attr('href').replace('#', "@")
        $(this).attr('href', href)
        e.stopPropagation();
    })
    $("#superfish-1-toggle, #superfish-3-toggle").on("click", function () {
        $("#block-quicktabs-search-quicktab").hide();
        $('#custom-global-top-search-switch').addClass('search-tab-open');
    })

    // 向superfish 添加登录入口和语言切换
    function addMylibLanguageSwitcher() {
        if (jQuery(window).width() < 960)
            $('.block-superfish ul.sf-accordion').append('<li id="language-switch-copy">' + $('#block-locale-language').html() + "</li>")
                .append('<li id="mylib-link-copy">' + $('#block-pkusso-pkusso-header-link').html() + "</li>");
    }

    addMylibLanguageSwitcher()
    $(document).on('click', function (e) {
        $("#custom-front-top-right-menu ul.top-right-menu-consult-detail").slideUp();
        $("#block-views-exp-site-search2-page").slideUp();
        $('#custom-global-bottom-edge-QRcode-current-url').hide();
        jQuery('#custom-global-bottom-edge-wechat-official').css('visibility', 'hidden');
    })


    /* 党建模块 */
    $(function () {
        $('.section-dangjian #custom-global-bottom-edge-label-ask > a > img').attr({src: "/portal/sites/all/themes/pkulib2018/images/dangjian/ask.png"})
    })
});

// 返回顶部按钮调用以下函数（带滚动效果）
function back2Top(acceleration, time) {
    acceleration = acceleration || 0.1;
    time = time || 16;

    var x1 = 0;
    var y1 = 0;
    var x2 = 0;
    var y2 = 0;
    var x3 = 0;
    var y3 = 0;

    if (document.documentElement) {
        x1 = document.documentElement.scrollLeft || 0;
        y1 = document.documentElement.scrollTop || 0;
    }
    if (document.body) {
        x2 = document.body.scrollLeft || 0;
        y2 = document.body.scrollTop || 0;
    }
    var x3 = window.scrollX || 0;
    var y3 = window.scrollY || 0;

    var x = Math.max(x1, Math.max(x2, x3));

    var y = Math.max(y1, Math.max(y2, y3));

    var speed = 1 + acceleration;
    window.scrollTo(Math.floor(x / speed), Math.floor(y / speed));

    if (x > 0 || y > 0) {
        var invokeFunction = "back2Top(" + acceleration + ", " + time + ")";
        window.setTimeout(invokeFunction, time);
    }
}


function getCookie(c_name) {
    if (document.cookie.length > 0) {
        c_start = document.cookie.indexOf(c_name + "=")
        if (c_start != -1) {
            c_start = c_start + c_name.length + 1
            c_end = document.cookie.indexOf(";", c_start)
            if (c_end == -1) c_end = document.cookie.length
            return unescape(document.cookie.substring(c_start, c_end))
        }
    }
    return ""
}

function setCookie(c_name, value, expiredays) {
    var exdate = new Date()
    exdate.setDate(exdate.getDate() + expiredays)
    document.cookie = c_name + "=" + escape(value) +
        ((expiredays == null) ? "" : ";expires=" + exdate.toGMTString())
}

/* 作者：undefinedCheng
链接：https://www.jianshu.com/p/26676df58e1a
來源：简书
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
// 判断浏览器类型、版本 */
function BrowserType() {
    var userAgent = navigator.userAgent; //取得浏览器的userAgent字符串
    var isOpera = userAgent.indexOf("Opera") > -1; //判断是否Opera浏览器
    // var isIE = userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1 && !isOpera; //判断是否IE浏览器
    var isIE = window.ActiveXObject || "ActiveXObject" in window
    // var isEdge = userAgent.indexOf("Windows NT 6.1; Trident/7.0;") > -1 && !isIE; //判断是否IE的Edge浏览器
    var isEdge = userAgent.indexOf("Edge") > -1; //判断是否IE的Edge浏览器
    var isFF = userAgent.indexOf("Firefox") > -1; //判断是否Firefox浏览器
    var isSafari = userAgent.indexOf("Safari") > -1 && userAgent.indexOf("Chrome") == -1; //判断是否Safari浏览器
    var isChrome = userAgent.indexOf("Chrome") > -1 && userAgent.indexOf("Safari") > -1 && !isEdge; //判断Chrome浏览器

    if (isIE) {
        var reIE = new RegExp("MSIE (\\d+\\.\\d+);");
        reIE.test(userAgent);
        var fIEVersion = parseFloat(RegExp["$1"]);
        if (userAgent.indexOf('MSIE 6.0') != -1) {
            return "IE6";
        } else if (fIEVersion == 7) {
            return "IE7";
        } else if (fIEVersion == 8) {
            return "IE8";
        } else if (fIEVersion == 9) {
            return "IE9";
        } else if (fIEVersion == 10) {
            return "IE10";
        } else if (userAgent.toLowerCase().match(/rv:([\d.]+)\) like gecko/)) {
            return "IE11";
        } else {
            return "0"
        }//IE版本过低
    }//isIE end

    if (isFF) {
        return "FF";
    }
    if (isOpera) {
        return "Opera";
    }
    if (isSafari) {
        return "Safari";
    }
    if (isChrome) {
        return "Chrome";
    }
    if (isEdge) {
        return "Edge";
    }
}

function open_share(type) {
    event.preventDefault();
    var shareUrl = self.location.href;
    ;
    var shareTitle = '我参与了北京大学“共读一本书”活动，快来听我的声音吧';
    var shareImg = 'https://www.lib.pku.edu.cn/portal/sites/default/files/styles/news-related-image/public/news/relatedimages/yan_nan_yuan_de_da_shi_men_0424-2_0.png?itok=21ti0q2y';
    var shareDesc = '';
    var shareSource = '北京大学';
    var openUrl = '';
    switch (type) {
        case 'qzone':
            var _shareUrl = 'http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?';
            _shareUrl += 'url=' + encodeURIComponent(shareUrl || document.location);   //参数url设置分享的内容链接|默认当前页location
            _shareUrl += '&showcount=' + '0';      //参数showcount是否显示分享总数,显示：'1'，不显示：'0'，默认不显示
            _shareUrl += '&desc=' + encodeURIComponent(shareTitle || '');    //参数desc设置分享的描述，可选参数
            _shareUrl += '&summary=' + encodeURIComponent('');    //参数summary设置分享摘要，可选参数
            _shareUrl += '&title=' + encodeURIComponent(shareTitle || document.title);    //参数title设置分享标题，可选参数
            _shareUrl += '&site=' + encodeURIComponent(shareSource || '');   //参数site设置分享来源，可选参数
            _shareUrl += '&pics=' + encodeURIComponent(shareImg || '');   //参数pics设置分享图片的路径，多张图片以＂|＂隔开，可选参数
            break;
        case 'weixin':
            alert('请在微信客户端使用');
            return false;
            break;
        case 'qq':
            var _shareUrl = 'https://connect.qq.com/widget/shareqq/iframe_index.html?';
            _shareUrl += 'url=' + encodeURIComponent(shareUrl || location.href);   //分享的链接
            _shareUrl += '&title=' + encodeURIComponent(shareTitle || document.title);     //分享的标题
            break;
        case 'douban':
            var _shareUrl = 'http://shuo.douban.com/!service/share?';
            _shareUrl += 'href=' + encodeURIComponent(shareUrl || location.href);    //分享的链接
            _shareUrl += '&name=' + encodeURIComponent(shareTitle || document.title);    //分享的标题
            _shareUrl += '&image=' + encodeURIComponent(shareImg || '');    //分享的图片
            break;
        case 'weibo':
            var _shareUrl = 'http://v.t.sina.com.cn/share/share.php?title="123"';     //真实的appkey，必选参数
            _shareUrl += '&url=' + encodeURIComponent(shareUrl || document.location);     //参数url设置分享的内容链接|默认当前页location，可选参数
            _shareUrl += '&title=' + encodeURIComponent(shareTitle || document.title);    //参数title设置分享的标题|默认当前页标题，可选参数
            _shareUrl += '&source=' + encodeURIComponent(shareSource || '');
            _shareUrl += '&sourceUrl=' + encodeURIComponent(shareUrl || '');
            _shareUrl += '&content=' + 'utf-8';   //参数content设置页面编码gb2312|utf-8，可选参数
            _shareUrl += '&pic=' + encodeURIComponent(shareImg || '');  //参数pic设置图片链接|默认为空，可选参数
            break;
    }
    window.open(_shareUrl, '_blank');

}
