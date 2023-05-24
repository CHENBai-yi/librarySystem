<%@ page import="cn.hutool.core.date.DateUtil" %>
<%@ page import="com.bai.utils.constants.Constants" %>
<%@ page contentType="text/html;charset=utf-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html dir="ltr" lang="zh-hans"
      prefix="content: http://purl.org/rss/1.0/modules/content/ dc: http://purl.org/dc/terms/ foaf: http://xmlns.com/foaf/0.1/ og: http://ogp.me/ns# rdfs: http://www.w3.org/2000/01/rdf-schema# sioc: http://rdfs.org/sioc/ns# sioct: http://rdfs.org/sioc/types# skos: http://www.w3.org/2004/02/skos/core# xsd: http://www.w3.org/2001/XMLSchema#">
<head>
	<link href="http://www.w3.org/1999/xhtml/vocab" rel="profile"/>
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<meta content="webkit|ie-comp|ie-stand" name="renderer">
	<meta content="text/html; charset=utf-8" http-equiv="Content-Type"/>
	<meta content="Drupal 7 (http://drupal.org)" name="Generator"/>
	<link href="/portal/cn/fw/ydtj/jiaoshoutuijian" rel="canonical"/>
	<link href="/portal/cn/node/979" rel="shortlink"/>
	<link href="https://www.lib.pku.edu.cn/portal/sites/default/files/favicon.ico" rel="shortcut icon"
	      type="image/vnd.microsoft.icon"/>
	<title>热门推荐阅读——对我最有影响的几本书</title>
	<link href="/static/css/css_o9umxtgxxq9a2xbebn4tkpmgbu4lavzerjcrl8gozdw.css" media="all" rel="stylesheet"
	      type="text/css"/>
	<link href="/static/css/css_k63pupoxloolfk6iyuhto-czl943ncprr4wiilqy3yw.css" media="all" rel="stylesheet"
	      type="text/css"/>
	<link href="/static/css/css_sifat1yrbnt1yexl-kgocar2lk9ihpzmzhha3b-_44s.css" media="all" rel="stylesheet"
	      type="text/css"/>
	<link href="/static/css/css_2wj43g_m8tavtlgxdf6boz6fcu2l8otqn9hbyj0bzr0.css" media="all" rel="stylesheet"
	      type="text/css"/>
	<style>
	</style>
	<!--[if IE 9]>
	<link type="text/css" rel="stylesheet" media="all" href="/static/css/ie9.css"/>
	<![endif]-->
	<!--[if lt IE 9]>
	<link type="text/css" rel="stylesheet" media="all" href="/static/css/ie8.css"/>
	<![endif]-->
	<!-- HTML5 element support for IE6-8 -->
	<!--[if lt IE 9]>
	<script src="/static/js/html5shiv-printshiv.min.js"></script>
	<script src="/static/js/respond.js"></script>
	<![endif]-->
	
	<!--[if (gt IE 9)|(gt IEMobile 7)|(!IE)]><!-->
	
	<!--<![endif]-->
	<script src="/static/js/jquery.min.js"></script>
	<script src="/static/js/jquery-extend-3.4.0.js"></script>
	<script src="/static/js/jquery-html-prefilter-3.5.0-backport.js"></script>
	<script src="/static/js/jquery.once.js"></script>
	<script src="/static/js/drupal.js"></script>
	<script src="/static/js/admin_devel.js"></script>
	<script src="/static/js/jquery-migrate-1.2.0.js"></script>
	<script src="/static/js/jquery.lazyloader.js"></script>
	<script src="/static/js/extlink.js"></script>
	<script src="/static/js/_progress.js"></script>
	<script src="/static/js/zh-hans_9-aoirakfv3_r5hhnl3qaotbxqnqba9zow2xp9jlebq.js"></script>
	<script src="/static/js/lightbox.js"></script>
	<script src="/static/js/tb-megamenu-frontend.js"></script>
	<script src="/static/js/tb-megamenu-touch.js"></script>
	<script src="/static/js/quicktabs.js"></script>
	<script src="/static/js/jquery.hoverintent.minified.js"></script>
	<script src="/static/js/sftouchscreen.js"></script>
	<script src="/static/js/sfsmallscreen.js"></script>
	<script src="/static/js/jquery.bgiframe.min.js"></script>
	<script src="/static/js/superfish.js"></script>
	<script src="/static/js/supersubs.js"></script>
	<script src="/static/js/superfish.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>
	<script src="/static/js/jquery.qrcode.min.js"></script>
	<script src="/static/js/custom.js"></script>
	<script src="/static/js/custom-ge.js"></script>
	<script>jQuery.extend(Drupal.settings, {
        "basePath": "\/portal\/",
        "pathPrefix": "cn\/",
        "ajaxPageState": {
            "theme": "pkulib2018", "theme_token": "DEFyeIzmvdNcxOsFQ41DbTngoIRs2Ho6n_7Rjw4g1PY", "js": {
                "sites\/all\/themes\/bootstrap\/js\/bootstrap.js": 1,
                "sites\/all\/modules\/jquery_update\/replace\/jquery\/1.10\/jquery.min.js": 1,
                "misc\/jquery-extend-3.4.0.js": 1,
                "misc\/jquery-html-prefilter-3.5.0-backport.js": 1,
                "misc\/jquery.once.js": 1,
                "misc\/drupal.js": 1,
                "sites\/all\/modules\/admin_menu\/admin_devel\/admin_devel.js": 1,
                "sites\/all\/modules\/jquery_update\/js\/jquery-migrate-1.2.0.js": 1,
                "sites\/all\/modules\/lazyloader\/jquery.lazyloader.js": 1,
                "sites\/all\/modules\/extlink\/extlink.js": 1,
                "sites\/all\/themes\/bootstrap\/js\/misc\/_progress.js": 1,
                "public:\/\/languages\/zh-hans_9-aoiRAkfV3_r5hHNl3QAotbXQNQBA9zOW2xP9JLEbQ.js": 1,
                "sites\/all\/modules\/lightbox2\/js\/lightbox.js": 1,
                "sites\/all\/modules\/tb_megamenu\/js\/tb-megamenu-frontend.js": 1,
                "sites\/all\/modules\/tb_megamenu\/js\/tb-megamenu-touch.js": 1,
                "sites\/all\/modules\/quicktabs\/js\/quicktabs.js": 1,
                "sites\/all\/libraries\/superfish\/jquery.hoverIntent.minified.js": 1,
                "sites\/all\/libraries\/superfish\/sftouchscreen.js": 1,
                "sites\/all\/libraries\/superfish\/sfsmallscreen.js": 1,
                "sites\/all\/libraries\/superfish\/jquery.bgiframe.min.js": 1,
                "sites\/all\/libraries\/superfish\/superfish.js": 1,
                "sites\/all\/libraries\/superfish\/supersubs.js": 1,
                "sites\/all\/modules\/superfish\/superfish.js": 1,
                "sites\/all\/themes\/pkulib2018\/js\/bootstrap.min.js": 1,
                "sites\/all\/themes\/pkulib2018\/js\/jquery.qrcode.min.js": 1,
                "sites\/all\/themes\/pkulib2018\/js\/custom.js": 1,
                "sites\/all\/themes\/pkulib2018\/js\/custom-ge.js": 1
            }, "css": {
                "modules\/system\/system.base.css": 1,
                "sites\/all\/modules\/date\/date_api\/date.css": 1,
                "sites\/all\/modules\/date\/date_popup\/themes\/datepicker.1.7.css": 1,
                "modules\/field\/theme\/field.css": 1,
                "modules\/node\/node.css": 1,
                "sites\/all\/modules\/extlink\/extlink.css": 1,
                "sites\/all\/modules\/views\/css\/views.css": 1,
                "sites\/all\/modules\/lazyloader\/lazyloader.css": 1,
                "sites\/all\/modules\/ckeditor\/ckeditor.css": 1,
                "sites\/all\/modules\/ctools\/css\/ctools.css": 1,
                "sites\/all\/modules\/lightbox2\/css\/lightbox.css": 1,
                "sites\/all\/modules\/panels\/css\/panels.css": 1,
                "modules\/locale\/locale.css": 1,
                "sites\/all\/modules\/tb_megamenu\/css\/bootstrap.css": 1,
                "sites\/all\/modules\/tb_megamenu\/css\/base.css": 1,
                "sites\/all\/modules\/tb_megamenu\/css\/default.css": 1,
                "sites\/all\/modules\/tb_megamenu\/css\/compatibility.css": 1,
                "sites\/all\/modules\/quicktabs\/css\/quicktabs.css": 1,
                "sites\/all\/modules\/quicktabs\/quicktabs_tabstyles\/tabstyles\/navlist\/navlist.css": 1,
                "sites\/all\/libraries\/fontawesome\/css\/font-awesome.css": 1,
                "sites\/all\/libraries\/superfish\/css\/superfish.css": 1,
                "sites\/all\/libraries\/superfish\/css\/superfish-smallscreen.css": 1,
                "sites\/all\/libraries\/superfish\/style\/white.css": 1,
                "sites\/all\/themes\/pkulib2018\/css\/style.css": 1,
                "sites\/all\/themes\/pkulib2018\/css\/bootstrap.min.css": 1,
                "sites\/all\/themes\/pkulib2018\/css\/color.css": 1,
                "sites\/all\/themes\/pkulib2018\/css\/color-x.css": 1,
                "sites\/all\/themes\/pkulib2018\/css\/color-l.css": 1,
                "sites\/all\/themes\/pkulib2018\/css\/portal.css": 1,
                "sites\/all\/themes\/pkulib2018\/css\/portal-w.css": 1,
                "sites\/all\/themes\/pkulib2018\/css\/portal-ge.css": 1,
                "sites\/all\/themes\/pkulib2018\/css\/contentpage.css": 1,
                "sites\/all\/themes\/pkulib2018\/css\/specialdonation.css": 1,
                "sites\/all\/themes\/pkulib2018\/css\/contentpageold.css": 1,
                "sites\/all\/themes\/pkulib2018\/css\/color-on-big-days.css": 1,
                "sites\/all\/themes\/pkulib2018\/css\/contentpage-temp.css": 1,
                "0": 1
            }
        },
        "lightbox2": {
            "rtl": "0",
            "file_path": "\/portal\/(\\w\\w\/)public:\/",
            "default_image": "\/portal\/sites\/all\/modules\/lightbox2\/images\/brokenimage.jpg",
            "border_size": 10,
            "font_color": "000",
            "box_color": "fff",
            "top_position": "",
            "overlay_opacity": "0.8",
            "overlay_color": "000",
            "disable_close_click": 1,
            "resize_sequence": 0,
            "resize_speed": 400,
            "fade_in_speed": 400,
            "slide_down_speed": 600,
            "use_alt_layout": 0,
            "disable_resize": 0,
            "disable_zoom": 0,
            "force_show_nav": 0,
            "show_caption": 1,
            "loop_items": 0,
            "node_link_text": "View Image Details",
            "node_link_target": 0,
            "image_count": "",
            "video_count": "Video !current of !total",
            "page_count": "Page !current of !total",
            "lite_press_x_close": "\u6309 \u003Ca href=\u0022#\u0022 onclick=\u0022hideLightbox(); return FALSE;\u0022\u003E\u003Ckbd\u003Ex\u003C\/kbd\u003E\u003C\/a\u003E \u5173\u95ed",
            "download_link_text": "",
            "enable_login": false,
            "enable_contact": false,
            "keys_close": "c x 27",
            "keys_previous": "p 37",
            "keys_next": "n 39",
            "keys_zoom": "z",
            "keys_play_pause": "32",
            "display_image_size": "original",
            "image_node_sizes": "()",
            "trigger_lightbox_classes": "",
            "trigger_lightbox_group_classes": "",
            "trigger_slideshow_classes": "",
            "trigger_lightframe_classes": "",
            "trigger_lightframe_group_classes": "",
            "custom_class_handler": 0,
            "custom_trigger_classes": "",
            "disable_for_gallery_lists": true,
            "disable_for_acidfree_gallery_lists": true,
            "enable_acidfree_videos": true,
            "slideshow_interval": 5000,
            "slideshow_automatic_start": true,
            "slideshow_automatic_exit": true,
            "show_play_pause": true,
            "pause_on_next_click": false,
            "pause_on_previous_click": true,
            "loop_slides": false,
            "iframe_width": 600,
            "iframe_height": 400,
            "iframe_border": 1,
            "enable_video": 0
        },
        "urlIsAjaxTrusted": {"\/portal\/cn\/site-search": true},
        "extlink": {
            "extTarget": "_blank",
            "extClass": 0,
            "extLabel": "(link is external)",
            "extImgClass": 0,
            "extSubdomains": 1,
            "extExclude": "http:\\\/\\\/login\\.lib\\.pku\\.edu\\.cn\\\/",
            "extInclude": "(\\\/mylib\\\/services\\\/[^\\\/]+)|(\\\/annual-report\\\/?)",
            "extCssExclude": "",
            "extCssExplicit": "",
            "extAlert": 0,
            "extAlertText": "This link will take you to an external web site. We are not responsible for their content.",
            "mailtoClass": "mailto",
            "mailtoLabel": "(link sends e-mail)"
        },
        "superfish": {
            "1": {
                "id": "1",
                "sf": {
                    "pathLevels": "3",
                    "delay": "200",
                    "animation": {"opacity": "show", "height": "show"},
                    "speed": "fast"
                },
                "plugins": {
                    "touchscreen": {"mode": "window_width", "breakpoint": 960, "breakpointUnit": "px"},
                    "smallscreen": {
                        "mode": "window_width",
                        "breakpoint": 960,
                        "breakpointUnit": "px",
                        "expandText": "\u6269\u5c55",
                        "collapseText": "\u6298\u53e0",
                        "title": "Menu2018"
                    },
                    "bgiframe": true,
                    "supersubs": {"minWidth": "7.3"}
                }
            }
        },
        "quicktabs": {
            "qt_search_quicktab": {
                "name": "search_quicktab",
                "tabs": [{"bid": "summon_delta_summon", "hide_title": 0}, {
                    "bid": "block_delta_4",
                    "hide_title": 0
                }, {"bid": "block_delta_5", "hide_title": 0}, {
                    "bid": "block_delta_6",
                    "hide_title": 0
                }, {"bid": "views_delta_-exp-site_search2-page", "hide_title": 0}],
                "urlIsAjaxTrusted": {"\/portal\/cn\/site-search": true}
            }
        },
        "bootstrap": {
            "anchorsFix": "0",
            "anchorsSmoothScrolling": "0",
            "formHasError": 1,
            "popoverEnabled": 1,
            "popoverOptions": {
                "animation": 1,
                "html": 0,
                "placement": "right",
                "selector": "",
                "trigger": "click",
                "triggerAutoclose": 1,
                "title": "",
                "content": "",
                "delay": 0,
                "container": "body"
            },
            "tooltipEnabled": 1,
            "tooltipOptions": {
                "animation": 1,
                "html": 0,
                "placement": "auto left",
                "selector": "",
                "trigger": "hover focus",
                "delay": 0,
                "container": "body"
            }
        }
    });</script>
</head>
<body class="html not-front not-logged-in one-sidebar sidebar-first page-node page-node- page-node-979 node-type-page i18n-zh-hans section-fw">
<div id="skip-link">
    <a class="element-invisible element-focusable" href="#main-content">跳转到主要内容</a>
</div>
<!--<header id="navbar" role="banner" class="navbar container navbar-default">-->
<!--    <div class="top-right container">-->
<!--        <div class="region region-top-right">-->
<!--            <section id="block-block-41" class="block block-block clearfix">-->


<!--                <div id="custom-front-top-site-search">-->
<!--                    <span class="glyphicon glyphicon-search" aria-hidden="true" title="站内搜索，点击展开"></span></div>-->

<!--            </section>-->
<!--            <section id="block-block-68" class="block block-block clearfix">-->


<!--                <p class="top-go-back"><a href="http://www3.lib.pku.edu.cn/portal/" target="_blank">旧版</a></p>-->
<!--                <style type="text/css">-->
<!--                    &lt;!&ndash; /*&ndash;&gt;<![CDATA[/* >&lt;!&ndash;*/-->

<!--                    p.top-go-back a.first {-->
<!--                        margin-right: 25px;-->
<!--                    }-->

<!--                    /*&ndash;&gt;<!]]>*/-->
<!--                </style>-->
<!--            </section>-->
<!--            <section id="block-views-exp-site-search2-page" class="block block-views clearfix">-->


<!--                <form action="/portal/cn/site-search" method="get" id="views-exposed-form-site-search2-page"-->
<!--                      accept-charset="UTF-8">-->
<!--                    <div>-->
<!--                        <div class="views-exposed-form">-->
<!--                            <div class="views-exposed-widgets clearfix">-->
<!--                                <div id="edit-keywords-wrapper"-->
<!--                                     class="views-exposed-widget views-widget-filter-search_api_views_fulltext">-->
<!--                                    <label for="edit-keywords">-->
<!--                                        站内搜索 </label>-->
<!--                                    <div class="views-widget">-->
<!--                                        <div class="form-item form-item-keywords form-type-textfield form-group"><input-->
<!--                                                class="form-control form-text" type="text" id="edit-keywords"-->
<!--                                                name="keywords" value="" size="30" maxlength="128"/></div>-->
<!--                                    </div>-->
<!--                                </div>-->
<!--                                <div class="views-exposed-widget views-submit-button">-->
<!--                                    <button type="submit" id="edit-submit-site-search2" name="" value="搜索"-->
<!--                                            class="btn btn-primary form-submit">搜索-->
<!--                                    </button>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                </form>-->
<!--            </section>-->
<!--            <section id="block-pkusso-pkusso-header-link" class="block block-pkusso clearfix">-->


<!--                <div class="mylib-header-link">-->
<!--                    <span><span class="glyphicon glyphicon-user" aria-hidden="true"></span><a target="_blank"-->
<!--                                                                                              href="/portal/cn/mylib">我的图书馆</a></span>-->
<!--                </div>-->

<!--            </section>-->
<!--            <section id="block-block-43" class="block block-block clearfix">-->


<!--                <div id="custom-front-top-right-menu">-->
<!--                    <span class="glyphicon glyphicon-gift" aria-hidden="true"></span><a target="_blank"-->
<!--                                                                                        href="/portal/donation">捐赠</a>&nbsp;-->
<!--                    &nbsp; &nbsp; <span class="top-right-menu-consult"><span class="glyphicon glyphicon-info-sign"-->
<!--                                                                             aria-hidden="true"></span>咨询 <span-->
<!--                        class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span></span>-->
<!--                    <ul class="top-right-menu-consult-detail">-->

<!--                        <li>-->
<!--                            <span class="top-right-menu-consult"><a target="_blank"-->
<!--                                                                    href="/portal/cn/zxt/dianhua">电话咨询</a></span>-->
<!--                        </li>-->
<!--                        <li>-->
<!--                            <span class="top-right-menu-consult"><a target="_blank" href="/portal/cn/zxt/qq">QQ问答</a></span>-->
<!--                        </li>-->
<!--                        <li>-->
<!--                            <span class="top-right-menu-consult"><a target="_blank"-->
<!--                                                                    href="/portal/cn/zxt/bbs">BBS发帖</a></span></li>-->
<!--                        <li>-->
<!--                            <span class="top-right-menu-consult"><a target="_blank"-->
<!--                                                                    href="/portal/cn/zxt/youjian">邮件咨询</a></span>-->
<!--                        </li>-->
<!--                        &lt;!&ndash; <li>-->
<!--      <span class="top-right-menu-consult"><a target="_blank" href="/portal/cn/fw/xkfw/xuekeguanyuan">问学科馆员</a></span></li> &ndash;&gt;-->
<!--                        <li>-->
<!--                            <span class="top-right-menu-consult"><a target="_blank" href="/portal/cn/zxt/weibowechat">微博/微信</a></span>-->
<!--                        </li>-->
<!--                        <li>-->
<!--                            <span class="top-right-menu-consult"><a target="_blank"-->
<!--                                                                    href="/portal/cn/zxt/faq">常见问题</a></span></li>-->
<!--                        <li>-->
<!--                            <span class="top-right-menu-consult"><a target="_blank"-->
<!--                                                                    href="/portal/cn/zxt/xiexin">给馆长写信</a></span>-->
<!--                        </li>-->
<!--                        <li>-->
<!--                            &lt;!&ndash;<span class="top-right-menu-consult"><a target="_blank" href="/portal/cn/zxt/yuyue">馆长接待日</a></span></li>&ndash;&gt;-->
<!--                    </ul>-->
<!--                </div>-->

<!--            </section>-->
<!--            <section id="block-opening-time-opening-time" class="block block-opening-time clearfix">-->


<!--                <span class="opening-itme"><span class="glyphicon glyphicon-time" aria-hidden="true"></span><a-->
<!--                        href="/portal/cn/fw/rgzn/guancangfenbu" target="_blank">今日开馆：6:30 - 22:30</a></span>-->
<!--            </section>-->
<!--            <section id="block-locale-language" class="block block-locale clearfix">-->


<!--                <ul class="language-switcher-locale-url">-->
<!--                    <li class="zh-hans first active"><a href="/portal/cn/fw/ydtj/jiaoshoutuijian"-->
<!--                                                        class="language-link active" xml:lang="zh-hans"-->
<!--                                                        title="热门推荐阅读——对我最有影响的几本书">简体中文</a></li>-->
<!--                    <li class="en last"><a href="/portal/en/fw/ydtj/jiaoshoutuijian" class="language-link" xml:lang="en"-->
<!--                                           title="Professors&#039; Recommendations &#45;&#45; Valuable Books in their Views">English</a>-->
<!--                    </li>-->
<!--                </ul>-->
<!--            </section>-->
<!--        </div>-->
<!--    </div>-->
<!--    <div class="container">-->
<!--        <div class="navbar-header">-->
<!--            <a class="logo navbar-btn" href="/portal/cn" title="首页">-->
<!--                <img src="/static/picture/logo_0.png" alt="首页"/>-->
<!--            </a>-->

<!--        </div>-->

<!--        <div class="navbar">-->
<!--            <nav role="navigation">-->
<!--                <div class="region region-navigation">-->
<!--                    <section id="block-tb-megamenu-menu-menu2018" class="block block-tb-megamenu clearfix">-->


<!--                        <div class="tb-megamenu tb-megamenu-menu-menu2018">-->
<!--                            <button data-target=".nav-collapse" data-toggle="collapse"-->
<!--                                    class="btn btn-navbar tb-megamenu-button" type="button">-->
<!--                                <i class="fa fa-reorder"></i>-->
<!--                            </button>-->
<!--                            <div class="nav-collapse  always-show">-->
<!--                                <ul class="tb-megamenu-nav nav level-0 items-8">-->
<!--                                    <li data-id="3036" data-level="1" data-type="menu_item" data-class="" data-xicon=""-->
<!--                                        data-caption="" data-alignsub="justify" data-group="0" data-hidewcol="0"-->
<!--                                        data-hidesub="0"-->
<!--                                        class="tb-megamenu-item level-1 mega mega-align-justify dropdown">-->

<!--                                        <span>文献资源</span>-->


<!--                                        <div data-class="" data-width=""-->
<!--                                             class="tb-megamenu-submenu dropdown-menu mega-dropdown-menu nav-child">-->
<!--                                            <div class="mega-dropdown-inner">-->
<!--                                                <div class="tb-megamenu-row row-fluid">-->
<!--                                                    <div data-class="resource-list" data-width="4" data-hidewcol="0"-->
<!--                                                         id="tb-megamenu-column-3"-->
<!--                                                         class="tb-megamenu-column span4  mega-col-nav resource-list">-->
<!--                                                        <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                            <ul class="tb-megamenu-subnav mega-nav level-1 items-1">-->
<!--                                                                <li data-id="1594" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="1" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega mega-group">-->


<!--                                                                    <a href="/portal/cn/zy/zzzy/guji" class="">-->

<!--                                                                        馆藏资源 <span class="caret"></span>-->
<!--                                                                    </a>-->


<!--                                                                    <div data-class="" data-width=""-->
<!--                                                                         class="tb-megamenu-submenu mega-group-ct nav-child">-->
<!--                                                                        <div class="mega-dropdown-inner">-->
<!--                                                                            <div class="tb-megamenu-row row-fluid">-->
<!--                                                                                <div data-class="" data-width="6"-->
<!--                                                                                     data-hidewcol=""-->
<!--                                                                                     id="tb-megamenu-column-1"-->
<!--                                                                                     class="tb-megamenu-column span6  mega-col-nav">-->
<!--                                                                                    <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                                                        <ul class="tb-megamenu-subnav mega-nav level-2 items-6">-->
<!--                                                                                            <li data-id="1599"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://dbnav.lib.pku.edu.cn/"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    数据库 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1624"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://zm8lp2fe5j.search.serialssolutions.com/ejp/?libHash=ZM8LP2FE5J#/?language=zh-CN&titleType=BOOKS"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    电子图书 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1598"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://zm8lp2fe5j.search.serialssolutions.com/ejp/?libHash=ZM8LP2FE5J#/?language=zh-CN&titleType=JOURNALS"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    电子期刊 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1601"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/zy/zzzy/guji"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    古籍 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1602"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://media.lib.pku.edu.cn/"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    视频/音频 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1603"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://appendcd.lib.pku.edu.cn/"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    随书光盘 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                        </ul>-->
<!--                                                                                    </div>-->
<!--                                                                                </div>-->

<!--                                                                                <div data-class="" data-width="6"-->
<!--                                                                                     data-hidewcol="0"-->
<!--                                                                                     id="tb-megamenu-column-2"-->
<!--                                                                                     class="tb-megamenu-column span6  mega-col-nav">-->
<!--                                                                                    <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                                                        <ul class="tb-megamenu-subnav mega-nav level-2 items-5">-->
<!--                                                                                            <li data-id="1607"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/zy/software"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    工具与软件 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1600"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://dbnav.lib.pku.edu.cn/newhomepage?field_fenlei_neirongleixing_tid%5B%5D=35"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    学位论文 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1604"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://dbnav.lib.pku.edu.cn/newhomepage?field_fenlei_neirongleixing_tid%5B%5D=34"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    报纸 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1605"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://dbnav.lib.pku.edu.cn/newhomepage?field_fenlei_neirongleixing_tid%5B%5D=38"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    统计数据/研究数据 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1606"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://dbnav.lib.pku.edu.cn/newhomepage?field_fenlei_neirongleixing_tid%5B%5D=37"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    档案 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                        </ul>-->
<!--                                                                                    </div>-->
<!--                                                                                </div>-->
<!--                                                                            </div>-->
<!--                                                                        </div>-->
<!--                                                                    </div>-->

<!--                                                                </li>-->
<!--                                                            </ul>-->
<!--                                                        </div>-->
<!--                                                    </div>-->

<!--                                                    <div data-class="" data-width="4" data-hidewcol=""-->
<!--                                                         id="tb-megamenu-column-6"-->
<!--                                                         class="tb-megamenu-column span4  mega-col-nav">-->
<!--                                                        <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                            <ul class="tb-megamenu-subnav mega-nav level-1 items-1">-->
<!--                                                                <li data-id="1632" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="1" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega mega-group">-->


<!--                                                                    <a href="/portal/cn/zy/tszy" class="">-->

<!--                                                                        特色资源 <span class="caret"></span>-->
<!--                                                                    </a>-->


<!--                                                                    <div data-class="" data-width=""-->
<!--                                                                         class="tb-megamenu-submenu mega-group-ct nav-child">-->
<!--                                                                        <div class="mega-dropdown-inner">-->
<!--                                                                            <div class="tb-megamenu-row row-fluid">-->
<!--                                                                                <div data-class="" data-width="6"-->
<!--                                                                                     data-hidewcol="0"-->
<!--                                                                                     id="tb-megamenu-column-4"-->
<!--                                                                                     class="tb-megamenu-column span6  mega-col-nav">-->
<!--                                                                                    <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                                                        <ul class="tb-megamenu-subnav mega-nav level-2 items-6">-->
<!--                                                                                            <li data-id="1608"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://rbdl.calis.edu.cn/aopac/indexold.jsp"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    古文献资源库 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1609"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://media.lib.pku.edu.cn/index.php?m=content&c=index&a=lists&catid=33&sserial=3713"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    北大讲座 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1610"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/zy/tszy/minguowenxian"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    晚清民国文献 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1611"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/zy/tszy/xiwentecang"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    西文特藏 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3702"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="https://thesis.lib.pku.edu.cn:8080/"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    博后研究报告 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1614"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/zy/tszy/yandalunwen"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    燕大毕业论文 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                        </ul>-->
<!--                                                                                    </div>-->
<!--                                                                                </div>-->

<!--                                                                                <div data-class="" data-width="6"-->
<!--                                                                                     data-hidewcol=""-->
<!--                                                                                     id="tb-megamenu-column-5"-->
<!--                                                                                     class="tb-megamenu-column span6  mega-col-nav">-->
<!--                                                                                    <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                                                        <ul class="tb-megamenu-subnav mega-nav level-2 items-5">-->
<!--                                                                                            <li data-id="1612"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/zy/tszy/beidawenku"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    北大文库 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1613"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/zy/tszy/mingrencangshu"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    名家专藏 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3890"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/zy/tszy/gemingwenxian"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    革命文献 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1615"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/zy/tszy/shuzitecang"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    数字特藏 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1616"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/zy/tszy/qita"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    其他 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                        </ul>-->
<!--                                                                                    </div>-->
<!--                                                                                </div>-->
<!--                                                                            </div>-->
<!--                                                                        </div>-->
<!--                                                                    </div>-->

<!--                                                                </li>-->
<!--                                                            </ul>-->
<!--                                                        </div>-->
<!--                                                    </div>-->

<!--                                                    <div data-class="" data-width="4" data-hidewcol=""-->
<!--                                                         id="tb-megamenu-column-8"-->
<!--                                                         class="tb-megamenu-column span4  mega-col-nav">-->
<!--                                                        <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                            <ul class="tb-megamenu-subnav mega-nav level-1 items-1">-->
<!--                                                                <li data-id="1596" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="1" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega mega-group">-->


<!--                                                                    <a href="/portal/cn/newresources/22" class="">-->

<!--                                                                        最新/精选资源 <span class="caret"></span>-->
<!--                                                                    </a>-->


<!--                                                                    <div data-class="" data-width=""-->
<!--                                                                         class="tb-megamenu-submenu mega-group-ct nav-child">-->
<!--                                                                        <div class="mega-dropdown-inner">-->
<!--                                                                            <div class="tb-megamenu-row row-fluid">-->
<!--                                                                                <div data-class="" data-width="12"-->
<!--                                                                                     data-hidewcol="0"-->
<!--                                                                                     id="tb-megamenu-column-7"-->
<!--                                                                                     class="tb-megamenu-column span12  mega-col-nav">-->
<!--                                                                                    <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                                                        <ul class="tb-megamenu-subnav mega-nav level-2 items-6">-->
<!--                                                                                            <li data-id="1618"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://newbooks.lib.pku.edu.cn/"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    新书通报 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1619"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/zy/dzzy/dianzijiaocan"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    数字教学参考资料 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1620"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://thesis.lib.pku.edu.cn"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    北京大学学位论文 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1617"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/newresources/22"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    试用/最新数据库 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1623"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://dbnav.lib.pku.edu.cn/newhomepage?field_fenlei_zhuti_tid%5B%5D=48"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    晚清民国专题 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3093"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://dbnav.lib.pku.edu.cn/newhomepage?field_fenlei_zhuti_tid%5B%5D=93"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    区域与国别专题 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                        </ul>-->
<!--                                                                                    </div>-->
<!--                                                                                </div>-->
<!--                                                                            </div>-->
<!--                                                                        </div>-->
<!--                                                                    </div>-->

<!--                                                                </li>-->
<!--                                                            </ul>-->
<!--                                                        </div>-->
<!--                                                    </div>-->
<!--                                                </div>-->
<!--                                            </div>-->
<!--                                        </div>-->

<!--                                    </li>-->
<!--                                    <li data-id="1588" data-level="1" data-type="menu_item" data-class="" data-xicon=""-->
<!--                                        data-caption="" data-alignsub="justify" data-group="0" data-hidewcol="0"-->
<!--                                        data-hidesub="0"-->
<!--                                        class="tb-megamenu-item level-1 mega mega-align-justify dropdown active active-trail">-->

<!--                                        <span>借阅服务</span>-->


<!--                                        <div data-class="borrow-list" data-width=""-->
<!--                                             class="tb-megamenu-submenu borrow-list dropdown-menu mega-dropdown-menu nav-child">-->
<!--                                            <div class="mega-dropdown-inner">-->
<!--                                                <div class="tb-megamenu-row row-fluid">-->
<!--                                                    <div data-class="" data-width="2" data-hidewcol=""-->
<!--                                                         id="tb-megamenu-column-10"-->
<!--                                                         class="tb-megamenu-column span2  mega-col-nav">-->
<!--                                                        <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                            <ul class="tb-megamenu-subnav mega-nav level-1 items-1">-->
<!--                                                                <li data-id="1626" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="1" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega mega-group">-->


<!--                                                                    <a href="/portal/cn/jy/gcjs/tushujiansuo" class="">-->

<!--                                                                        馆藏检索与使用 <span class="caret"></span>-->
<!--                                                                    </a>-->


<!--                                                                    <div data-class="" data-width=""-->
<!--                                                                         class="tb-megamenu-submenu mega-group-ct nav-child">-->
<!--                                                                        <div class="mega-dropdown-inner">-->
<!--                                                                            <div class="tb-megamenu-row row-fluid">-->
<!--                                                                                <div data-class="" data-width="12"-->
<!--                                                                                     data-hidewcol="0"-->
<!--                                                                                     id="tb-megamenu-column-9"-->
<!--                                                                                     class="tb-megamenu-column span12  mega-col-nav">-->
<!--                                                                                    <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                                                        <ul class="tb-megamenu-subnav mega-nav level-2 items-5">-->
<!--                                                                                            <li data-id="1636"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/jy/gcjs/tushujiansuo"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    图书检索 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1637"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/jy/gcjs/qikanjiansuo"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    期刊检索 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1638"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/jy/gcjs/xueweilunwenjiansuo"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    学位论文检索 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1639"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/jy/gcjs/tecangwenxianjiansuo"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    特殊文献检索 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3572"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/jy/gcjs/xiaowaifangwen"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    校外访问 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                        </ul>-->
<!--                                                                                    </div>-->
<!--                                                                                </div>-->
<!--                                                                            </div>-->
<!--                                                                        </div>-->
<!--                                                                    </div>-->

<!--                                                                </li>-->
<!--                                                            </ul>-->
<!--                                                        </div>-->
<!--                                                    </div>-->

<!--                                                    <div data-class="" data-width="2" data-hidewcol=""-->
<!--                                                         id="tb-megamenu-column-12"-->
<!--                                                         class="tb-megamenu-column span2  mega-col-nav">-->
<!--                                                        <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                            <ul class="tb-megamenu-subnav mega-nav level-1 items-1">-->
<!--                                                                <li data-id="3836" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="1" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega mega-group">-->


<!--                                                                    <a href="/portal/cn/fw/rgzn/guizhangzhidu/notice3"-->
<!--                                                                       class="">-->

<!--                                                                        借阅规则 <span class="caret"></span>-->
<!--                                                                    </a>-->


<!--                                                                    <div data-class="" data-width=""-->
<!--                                                                         class="tb-megamenu-submenu mega-group-ct nav-child">-->
<!--                                                                        <div class="mega-dropdown-inner">-->
<!--                                                                            <div class="tb-megamenu-row row-fluid">-->
<!--                                                                                <div data-class="" data-width="12"-->
<!--                                                                                     data-hidewcol="0"-->
<!--                                                                                     id="tb-megamenu-column-11"-->
<!--                                                                                     class="tb-megamenu-column span12  mega-col-nav">-->
<!--                                                                                    <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                                                        <ul class="tb-megamenu-subnav mega-nav level-2 items-5">-->
<!--                                                                                            <li data-id="1631"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/rgzn/guizhangzhidu/notice3"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    外借册数和期限 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1633"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/rgzn/guizhangzhidu/notice4"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    馆藏借阅制度 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1634"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/rgzn/guizhangzhidu/notice16"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    各阅览室规章 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1642"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/jy/jybl/shineiyuelan"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    室内阅览 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1644"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/rgzn/guizhangzhidu/notice11"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    逾期与遗失 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                        </ul>-->
<!--                                                                                    </div>-->
<!--                                                                                </div>-->
<!--                                                                            </div>-->
<!--                                                                        </div>-->
<!--                                                                    </div>-->

<!--                                                                </li>-->
<!--                                                            </ul>-->
<!--                                                        </div>-->
<!--                                                    </div>-->

<!--                                                    <div data-class="" data-width="2" data-hidewcol=""-->
<!--                                                         id="tb-megamenu-column-14"-->
<!--                                                         class="tb-megamenu-column span2  mega-col-nav">-->
<!--                                                        <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                            <ul class="tb-megamenu-subnav mega-nav level-1 items-1">-->
<!--                                                                <li data-id="1627" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="1" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega mega-group">-->


<!--                                                                    <a href="/portal/cn/jy/jybl/jiehuanxujie" class="">-->

<!--                                                                        借阅办理 <span class="caret"></span>-->
<!--                                                                    </a>-->


<!--                                                                    <div data-class="" data-width=""-->
<!--                                                                         class="tb-megamenu-submenu mega-group-ct nav-child">-->
<!--                                                                        <div class="mega-dropdown-inner">-->
<!--                                                                            <div class="tb-megamenu-row row-fluid">-->
<!--                                                                                <div data-class="" data-width="12"-->
<!--                                                                                     data-hidewcol="0"-->
<!--                                                                                     id="tb-megamenu-column-13"-->
<!--                                                                                     class="tb-megamenu-column span12  mega-col-nav">-->
<!--                                                                                    <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                                                        <ul class="tb-megamenu-subnav mega-nav level-2 items-5">-->
<!--                                                                                            <li data-id="3932"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/jy/jybl/kaijia"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    开架借阅服务 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3943"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/jyfw/jybl/bjjyfw"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    闭架借阅服务 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3944"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/jyfw/jybl/cjygh"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    出借与归还 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3945"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/jyfw/jybl/xjyyj"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    续借与预约 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3957"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/rgzn/guancangfenbu"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    服务时间与分布 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                        </ul>-->
<!--                                                                                    </div>-->
<!--                                                                                </div>-->
<!--                                                                            </div>-->
<!--                                                                        </div>-->
<!--                                                                    </div>-->

<!--                                                                </li>-->
<!--                                                            </ul>-->
<!--                                                        </div>-->
<!--                                                    </div>-->

<!--                                                    <div data-class="" data-width="2" data-hidewcol=""-->
<!--                                                         id="tb-megamenu-column-16"-->
<!--                                                         class="tb-megamenu-column span2  mega-col-nav">-->
<!--                                                        <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                            <ul class="tb-megamenu-subnav mega-nav level-1 items-1">-->
<!--                                                                <li data-id="1628" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="1" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega mega-group">-->


<!--                                                                    <a href="/portal/cn/fw/gjhj/fuwuneirong" class="">-->

<!--                                                                        馆际互借&文献传递 <span class="caret"></span>-->
<!--                                                                    </a>-->


<!--                                                                    <div data-class="" data-width=""-->
<!--                                                                         class="tb-megamenu-submenu mega-group-ct nav-child">-->
<!--                                                                        <div class="mega-dropdown-inner">-->
<!--                                                                            <div class="tb-megamenu-row row-fluid">-->
<!--                                                                                <div data-class="" data-width="12"-->
<!--                                                                                     data-hidewcol="0"-->
<!--                                                                                     id="tb-megamenu-column-15"-->
<!--                                                                                     class="tb-megamenu-column span12  mega-col-nav">-->
<!--                                                                                    <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                                                        <ul class="tb-megamenu-subnav mega-nav level-2 items-7">-->
<!--                                                                                            <li data-id="3554"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/gjhj/gonggao"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    公告 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1647"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/gjhj/fuwuneirong"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    服务内容 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1649"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/gjhj/tijiaoshenqing"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    提交申请 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3555"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/gjhj/youhui"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    收费标准 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3556"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/gjhj/changyongshumu"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    校外查询系统 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3557"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/gjhj/lianxi"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    联系方式 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3558"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/gjhj/banquan"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    版权声明 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                        </ul>-->
<!--                                                                                    </div>-->
<!--                                                                                </div>-->
<!--                                                                            </div>-->
<!--                                                                        </div>-->
<!--                                                                    </div>-->

<!--                                                                </li>-->
<!--                                                            </ul>-->
<!--                                                        </div>-->
<!--                                                    </div>-->

<!--                                                    <div data-class="" data-width="2" data-hidewcol=""-->
<!--                                                         id="tb-megamenu-column-18"-->
<!--                                                         class="tb-megamenu-column span2  mega-col-nav">-->
<!--                                                        <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                            <ul class="tb-megamenu-subnav mega-nav level-1 items-3">-->
<!--                                                                <li data-id="1629" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="1" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega mega-group active active-trail">-->


<!--                                                                    <a href="/portal/cn/fw/ydtj/jiaoshoutuijian"-->
<!--                                                                       class="active-trail">-->

<!--                                                                        阅读推荐 <span class="caret"></span>-->
<!--                                                                    </a>-->


<!--                                                                    <div data-class="" data-width=""-->
<!--                                                                         class="tb-megamenu-submenu mega-group-ct nav-child">-->
<!--                                                                        <div class="mega-dropdown-inner">-->
<!--                                                                            <div class="tb-megamenu-row row-fluid">-->
<!--                                                                                <div data-class="" data-width="12"-->
<!--                                                                                     data-hidewcol="0"-->
<!--                                                                                     id="tb-megamenu-column-17"-->
<!--                                                                                     class="tb-megamenu-column span12  mega-col-nav">-->
<!--                                                                                    <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                                                        <ul class="tb-megamenu-subnav mega-nav level-2 items-3">-->
<!--                                                                                            <li data-id="1651"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://newbooks.lib.pku.edu.cn/"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    新书通报 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1652"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega active active-trail">-->


<!--                                                                                                <a href="/portal/cn/fw/ydtj/jiaoshoutuijian"-->
<!--                                                                                                   class="active-trail">-->

<!--                                                                                                    教授推荐阅读 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1653"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/ydtj/xuezituijian"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    学子推荐阅读 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                        </ul>-->
<!--                                                                                    </div>-->
<!--                                                                                </div>-->
<!--                                                                            </div>-->
<!--                                                                        </div>-->
<!--                                                                    </div>-->

<!--                                                                </li>-->
<!--                                                                <li data-id="4087" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="0" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega">-->


<!--                                                                    <a href="/portal/cn/jy/jybl/jieyuejiansuoyanshi"-->
<!--                                                                       class="">-->

<!--                                                                        检索借阅演示 </a>-->


<!--                                                                </li>-->
<!--                                                                <li data-id="3922" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="0" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega">-->


<!--                                                                    <a href="http://d2d.lib.pku.edu.cn" class="">-->

<!--                                                                        上门借还服务 </a>-->


<!--                                                                </li>-->
<!--                                                            </ul>-->
<!--                                                        </div>-->
<!--                                                    </div>-->

<!--                                                    <div data-showblocktitle="1" data-class="" data-width="2"-->
<!--                                                         data-hidewcol="" id="tb-megamenu-column-19"-->
<!--                                                         class="tb-megamenu-column span2  mega-col-nav">-->
<!--                                                        <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                            <div data-type="block" data-block="block&#45;&#45;36"-->
<!--                                                                 class="tb-megamenu-block tb-block tb-megamenu-block">-->
<!--                                                                <div class="block-inner">-->
<!--                                                                    <section id="block-block-36"-->
<!--                                                                             class="block block-block clearfix">-->


<!--                                                                        <ul class="menu2018-button-list">-->
<!--                                                                            <li class="menu2018-button">-->
<!--                                                                                <a href="http://d2d.lib.pku.edu.cn/"-->
<!--                                                                                   target="_blank">上门借还服务</a></li>-->
<!--                                                                            <li class="menu2018-button">-->
<!--                                                                                <a href="/portal/cn/jy/jybl/jieyuejiansuoyanshi">检索借阅演示</a>-->
<!--                                                                            </li>-->
<!--                                                                        </ul>-->
<!--                                                                    </section>-->
<!--                                                                </div>-->
<!--                                                            </div>-->
<!--                                                        </div>-->
<!--                                                    </div>-->
<!--                                                </div>-->
<!--                                            </div>-->
<!--                                        </div>-->

<!--                                    </li>-->
<!--                                    <li data-id="1590" data-level="1" data-type="menu_item" data-class="" data-xicon=""-->
<!--                                        data-caption="" data-alignsub="justify" data-group="0" data-hidewcol="0"-->
<!--                                        data-hidesub="0"-->
<!--                                        class="tb-megamenu-item level-1 mega mega-align-justify dropdown">-->

<!--                                        <span>科研服务</span>-->


<!--                                        <div data-class="research-list" data-width=""-->
<!--                                             class="tb-megamenu-submenu research-list dropdown-menu mega-dropdown-menu nav-child">-->
<!--                                            <div class="mega-dropdown-inner">-->
<!--                                                <div class="tb-megamenu-row row-fluid">-->
<!--                                                    <div data-class="" data-width="2" data-hidewcol=""-->
<!--                                                         id="tb-megamenu-column-21"-->
<!--                                                         class="tb-megamenu-column span2  mega-col-nav">-->
<!--                                                        <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                            <ul class="tb-megamenu-subnav mega-nav level-1 items-1">-->
<!--                                                                <li data-id="1660" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="1" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega mega-group">-->


<!--                                                                    <a href="/portal/cn/fw/kjcx/jianjie" class="">-->

<!--                                                                        科技查新 <span class="caret"></span>-->
<!--                                                                    </a>-->


<!--                                                                    <div data-class="" data-width=""-->
<!--                                                                         class="tb-megamenu-submenu mega-group-ct nav-child">-->
<!--                                                                        <div class="mega-dropdown-inner">-->
<!--                                                                            <div class="tb-megamenu-row row-fluid">-->
<!--                                                                                <div data-class="" data-width="12"-->
<!--                                                                                     data-hidewcol="0"-->
<!--                                                                                     id="tb-megamenu-column-20"-->
<!--                                                                                     class="tb-megamenu-column span12  mega-col-nav">-->
<!--                                                                                    <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                                                        <ul class="tb-megamenu-subnav mega-nav level-2 items-5">-->
<!--                                                                                            <li data-id="1693"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/kjcx/jianjie"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    查新站简介 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1694"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/kjcx/liucheng"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    查新流程 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1695"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/kjcx/shoufei"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    收费标准 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1696"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/kjcx/lianxi"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    联系方式 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1697"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/kjcx/xiangguanzhandian"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    相关站点 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                        </ul>-->
<!--                                                                                    </div>-->
<!--                                                                                </div>-->
<!--                                                                            </div>-->
<!--                                                                        </div>-->
<!--                                                                    </div>-->

<!--                                                                </li>-->
<!--                                                            </ul>-->
<!--                                                        </div>-->
<!--                                                    </div>-->

<!--                                                    <div data-class="" data-width="2" data-hidewcol=""-->
<!--                                                         id="tb-megamenu-column-23"-->
<!--                                                         class="tb-megamenu-column span2  mega-col-nav">-->
<!--                                                        <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                            <ul class="tb-megamenu-subnav mega-nav level-1 items-1">-->
<!--                                                                <li data-id="1661" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="1" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega mega-group">-->


<!--                                                                    <a href="/portal/cn/fw/xkfw/xuekeguanyuan" class="">-->

<!--                                                                        学科服务 <span class="caret"></span>-->
<!--                                                                    </a>-->


<!--                                                                    <div data-class="" data-width=""-->
<!--                                                                         class="tb-megamenu-submenu mega-group-ct nav-child">-->
<!--                                                                        <div class="mega-dropdown-inner">-->
<!--                                                                            <div class="tb-megamenu-row row-fluid">-->
<!--                                                                                <div data-class="" data-width="12"-->
<!--                                                                                     data-hidewcol="0"-->
<!--                                                                                     id="tb-megamenu-column-22"-->
<!--                                                                                     class="tb-megamenu-column span12  mega-col-nav">-->
<!--                                                                                    <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                                                        <ul class="tb-megamenu-subnav mega-nav level-2 items-6">-->
<!--                                                                                            <li data-id="1699"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/xkfw/xuekexinximenhu"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    学科信息门户 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1700"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/xkfw/qianyanzuizhong"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    学科课题咨询 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1701"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/kyzc/ketizixun"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    学科情报订阅 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1702"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/xkfw/lunwenxiezuojisuyang"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    学术规范与投稿指南 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1703"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/kyzc/jingzhengqingbao"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    学科竞争力分析报告 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1704"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/kyzc/zhishichanquan"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    学科前沿报告 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                        </ul>-->
<!--                                                                                    </div>-->
<!--                                                                                </div>-->
<!--                                                                            </div>-->
<!--                                                                        </div>-->
<!--                                                                    </div>-->

<!--                                                                </li>-->
<!--                                                            </ul>-->
<!--                                                        </div>-->
<!--                                                    </div>-->

<!--                                                    <div data-class="" data-width="2" data-hidewcol=""-->
<!--                                                         id="tb-megamenu-column-25"-->
<!--                                                         class="tb-megamenu-column span2  mega-col-nav">-->
<!--                                                        <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                            <ul class="tb-megamenu-subnav mega-nav level-1 items-1">-->
<!--                                                                <li data-id="1664" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="1" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega mega-group">-->


<!--                                                                    <a href="/portal/cn/fw/zlxx/zhuanlipeixun" class="">-->

<!--                                                                        知识产权服务 <span class="caret"></span>-->
<!--                                                                    </a>-->


<!--                                                                    <div data-class="" data-width=""-->
<!--                                                                         class="tb-megamenu-submenu mega-group-ct nav-child">-->
<!--                                                                        <div class="mega-dropdown-inner">-->
<!--                                                                            <div class="tb-megamenu-row row-fluid">-->
<!--                                                                                <div data-class="" data-width="12"-->
<!--                                                                                     data-hidewcol="0"-->
<!--                                                                                     id="tb-megamenu-column-24"-->
<!--                                                                                     class="tb-megamenu-column span12  mega-col-nav">-->
<!--                                                                                    <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                                                        <ul class="tb-megamenu-subnav mega-nav level-2 items-6">-->
<!--                                                                                            <li data-id="1708"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/zlxx/zhuanlipeixun"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    知识产权培训 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1709"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/zlxx/zhuanlizixun"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    知识产权咨询 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1710"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/zlxx/zhuanlifenxi"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    专利分析报告 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1711"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/zlxx/zhuanliziyuan"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    专利资源导航 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="4086"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="https://ips.lib.pku.edu.cn/"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    知识产权信息服务平台 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3966"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://ggfw.cnipa.gov.cn:8010"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    国家知识产权公共服务网 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                        </ul>-->
<!--                                                                                    </div>-->
<!--                                                                                </div>-->
<!--                                                                            </div>-->
<!--                                                                        </div>-->
<!--                                                                    </div>-->

<!--                                                                </li>-->
<!--                                                            </ul>-->
<!--                                                        </div>-->
<!--                                                    </div>-->

<!--                                                    <div data-class="" data-width="2" data-hidewcol=""-->
<!--                                                         id="tb-megamenu-column-27"-->
<!--                                                         class="tb-megamenu-column span2  mega-col-nav">-->
<!--                                                        <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                            <ul class="tb-megamenu-subnav mega-nav level-1 items-5">-->
<!--                                                                <li data-id="1663" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="1" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega mega-group">-->


<!--                                                                    <a href="/portal/cn/fw/sjfw/keyanshuju" class="">-->

<!--                                                                        数据服务 <span class="caret"></span>-->
<!--                                                                    </a>-->


<!--                                                                    <div data-class="" data-width=""-->
<!--                                                                         class="tb-megamenu-submenu mega-group-ct nav-child">-->
<!--                                                                        <div class="mega-dropdown-inner">-->
<!--                                                                            <div class="tb-megamenu-row row-fluid">-->
<!--                                                                                <div data-class="" data-width="12"-->
<!--                                                                                     data-hidewcol="0"-->
<!--                                                                                     id="tb-megamenu-column-26"-->
<!--                                                                                     class="tb-megamenu-column span12  mega-col-nav">-->
<!--                                                                                    <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                                                        <ul class="tb-megamenu-subnav mega-nav level-2 items-5">-->
<!--                                                                                            <li data-id="1730"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="1"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://opendata.pku.edu.cn/"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    北大开放数据 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1728"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="1"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="https://ir.pku.edu.cn"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    机构知识库 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1731"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="1"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://ccj.pku.edu.cn"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    北大期刊网 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1732"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="1"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://scholar.pku.edu.cn/"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    北大学者 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1706"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/sjfw/xuekeshuju"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    学科开放数据导航 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                        </ul>-->
<!--                                                                                    </div>-->
<!--                                                                                </div>-->
<!--                                                                            </div>-->
<!--                                                                        </div>-->
<!--                                                                    </div>-->

<!--                                                                </li>-->
<!--                                                                <li data-id="1982" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="0" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega">-->


<!--                                                                    <a href="/portal/cn/fw/chashouchayin" class="">-->

<!--                                                                        查收查引 </a>-->


<!--                                                                </li>-->
<!--                                                                <li data-id="3923" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="0" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega">-->


<!--                                                                    <a href="https://weibo.com/u/5963822635?profile_ftype=1&is_all=1"-->
<!--                                                                       class="">-->

<!--                                                                        未名学术快报 </a>-->


<!--                                                                </li>-->
<!--                                                                <li data-id="2559" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="0" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega">-->


<!--                                                                    <a href="http://hxqk.lib.pku.edu.cn/" class="">-->

<!--                                                                        核心期刊要目 </a>-->


<!--                                                                </li>-->
<!--                                                                <li data-id="1692" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="0" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega">-->


<!--                                                                    <a href="/portal/cn/xsjl/shuzirenwen" class="">-->

<!--                                                                        北京大学数字人文工作坊 </a>-->


<!--                                                                </li>-->
<!--                                                            </ul>-->
<!--                                                        </div>-->
<!--                                                    </div>-->

<!--                                                    <div data-showblocktitle="1" data-class="" data-width="4"-->
<!--                                                         data-hidewcol="" id="tb-megamenu-column-28"-->
<!--                                                         class="tb-megamenu-column span4  mega-col-nav">-->
<!--                                                        <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                            <div data-type="block" data-block="block&#45;&#45;38"-->
<!--                                                                 class="tb-megamenu-block tb-block tb-megamenu-block">-->
<!--                                                                <div class="block-inner">-->
<!--                                                                    <section id="block-block-38"-->
<!--                                                                             class="block block-block clearfix">-->


<!--                                                                        <ul class="menu2018-button-list">-->
<!--                                                                            <li class="menu2018-button">-->
<!--                                                                                <a href="/portal/fw/chashouchayin"-->
<!--                                                                                   target="_blank">查收查引</a></li>-->
<!--                                                                            <li class="menu2018-button">-->
<!--                                                                                <a href="http://weibo.com/u/5963822635?profile_ftype=1&amp;is_all=1"-->
<!--                                                                                   target="_blank">未名学术快报</a></li>-->
<!--                                                                            <li class="menu2018-button">-->
<!--                                                                                <a href="http://hxqk.lib.pku.edu.cn/"-->
<!--                                                                                   target="_blank">核心期刊要目</a></li>-->
<!--                                                                            <li class="menu2018-button">-->
<!--                                                                                <a href="/portal/cn/xsjl/shuzirenwen"-->
<!--                                                                                   target="_blank">北京大学数字人文</a>-->
<!--                                                                            </li>-->
<!--                                                                        </ul>-->
<!--                                                                    </section>-->
<!--                                                                </div>-->
<!--                                                            </div>-->
<!--                                                        </div>-->
<!--                                                    </div>-->
<!--                                                </div>-->
<!--                                            </div>-->
<!--                                        </div>-->

<!--                                    </li>-->
<!--                                    <li data-id="1589" data-level="1" data-type="menu_item" data-class="" data-xicon=""-->
<!--                                        data-caption="" data-alignsub="justify" data-group="0" data-hidewcol="0"-->
<!--                                        data-hidesub="0"-->
<!--                                        class="tb-megamenu-item level-1 mega mega-align-justify dropdown">-->

<!--                                        <span>互动交流</span>-->


<!--                                        <div data-class="study-list" data-width=""-->
<!--                                             class="tb-megamenu-submenu study-list dropdown-menu mega-dropdown-menu nav-child">-->
<!--                                            <div class="mega-dropdown-inner">-->
<!--                                                <div class="tb-megamenu-row row-fluid">-->
<!--                                                    <div data-class="" data-width="2" data-hidewcol=""-->
<!--                                                         id="tb-megamenu-column-30"-->
<!--                                                         class="tb-megamenu-column span2  mega-col-nav">-->
<!--                                                        <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                            <ul class="tb-megamenu-subnav mega-nav level-1 items-1">-->
<!--                                                                <li data-id="1656" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="1" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega mega-group">-->


<!--                                                                    <a href="/portal/cn/hdjl/ydhd" class="">-->

<!--                                                                        阅读服务 <span class="caret"></span>-->
<!--                                                                    </a>-->


<!--                                                                    <div data-class="" data-width=""-->
<!--                                                                         class="tb-megamenu-submenu mega-group-ct nav-child">-->
<!--                                                                        <div class="mega-dropdown-inner">-->
<!--                                                                            <div class="tb-megamenu-row row-fluid">-->
<!--                                                                                <div data-class="" data-width="12"-->
<!--                                                                                     data-hidewcol="0"-->
<!--                                                                                     id="tb-megamenu-column-29"-->
<!--                                                                                     class="tb-megamenu-column span12  mega-col-nav">-->
<!--                                                                                    <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                                                        <ul class="tb-megamenu-subnav mega-nav level-2 items-5">-->
<!--                                                                                            <li data-id="3952"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/hdjl/ydfw/ydhd"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    阅读活动 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3953"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/hdjl/ydfw/dsfx"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    读书分享 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3954"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/hdjl/ydfw/ljyr"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    两季一日活动 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1676"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/zhanlan"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    展览 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1674"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/xxzc/xctg/yuedubaogao"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    年度阅读报告 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                        </ul>-->
<!--                                                                                    </div>-->
<!--                                                                                </div>-->
<!--                                                                            </div>-->
<!--                                                                        </div>-->
<!--                                                                    </div>-->

<!--                                                                </li>-->
<!--                                                            </ul>-->
<!--                                                        </div>-->
<!--                                                    </div>-->

<!--                                                    <div data-class="" data-width="4" data-hidewcol=""-->
<!--                                                         id="tb-megamenu-column-33"-->
<!--                                                         class="tb-megamenu-column span4  mega-col-nav">-->
<!--                                                        <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                            <ul class="tb-megamenu-subnav mega-nav level-1 items-1">-->
<!--                                                                <li data-id="1655" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="1" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega mega-group">-->


<!--                                                                    <a href="/portal/cn/hdjl/fwyy/zhanlanzhanshi"-->
<!--                                                                       class="">-->

<!--                                                                        服务预约 <span class="caret"></span>-->
<!--                                                                    </a>-->


<!--                                                                    <div data-class="" data-width=""-->
<!--                                                                         class="tb-megamenu-submenu mega-group-ct nav-child">-->
<!--                                                                        <div class="mega-dropdown-inner">-->
<!--                                                                            <div class="tb-megamenu-row row-fluid">-->
<!--                                                                                <div data-class="" data-width="6"-->
<!--                                                                                     data-hidewcol="0"-->
<!--                                                                                     id="tb-megamenu-column-31"-->
<!--                                                                                     class="tb-megamenu-column span6  mega-col-nav">-->
<!--                                                                                    <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                                                        <ul class="tb-megamenu-subnav mega-nav level-2 items-5">-->
<!--                                                                                            <li data-id="3967"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/hdjl/fwyy/baogaoting"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    南北配楼报告厅 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3930"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/hdjl/fwyy/zhanlanzhanshi"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    展览展示服务 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3931"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/hdjl/fwyy/yantaoshi"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    研讨室 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3946"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/hdjl/fwyy/yxzz"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    研修专座 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3947"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/hdjl/fwyy/hst"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    和声厅 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                        </ul>-->
<!--                                                                                    </div>-->
<!--                                                                                </div>-->

<!--                                                                                <div data-class="" data-width="6"-->
<!--                                                                                     data-hidewcol=""-->
<!--                                                                                     id="tb-megamenu-column-32"-->
<!--                                                                                     class="tb-megamenu-column span6  mega-col-nav">-->
<!--                                                                                    <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                                                        <ul class="tb-megamenu-subnav mega-nav level-2 items-4">-->
<!--                                                                                            <li data-id="3904"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://yuyue.lib.pku.edu.cn/"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    沙特/古籍阅览室 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3905"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://yyrg.lib.pku.edu.cn/login.html"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    校外读者入馆 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1671"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://www.lib.pku.edu.cn/portal/cn/xxzc/tycx?qt-content_page_innovation=2#qt-content_page_innovation"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    3D打印 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3959"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/kongjiansheshi/zizhufuwu"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    自助服务 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                        </ul>-->
<!--                                                                                    </div>-->
<!--                                                                                </div>-->
<!--                                                                            </div>-->
<!--                                                                        </div>-->
<!--                                                                    </div>-->

<!--                                                                </li>-->
<!--                                                            </ul>-->
<!--                                                        </div>-->
<!--                                                    </div>-->

<!--                                                    <div data-class="" data-width="2" data-hidewcol=""-->
<!--                                                         id="tb-megamenu-column-35"-->
<!--                                                         class="tb-megamenu-column span2  mega-col-nav">-->
<!--                                                        <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                            <ul class="tb-megamenu-subnav mega-nav level-1 items-1">-->
<!--                                                                <li data-id="1659" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="1" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega mega-group">-->


<!--                                                                    <a href="/portal/cn/fw/yixiaoshijiangzuo/zhuanchangjiangzuo"-->
<!--                                                                       class="">-->

<!--                                                                        教学与培训 <span class="caret"></span>-->
<!--                                                                    </a>-->


<!--                                                                    <div data-class="" data-width=""-->
<!--                                                                         class="tb-megamenu-submenu mega-group-ct nav-child">-->
<!--                                                                        <div class="mega-dropdown-inner">-->
<!--                                                                            <div class="tb-megamenu-row row-fluid">-->
<!--                                                                                <div data-class="" data-width="12"-->
<!--                                                                                     data-hidewcol="0"-->
<!--                                                                                     id="tb-megamenu-column-34"-->
<!--                                                                                     class="tb-megamenu-column span12  mega-col-nav">-->
<!--                                                                                    <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                                                        <ul class="tb-megamenu-subnav mega-nav level-2 items-7">-->
<!--                                                                                            <li data-id="1687"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://www.lib.pku.edu.cn/portal/cn/xxzc/yixiaoshi?qt-content_page_onehour=0#qt-content_page_onehour"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    一小时讲座 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1688"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/yixiaoshijiangzuo/zhuanchangjiangzuo"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    定制讲座 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1689"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/yixiaoshijiangzuo/xinxisuyang"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    信息素养课 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1690"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://il.lib.pku.edu.cn/"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    信息素养能力评测 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1691"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/yixiaoshijiangzuo/xinxisuyangyouxi"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    信息素养手机游戏 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3941"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/hdjl/jxypx/dbtsgy"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    带班图书馆员 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3958"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/fw/yixiaoshijiangzuo/weiketang"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    信息素质教育微课堂 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                        </ul>-->
<!--                                                                                    </div>-->
<!--                                                                                </div>-->
<!--                                                                            </div>-->
<!--                                                                        </div>-->
<!--                                                                    </div>-->

<!--                                                                </li>-->
<!--                                                            </ul>-->
<!--                                                        </div>-->
<!--                                                    </div>-->

<!--                                                    <div data-class="" data-width="2" data-hidewcol=""-->
<!--                                                         id="tb-megamenu-column-37"-->
<!--                                                         class="tb-megamenu-column span2  mega-col-nav">-->
<!--                                                        <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                            <ul class="tb-megamenu-subnav mega-nav level-1 items-3">-->
<!--                                                                <li data-id="3910" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="1" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega mega-group">-->


<!--                                                                    <a href="http://purchase.lib.pku.edu.cn/" class="">-->

<!--                                                                        用户共建 <span class="caret"></span>-->
<!--                                                                    </a>-->


<!--                                                                    <div data-class="" data-width=""-->
<!--                                                                         class="tb-megamenu-submenu mega-group-ct nav-child">-->
<!--                                                                        <div class="mega-dropdown-inner">-->
<!--                                                                            <div class="tb-megamenu-row row-fluid">-->
<!--                                                                                <div data-class="" data-width="12"-->
<!--                                                                                     data-hidewcol="0"-->
<!--                                                                                     id="tb-megamenu-column-36"-->
<!--                                                                                     class="tb-megamenu-column span12  mega-col-nav">-->
<!--                                                                                    <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                                                        <ul class="tb-megamenu-subnav mega-nav level-2 items-2">-->
<!--                                                                                            <li data-id="3911"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="https://purchase.lib.pku.edu.cn/"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    推荐购买 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3912"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/donation"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    捐赠 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                        </ul>-->
<!--                                                                                    </div>-->
<!--                                                                                </div>-->
<!--                                                                            </div>-->
<!--                                                                        </div>-->
<!--                                                                    </div>-->

<!--                                                                </li>-->
<!--                                                                <li data-id="2557" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="0" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega">-->


<!--                                                                    <a href="/portal/cn/zy/dzzy/xueweilunwen/tijiaoyaoqiu"-->
<!--                                                                       class="">-->

<!--                                                                        学位论文提交 </a>-->


<!--                                                                </li>-->
<!--                                                                <li data-id="2558" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="0" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega">-->


<!--                                                                    <a href="/portal/cn/zy/dzzy/chuzhanbaogao/tijiaoyaoqiu"-->
<!--                                                                       class="">-->

<!--                                                                        出站报告提交 </a>-->


<!--                                                                </li>-->
<!--                                                            </ul>-->
<!--                                                        </div>-->
<!--                                                    </div>-->

<!--                                                    <div data-showblocktitle="1" data-class="" data-width="2"-->
<!--                                                         data-hidewcol="" id="tb-megamenu-column-38"-->
<!--                                                         class="tb-megamenu-column span2  mega-col-nav">-->
<!--                                                        <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                            <div data-type="block" data-block="block&#45;&#45;37"-->
<!--                                                                 class="tb-megamenu-block tb-block tb-megamenu-block">-->
<!--                                                                <div class="block-inner">-->
<!--                                                                    <section id="block-block-37"-->
<!--                                                                             class="block block-block clearfix">-->


<!--                                                                        <ul class="menu2018-button-list">-->
<!--                                                                            <li class="menu2018-button">-->
<!--                                                                                <a href="/portal/zy/dzzy/xueweilunwen/tijiaoyaoqiu"-->
<!--                                                                                   target="_blank">学位论文提交</a></li>-->
<!--                                                                            <li class="menu2018-button">-->
<!--                                                                                <a href="/portal/zy/dzzy/chuzhanbaogao/tijiaoyaoqiu"-->
<!--                                                                                   target="_blank">出站报告提交</a></li>-->
<!--                                                                        </ul>-->
<!--                                                                    </section>-->
<!--                                                                </div>-->
<!--                                                            </div>-->
<!--                                                        </div>-->
<!--                                                    </div>-->
<!--                                                </div>-->
<!--                                            </div>-->
<!--                                        </div>-->

<!--                                    </li>-->
<!--                                    <li data-id="3914" data-level="1" data-type="menu_item" data-class="" data-xicon=""-->
<!--                                        data-caption="" data-alignsub="right" data-group="0" data-hidewcol="0"-->
<!--                                        data-hidesub="0"-->
<!--                                        class="tb-megamenu-item level-1 mega mega-align-right dropdown">-->

<!--                                        <span>读者指南</span>-->


<!--                                        <div data-class="" data-width="600" style="width: 600px;"-->
<!--                                             class="tb-megamenu-submenu dropdown-menu mega-dropdown-menu nav-child">-->
<!--                                            <div class="mega-dropdown-inner">-->
<!--                                                <div class="tb-megamenu-row row-fluid">-->
<!--                                                    <div data-class="" data-width="4" data-hidewcol=""-->
<!--                                                         id="tb-megamenu-column-40"-->
<!--                                                         class="tb-megamenu-column span4  mega-col-nav">-->
<!--                                                        <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                            <ul class="tb-megamenu-subnav mega-nav level-1 items-1">-->
<!--                                                                <li data-id="3925" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="1" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega mega-group">-->


<!--                                                                    <a href="/portal/cn/dzzn/gzzd/wenminggongyue"-->
<!--                                                                       class="">-->

<!--                                                                        规章制度 <span class="caret"></span>-->
<!--                                                                    </a>-->


<!--                                                                    <div data-class="" data-width=""-->
<!--                                                                         class="tb-megamenu-submenu mega-group-ct nav-child">-->
<!--                                                                        <div class="mega-dropdown-inner">-->
<!--                                                                            <div class="tb-megamenu-row row-fluid">-->
<!--                                                                                <div data-class="" data-width="12"-->
<!--                                                                                     data-hidewcol="0"-->
<!--                                                                                     id="tb-megamenu-column-39"-->
<!--                                                                                     class="tb-megamenu-column span12  mega-col-nav">-->
<!--                                                                                    <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                                                        <ul class="tb-megamenu-subnav mega-nav level-2 items-4">-->
<!--                                                                                            <li data-id="3933"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/dzzn/gzzd/wenminggongyue"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    文明读者公约 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3934"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/dzzn/gzzd/ruguanguanli"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    用户入馆管理办法 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3935"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/dzzn/gzzd/zhengjianguanli"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    借阅证件管理办法 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3936"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/dzzn/gzzd/canguanpaishe"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    参观拍摄管理办法 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                        </ul>-->
<!--                                                                                    </div>-->
<!--                                                                                </div>-->
<!--                                                                            </div>-->
<!--                                                                        </div>-->
<!--                                                                    </div>-->

<!--                                                                </li>-->
<!--                                                            </ul>-->
<!--                                                        </div>-->
<!--                                                    </div>-->

<!--                                                    <div data-class="" data-width="4" data-hidewcol=""-->
<!--                                                         id="tb-megamenu-column-42"-->
<!--                                                         class="tb-megamenu-column span4  mega-col-nav">-->
<!--                                                        <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                            <ul class="tb-megamenu-subnav mega-nav level-1 items-1">-->
<!--                                                                <li data-id="3915" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="1" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega mega-group">-->


<!--                                                                    <a href="/portal/cn/dzzn/xyzl/xiaoyoufuwu" class="">-->

<!--                                                                        校友专栏 <span class="caret"></span>-->
<!--                                                                    </a>-->


<!--                                                                    <div data-class="" data-width=""-->
<!--                                                                         class="tb-megamenu-submenu mega-group-ct nav-child">-->
<!--                                                                        <div class="mega-dropdown-inner">-->
<!--                                                                            <div class="tb-megamenu-row row-fluid">-->
<!--                                                                                <div data-class="" data-width="12"-->
<!--                                                                                     data-hidewcol="0"-->
<!--                                                                                     id="tb-megamenu-column-41"-->
<!--                                                                                     class="tb-megamenu-column span12  mega-col-nav">-->
<!--                                                                                    <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                                                        <ul class="tb-megamenu-subnav mega-nav level-2 items-2">-->
<!--                                                                                            <li data-id="3937"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/dzzn/xyzl/xiaoyoufuwu"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    校友服务 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3939"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://yyrg.lib.pku.edu.cn/login.html"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    校友入馆预约 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                        </ul>-->
<!--                                                                                    </div>-->
<!--                                                                                </div>-->
<!--                                                                            </div>-->
<!--                                                                        </div>-->
<!--                                                                    </div>-->

<!--                                                                </li>-->
<!--                                                            </ul>-->
<!--                                                        </div>-->
<!--                                                    </div>-->

<!--                                                    <div data-class="" data-width="4" data-hidewcol=""-->
<!--                                                         id="tb-megamenu-column-44"-->
<!--                                                         class="tb-megamenu-column span4  mega-col-nav">-->
<!--                                                        <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                            <ul class="tb-megamenu-subnav mega-nav level-1 items-1">-->
<!--                                                                <li data-id="3918" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="1" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega mega-group">-->


<!--                                                                    <a href="/portal/cn/dzzn/xwdz/guanlibanfa" class="">-->

<!--                                                                        校外读者 <span class="caret"></span>-->
<!--                                                                    </a>-->


<!--                                                                    <div data-class="" data-width=""-->
<!--                                                                         class="tb-megamenu-submenu mega-group-ct nav-child">-->
<!--                                                                        <div class="mega-dropdown-inner">-->
<!--                                                                            <div class="tb-megamenu-row row-fluid">-->
<!--                                                                                <div data-class="" data-width="12"-->
<!--                                                                                     data-hidewcol="0"-->
<!--                                                                                     id="tb-megamenu-column-43"-->
<!--                                                                                     class="tb-megamenu-column span12  mega-col-nav">-->
<!--                                                                                    <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                                                        <ul class="tb-megamenu-subnav mega-nav level-2 items-2">-->
<!--                                                                                            <li data-id="3940"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/dzzn/xwdz/guanlibanfa"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    校外读者接待办法 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3921"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="http://yyrg.lib.pku.edu.cn/login.html"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    校外读者预约入馆 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                        </ul>-->
<!--                                                                                    </div>-->
<!--                                                                                </div>-->
<!--                                                                            </div>-->
<!--                                                                        </div>-->
<!--                                                                    </div>-->

<!--                                                                </li>-->
<!--                                                            </ul>-->
<!--                                                        </div>-->
<!--                                                    </div>-->
<!--                                                </div>-->
<!--                                            </div>-->
<!--                                        </div>-->

<!--                                    </li>-->
<!--                                    <li data-id="1592" data-level="1" data-type="menu_item" data-class="" data-xicon=""-->
<!--                                        data-caption="" data-alignsub="right" data-group="0" data-hidewcol="0"-->
<!--                                        data-hidesub="0"-->
<!--                                        class="tb-megamenu-item level-1 mega mega-align-right dropdown">-->

<!--                                        <span>分馆服务</span>-->


<!--                                        <div data-class="branches" data-width=""-->
<!--                                             class="tb-megamenu-submenu branches dropdown-menu mega-dropdown-menu nav-child">-->
<!--                                            <div class="mega-dropdown-inner">-->
<!--                                                <div class="tb-megamenu-row row-fluid">-->
<!--                                                    <div data-class="" data-width="12" data-hidewcol="0"-->
<!--                                                         id="tb-megamenu-column-45"-->
<!--                                                         class="tb-megamenu-column span12  mega-col-nav">-->
<!--                                                        <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                            <ul class="tb-megamenu-subnav mega-nav level-1 items-5">-->
<!--                                                                <li data-id="1712" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="0" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega">-->


<!--                                                                    <a href="http://library.bjmu.edu.cn/" class="">-->

<!--                                                                        医学馆 </a>-->


<!--                                                                </li>-->
<!--                                                                <li data-id="4097" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="0" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega">-->


<!--                                                                    <a href="https://kapl.pku.edu.cn/" class="">-->

<!--                                                                        阿卜杜勒·阿齐兹国王公共图书馆北京大学分馆 </a>-->


<!--                                                                </li>-->
<!--                                                                <li data-id="2723" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="0" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega">-->


<!--                                                                    <a href="/portal/cn/fg/yuanxifenguanlist" class="">-->

<!--                                                                        院系分馆 </a>-->


<!--                                                                </li>-->
<!--                                                                <li data-id="1949" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="0" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega">-->


<!--                                                                    <a href="/portal/cn/fg/gongzuodongtai" class="">-->

<!--                                                                        分馆工作动态 </a>-->


<!--                                                                </li>-->
<!--                                                                <li data-id="1714" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="0" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega">-->


<!--                                                                    <a href="/portal/cn/fg/jieyueshuoming" class="">-->

<!--                                                                        分馆借阅FAQ </a>-->


<!--                                                                </li>-->
<!--                                                            </ul>-->
<!--                                                        </div>-->
<!--                                                    </div>-->
<!--                                                </div>-->
<!--                                            </div>-->
<!--                                        </div>-->

<!--                                    </li>-->
<!--                                    <li data-id="2963" data-level="1" data-type="menu_item" data-class="" data-xicon=""-->
<!--                                        data-caption="" data-alignsub="right" data-group="0" data-hidewcol="0"-->
<!--                                        data-hidesub="0"-->
<!--                                        class="tb-megamenu-item level-1 mega mega-align-right dropdown">-->

<!--                                        <span>关于</span>-->


<!--                                        <div data-class="" data-width="600" style="width: 600px;"-->
<!--                                             class="tb-megamenu-submenu dropdown-menu mega-dropdown-menu nav-child">-->
<!--                                            <div class="mega-dropdown-inner">-->
<!--                                                <div class="tb-megamenu-row row-fluid">-->
<!--                                                    <div data-class="" data-width="4" data-hidewcol="0"-->
<!--                                                         id="tb-megamenu-column-47"-->
<!--                                                         class="tb-megamenu-column span4  mega-col-nav">-->
<!--                                                        <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                            <ul class="tb-megamenu-subnav mega-nav level-1 items-1">-->
<!--                                                                <li data-id="1721" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="1" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega mega-group">-->


<!--                                                                    <a href="/portal/cn/bggk/bgjs/guanzhangjiyu"-->
<!--                                                                       class="">-->

<!--                                                                        关于本馆 <span class="caret"></span>-->
<!--                                                                    </a>-->


<!--                                                                    <div data-class="" data-width=""-->
<!--                                                                         class="tb-megamenu-submenu mega-group-ct nav-child">-->
<!--                                                                        <div class="mega-dropdown-inner">-->
<!--                                                                            <div class="tb-megamenu-row row-fluid">-->
<!--                                                                                <div data-class="" data-width="12"-->
<!--                                                                                     data-hidewcol="0"-->
<!--                                                                                     id="tb-megamenu-column-46"-->
<!--                                                                                     class="tb-megamenu-column span12  mega-col-nav">-->
<!--                                                                                    <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                                                        <ul class="tb-megamenu-subnav mega-nav level-2 items-7">-->
<!--                                                                                            <li data-id="1715"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/bggk/bgjs/guanzhangjiyu"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    馆长致辞 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1716"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/bggk/bgjs/lishiyange"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    本馆介绍 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1717"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/bggk/guanshefengmao"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    馆舍风貌 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1718"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/bggk/zuzhijigou"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    组织机构 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1720"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/bggk/lianxiwomen"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    联系我们 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="2962"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/bggk/laifangyuyue"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    来访预约 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="1727"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/bggk/jiaruwomen"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    加入我们 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                        </ul>-->
<!--                                                                                    </div>-->
<!--                                                                                </div>-->
<!--                                                                            </div>-->
<!--                                                                        </div>-->
<!--                                                                    </div>-->

<!--                                                                </li>-->
<!--                                                            </ul>-->
<!--                                                        </div>-->
<!--                                                    </div>-->

<!--                                                    <div data-class="" data-width="4" data-hidewcol="1"-->
<!--                                                         id="tb-megamenu-column-49"-->
<!--                                                         class="tb-megamenu-column span4  mega-col-nav  hidden-collapse">-->
<!--                                                        <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                            <ul class="tb-megamenu-subnav mega-nav level-1 items-1">-->
<!--                                                                <li data-id="3563" data-level="2" data-type="menu_item"-->
<!--                                                                    data-class="" data-xicon="" data-caption=""-->
<!--                                                                    data-alignsub="" data-group="1" data-hidewcol="0"-->
<!--                                                                    data-hidesub="0"-->
<!--                                                                    class="tb-megamenu-item level-2 mega mega-group">-->


<!--                                                                    <a href="/portal/cn/bggk/kxyj/idl" class="">-->

<!--                                                                        科学研究 <span class="caret"></span>-->
<!--                                                                    </a>-->


<!--                                                                    <div data-class="" data-width=""-->
<!--                                                                         class="tb-megamenu-submenu mega-group-ct nav-child">-->
<!--                                                                        <div class="mega-dropdown-inner">-->
<!--                                                                            <div class="tb-megamenu-row row-fluid">-->
<!--                                                                                <div data-class="" data-width="12"-->
<!--                                                                                     data-hidewcol="0"-->
<!--                                                                                     id="tb-megamenu-column-48"-->
<!--                                                                                     class="tb-megamenu-column span12  mega-col-nav">-->
<!--                                                                                    <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                                                        <ul class="tb-megamenu-subnav mega-nav level-2 items-4">-->
<!--                                                                                            <li data-id="3564"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/bggk/keyanxiangmu"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    科研项目 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3568"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/bggk/kxyj/idl"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    北京大学数字图书馆研究所 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3569"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/bggk/kxyj/yzsdwx"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    北京大学亚洲史地文献研究中心 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                            <li data-id="3570"-->
<!--                                                                                                data-level="3"-->
<!--                                                                                                data-type="menu_item"-->
<!--                                                                                                data-class=""-->
<!--                                                                                                data-xicon=""-->
<!--                                                                                                data-caption=""-->
<!--                                                                                                data-alignsub=""-->
<!--                                                                                                data-group="0"-->
<!--                                                                                                data-hidewcol="0"-->
<!--                                                                                                data-hidesub="0"-->
<!--                                                                                                class="tb-megamenu-item level-3 mega">-->


<!--                                                                                                <a href="/portal/cn/bggk/xueshuweiyuanhui"-->
<!--                                                                                                   class="">-->

<!--                                                                                                    学术委员会 </a>-->


<!--                                                                                            </li>-->
<!--                                                                                        </ul>-->
<!--                                                                                    </div>-->
<!--                                                                                </div>-->
<!--                                                                            </div>-->
<!--                                                                        </div>-->
<!--                                                                    </div>-->

<!--                                                                </li>-->
<!--                                                            </ul>-->
<!--                                                        </div>-->
<!--                                                    </div>-->

<!--                                                    <div data-showblocktitle="1" data-class="" data-width="4"-->
<!--                                                         data-hidewcol="" id="tb-megamenu-column-50"-->
<!--                                                         class="tb-megamenu-column span4  mega-col-nav">-->
<!--                                                        <div class="tb-megamenu-column-inner mega-inner clearfix">-->
<!--                                                            <div data-type="block" data-block="block&#45;&#45;69"-->
<!--                                                                 class="tb-megamenu-block tb-block tb-megamenu-block">-->
<!--                                                                <div class="block-inner">-->
<!--                                                                    <section id="block-block-69"-->
<!--                                                                             class="block block-block clearfix">-->


<!--                                                                        &lt;!&ndash;<p>-->
<!--	<img onclick="window.open('http://2020.lib.pku.edu.cn')" src="/static/picture/2020.jpg" style="cursor:pointer;" /></p>&ndash;&gt;-->
<!--                                                                        <p style="margin-top:10px;border:none;">-->
<!--                                                                            <img onclick="window.open('http://media.lib.pku.edu.cn/index.php?m=content&amp;c=index&amp;a=show&amp;catid=33&amp;id=7301')"-->
<!--                                                                                 src="/static/picture/120-aboutus.png"-->
<!--                                                                                 style="cursor:pointer;"/></p>-->

<!--                                                                    </section>-->
<!--                                                                </div>-->
<!--                                                            </div>-->
<!--                                                        </div>-->
<!--                                                    </div>-->
<!--                                                </div>-->
<!--                                            </div>-->
<!--                                        </div>-->

<!--                                    </li>-->
<!--                                </ul>-->
<!--                            </div>-->
<!--                        </div>-->

<!--                    </section>-->
<!--                    <section id="block-block-45" class="block block-block clearfix">-->


<!--                        &lt;!&ndash; 自定义区块开始：首屏资源搜索框的开关按钮 &ndash;&gt;-->
<!--                        <div id="custom-global-top-search-switch">-->
<!--                            <p title="展开/收起搜索面板">-->
<!--                                <span class="glyphicon glyphicon-search" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>搜索图书馆资源</span>-->
<!--                                <img id="custom-global-top-search-switch-arrow"-->
<!--                                     src="/static/picture/custom-global-top-search-arrow.png"/></p>-->
<!--                        </div>-->
<!--                        &lt;!&ndash; 自定义区块结束 &ndash;&gt;-->
<!--                    </section>-->
<!--                    <section id="block-superfish-1" class="block block-superfish clearfix">-->


<!--                        <ul id="superfish-1"-->
<!--                            class="menu sf-menu sf-menu-menu2018 sf-horizontal sf-style-white sf-total-items-7 sf-parent-items-7 sf-single-items-0">-->
<!--                            <li id="menu-3036-1"-->
<!--                                class="first odd sf-item-1 sf-depth-1 sf-total-children-3 sf-parent-children-3 sf-single-children-0 menuparent">-->
<!--                                <span title="" class="sf-depth-1 menuparent nolink">文献资源</span>-->
<!--                                <ul>-->
<!--                                    <li id="menu-1594-1"-->
<!--                                        class="first odd sf-item-1 sf-depth-2 sf-total-children-11 sf-parent-children-0 sf-single-children-11 menuparent">-->
<!--                                        <a href="/portal/cn/zy/zzzy/guji" class="sf-depth-2 menuparent">馆藏资源</a>-->
<!--                                        <ul>-->
<!--                                            <li id="menu-1599-1" class="first odd sf-item-1 sf-depth-3 sf-no-children">-->
<!--                                                <a href="http://dbnav.lib.pku.edu.cn/" title=""-->
<!--                                                   class="sf-depth-3">数据库</a></li>-->
<!--                                            <li id="menu-1624-1"-->
<!--                                                class="middle even sf-item-2 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="http://zm8lp2fe5j.search.serialssolutions.com/ejp/?libHash=ZM8LP2FE5J#/?language=zh-CN&amp;titleType=BOOKS"-->
<!--                                                    title="" class="sf-depth-3">电子图书</a></li>-->
<!--                                            <li id="menu-1598-1" class="middle odd sf-item-3 sf-depth-3 sf-no-children">-->
<!--                                                <a href="http://zm8lp2fe5j.search.serialssolutions.com/ejp/?libHash=ZM8LP2FE5J#/?language=zh-CN&amp;titleType=JOURNALS"-->
<!--                                                   title="" class="sf-depth-3">电子期刊</a></li>-->
<!--                                            <li id="menu-1601-1"-->
<!--                                                class="middle even sf-item-4 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/zy/zzzy/guji" title="" class="sf-depth-3">古籍</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-1602-1" class="middle odd sf-item-5 sf-depth-3 sf-no-children">-->
<!--                                                <a href="http://media.lib.pku.edu.cn/" title=""-->
<!--                                                   class="sf-depth-3">视频/音频</a></li>-->
<!--                                            <li id="menu-1603-1"-->
<!--                                                class="middle even sf-item-6 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="http://appendcd.lib.pku.edu.cn/" title="" class="sf-depth-3">随书光盘</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-1607-1" class="middle odd sf-item-7 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/zy/software" title=""-->
<!--                                                   class="sf-depth-3">工具与软件</a></li>-->
<!--                                            <li id="menu-1600-1"-->
<!--                                                class="middle even sf-item-8 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="http://dbnav.lib.pku.edu.cn/newhomepage?field_fenlei_neirongleixing_tid%5B%5D=35"-->
<!--                                                    title="" class="sf-depth-3">学位论文</a></li>-->
<!--                                            <li id="menu-1604-1" class="middle odd sf-item-9 sf-depth-3 sf-no-children">-->
<!--                                                <a href="http://dbnav.lib.pku.edu.cn/newhomepage?field_fenlei_neirongleixing_tid%5B%5D=34"-->
<!--                                                   title="" class="sf-depth-3">报纸</a></li>-->
<!--                                            <li id="menu-1605-1"-->
<!--                                                class="middle even sf-item-10 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="http://dbnav.lib.pku.edu.cn/newhomepage?field_fenlei_neirongleixing_tid%5B%5D=38"-->
<!--                                                    title="" class="sf-depth-3">统计数据/研究数据</a></li>-->
<!--                                            <li id="menu-1606-1" class="last odd sf-item-11 sf-depth-3 sf-no-children">-->
<!--                                                <a href="http://dbnav.lib.pku.edu.cn/newhomepage?field_fenlei_neirongleixing_tid%5B%5D=37"-->
<!--                                                   title="" class="sf-depth-3">档案</a></li>-->
<!--                                        </ul>-->
<!--                                    </li>-->
<!--                                    <li id="menu-1632-1"-->
<!--                                        class="middle even sf-item-2 sf-depth-2 sf-total-children-11 sf-parent-children-0 sf-single-children-11 menuparent">-->
<!--                                        <a href="/portal/cn/zy/tszy" class="sf-depth-2 menuparent">特色资源</a>-->
<!--                                        <ul>-->
<!--                                            <li id="menu-1608-1" class="first odd sf-item-1 sf-depth-3 sf-no-children">-->
<!--                                                <a href="http://rbdl.calis.edu.cn/aopac/indexold.jsp" title=""-->
<!--                                                   class="sf-depth-3">古文献资源库</a></li>-->
<!--                                            <li id="menu-1609-1"-->
<!--                                                class="middle even sf-item-2 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="http://media.lib.pku.edu.cn/index.php?m=content&amp;c=index&amp;a=lists&amp;catid=33&amp;sserial=3713"-->
<!--                                                    title="" class="sf-depth-3">北大讲座</a></li>-->
<!--                                            <li id="menu-1610-1" class="middle odd sf-item-3 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/zy/tszy/minguowenxian"-->
<!--                                                   class="sf-depth-3">晚清民国文献</a></li>-->
<!--                                            <li id="menu-1611-1"-->
<!--                                                class="middle even sf-item-4 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/zy/tszy/xiwentecang"-->
<!--                                                    class="sf-depth-3">西文特藏</a></li>-->
<!--                                            <li id="menu-3702-1" class="middle odd sf-item-5 sf-depth-3 sf-no-children">-->
<!--                                                <a href="https://thesis.lib.pku.edu.cn:8080/" title="博后出站报告"-->
<!--                                                   class="sf-depth-3">博后研究报告</a></li>-->
<!--                                            <li id="menu-1614-1"-->
<!--                                                class="middle even sf-item-6 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/zy/tszy/yandalunwen"-->
<!--                                                    class="sf-depth-3">燕大毕业论文</a></li>-->
<!--                                            <li id="menu-1612-1" class="middle odd sf-item-7 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/zy/tszy/beidawenku" class="sf-depth-3">北大文库</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-1613-1"-->
<!--                                                class="middle even sf-item-8 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/zy/tszy/mingrencangshu"-->
<!--                                                    class="sf-depth-3">名家专藏</a></li>-->
<!--                                            <li id="menu-3890-1" class="middle odd sf-item-9 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/zy/tszy/gemingwenxian"-->
<!--                                                   class="sf-depth-3">革命文献</a></li>-->
<!--                                            <li id="menu-1615-1"-->
<!--                                                class="middle even sf-item-10 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/zy/tszy/shuzitecang"-->
<!--                                                    class="sf-depth-3">数字特藏</a></li>-->
<!--                                            <li id="menu-1616-1" class="last odd sf-item-11 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/zy/tszy/qita" class="sf-depth-3">其他</a></li>-->
<!--                                        </ul>-->
<!--                                    </li>-->
<!--                                    <li id="menu-1596-1"-->
<!--                                        class="last odd sf-item-3 sf-depth-2 sf-total-children-6 sf-parent-children-0 sf-single-children-6 menuparent">-->
<!--                                        <a href="/portal/cn/newresources/22" title="" class="sf-depth-2 menuparent">最新/精选资源</a>-->
<!--                                        <ul>-->
<!--                                            <li id="menu-1618-1" class="first odd sf-item-1 sf-depth-3 sf-no-children">-->
<!--                                                <a href="http://newbooks.lib.pku.edu.cn/" title="" class="sf-depth-3">新书通报</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-1619-1"-->
<!--                                                class="middle even sf-item-2 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/zy/dzzy/dianzijiaocan"-->
<!--                                                    class="sf-depth-3">数字教学参考资料</a></li>-->
<!--                                            <li id="menu-1620-1" class="middle odd sf-item-3 sf-depth-3 sf-no-children">-->
<!--                                                <a href="http://thesis.lib.pku.edu.cn" title="" class="sf-depth-3">北京大学学位论文</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-1617-1"-->
<!--                                                class="middle even sf-item-4 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/newresources/22" title="" class="sf-depth-3">试用/最新数据库</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-1623-1" class="middle odd sf-item-5 sf-depth-3 sf-no-children">-->
<!--                                                <a href="http://dbnav.lib.pku.edu.cn/newhomepage?field_fenlei_zhuti_tid%5B%5D=48"-->
<!--                                                   title="" class="sf-depth-3">晚清民国专题</a></li>-->
<!--                                            <li id="menu-3093-1" class="last even sf-item-6 sf-depth-3 sf-no-children">-->
<!--                                                <a href="http://dbnav.lib.pku.edu.cn/newhomepage?field_fenlei_zhuti_tid%5B%5D=93"-->
<!--                                                   title="" class="sf-depth-3">区域与国别专题</a></li>-->
<!--                                        </ul>-->
<!--                                    </li>-->
<!--                                </ul>-->
<!--                            </li>-->
<!--                            <li id="menu-1588-1"-->
<!--                                class="active-trail middle even sf-item-2 sf-depth-1 sf-total-children-7 sf-parent-children-5 sf-single-children-2 menuparent">-->
<!--                                <span title="" class="sf-depth-1 menuparent nolink">借阅服务</span>-->
<!--                                <ul>-->
<!--                                    <li id="menu-1626-1"-->
<!--                                        class="first odd sf-item-1 sf-depth-2 sf-total-children-5 sf-parent-children-0 sf-single-children-5 menuparent">-->
<!--                                        <a href="/portal/cn/jy/gcjs/tushujiansuo"-->
<!--                                           class="sf-depth-2 menuparent">馆藏检索与使用</a>-->
<!--                                        <ul>-->
<!--                                            <li id="menu-1636-1" class="first odd sf-item-1 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/jy/gcjs/tushujiansuo" title="" class="sf-depth-3">图书检索</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-1637-1"-->
<!--                                                class="middle even sf-item-2 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/jy/gcjs/qikanjiansuo"-->
<!--                                                    class="sf-depth-3">期刊检索</a></li>-->
<!--                                            <li id="menu-1638-1" class="middle odd sf-item-3 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/jy/gcjs/xueweilunwenjiansuo" class="sf-depth-3">学位论文检索</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-1639-1"-->
<!--                                                class="middle even sf-item-4 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/jy/gcjs/tecangwenxianjiansuo" title=""-->
<!--                                                    class="sf-depth-3">特殊文献检索</a></li>-->
<!--                                            <li id="menu-3572-1" class="last odd sf-item-5 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/jy/gcjs/xiaowaifangwen"-->
<!--                                                    class="sf-depth-3">校外访问</a></li>-->
<!--                                        </ul>-->
<!--                                    </li>-->
<!--                                    <li id="menu-3836-1"-->
<!--                                        class="middle even sf-item-2 sf-depth-2 sf-total-children-5 sf-parent-children-0 sf-single-children-5 menuparent">-->
<!--                                        <a href="/portal/cn/fw/rgzn/guizhangzhidu/notice3" title=""-->
<!--                                           class="sf-depth-2 menuparent">借阅规则</a>-->
<!--                                        <ul>-->
<!--                                            <li id="menu-1631-1" class="first odd sf-item-1 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/fw/rgzn/guizhangzhidu/notice3" class="sf-depth-3">外借册数和期限</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-1633-1"-->
<!--                                                class="middle even sf-item-2 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/fw/rgzn/guizhangzhidu/notice4" class="sf-depth-3">馆藏借阅制度</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-1634-1" class="middle odd sf-item-3 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/fw/rgzn/guizhangzhidu/notice16" class="sf-depth-3">各阅览室规章</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-1642-1"-->
<!--                                                class="middle even sf-item-4 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/jy/jybl/shineiyuelan"-->
<!--                                                    class="sf-depth-3">室内阅览</a></li>-->
<!--                                            <li id="menu-1644-1" class="last odd sf-item-5 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/fw/rgzn/guizhangzhidu/notice11" class="sf-depth-3">逾期与遗失</a>-->
<!--                                            </li>-->
<!--                                        </ul>-->
<!--                                    </li>-->
<!--                                    <li id="menu-1627-1"-->
<!--                                        class="middle odd sf-item-3 sf-depth-2 sf-total-children-5 sf-parent-children-0 sf-single-children-5 menuparent">-->
<!--                                        <a href="/portal/cn/jy/jybl/jiehuanxujie"-->
<!--                                           class="sf-depth-2 menuparent">借阅办理</a>-->
<!--                                        <ul>-->
<!--                                            <li id="menu-3932-1" class="first odd sf-item-1 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/jy/jybl/kaijia" class="sf-depth-3">开架借阅服务</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-3943-1"-->
<!--                                                class="middle even sf-item-2 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/jyfw/jybl/bjjyfw"-->
<!--                                                    class="sf-depth-3">闭架借阅服务</a></li>-->
<!--                                            <li id="menu-3944-1" class="middle odd sf-item-3 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/jyfw/jybl/cjygh" class="sf-depth-3">出借与归还</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-3945-1"-->
<!--                                                class="middle even sf-item-4 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/jyfw/jybl/xjyyj" class="sf-depth-3">续借与预约</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-3957-1" class="last odd sf-item-5 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/fw/rgzn/guancangfenbu" title="" class="sf-depth-3">服务时间与分布</a>-->
<!--                                            </li>-->
<!--                                        </ul>-->
<!--                                    </li>-->
<!--                                    <li id="menu-1628-1"-->
<!--                                        class="middle even sf-item-4 sf-depth-2 sf-total-children-7 sf-parent-children-0 sf-single-children-7 menuparent">-->
<!--                                        <a href="/portal/cn/fw/gjhj/fuwuneirong" class="sf-depth-2 menuparent">馆际互借&amp;文献传递</a>-->
<!--                                        <ul>-->
<!--                                            <li id="menu-3554-1" class="first odd sf-item-1 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/fw/gjhj/gonggao" title=""-->
<!--                                                   class="sf-depth-3">公告</a></li>-->
<!--                                            <li id="menu-1647-1"-->
<!--                                                class="middle even sf-item-2 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/fw/gjhj/fuwuneirong" title="" class="sf-depth-3">服务内容</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-1649-1" class="middle odd sf-item-3 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/fw/gjhj/tijiaoshenqing"-->
<!--                                                   class="sf-depth-3">提交申请</a></li>-->
<!--                                            <li id="menu-3555-1"-->
<!--                                                class="middle even sf-item-4 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/fw/gjhj/youhui" title=""-->
<!--                                                    class="sf-depth-3">收费标准</a></li>-->
<!--                                            <li id="menu-3556-1" class="middle odd sf-item-5 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/fw/gjhj/changyongshumu"-->
<!--                                                   class="sf-depth-3">校外查询系统</a></li>-->
<!--                                            <li id="menu-3557-1"-->
<!--                                                class="middle even sf-item-6 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/fw/gjhj/lianxi" class="sf-depth-3">联系方式</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-3558-1" class="last odd sf-item-7 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/fw/gjhj/banquan" title=""-->
<!--                                                    class="sf-depth-3">版权声明</a></li>-->
<!--                                        </ul>-->
<!--                                    </li>-->
<!--                                    <li id="menu-1629-1"-->
<!--                                        class="active-trail middle odd sf-item-5 sf-depth-2 sf-total-children-3 sf-parent-children-0 sf-single-children-3 menuparent">-->
<!--                                        <a href="/portal/cn/fw/ydtj/jiaoshoutuijian"-->
<!--                                           class="sf-depth-2 menuparent active">阅读推荐</a>-->
<!--                                        <ul>-->
<!--                                            <li id="menu-1651-1" class="first odd sf-item-1 sf-depth-3 sf-no-children">-->
<!--                                                <a href="http://newbooks.lib.pku.edu.cn/" title="" class="sf-depth-3">新书通报</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-1652-1"-->
<!--                                                class="active-trail middle even sf-item-2 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/fw/ydtj/jiaoshoutuijian" title=""-->
<!--                                                    class="sf-depth-3 active">教授推荐阅读</a></li>-->
<!--                                            <li id="menu-1653-1" class="last odd sf-item-3 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/fw/ydtj/xuezituijian"-->
<!--                                                    class="sf-depth-3">学子推荐阅读</a></li>-->
<!--                                        </ul>-->
<!--                                    </li>-->
<!--                                    <li id="menu-3922-1" class="middle even sf-item-6 sf-depth-2 sf-no-children"><a-->
<!--                                            href="http://d2d.lib.pku.edu.cn" title=""-->
<!--                                            class="sf-depth-2">上门借还服务</a></li>-->
<!--                                    <li id="menu-4087-1" class="last odd sf-item-7 sf-depth-2 sf-no-children"><a-->
<!--                                            href="/portal/cn/jy/jybl/jieyuejiansuoyanshi"-->
<!--                                            class="sf-depth-2">检索借阅演示</a></li>-->
<!--                                </ul>-->
<!--                            </li>-->
<!--                            <li id="menu-1590-1"-->
<!--                                class="middle odd sf-item-3 sf-depth-1 sf-total-children-8 sf-parent-children-4 sf-single-children-4 menuparent">-->
<!--                                <span title="" class="sf-depth-1 menuparent nolink">科研服务</span>-->
<!--                                <ul>-->
<!--                                    <li id="menu-1660-1"-->
<!--                                        class="first odd sf-item-1 sf-depth-2 sf-total-children-5 sf-parent-children-0 sf-single-children-5 menuparent">-->
<!--                                        <a href="/portal/cn/fw/kjcx/jianjie" title=""-->
<!--                                           class="sf-depth-2 menuparent">科技查新</a>-->
<!--                                        <ul>-->
<!--                                            <li id="menu-1693-1" class="first odd sf-item-1 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/fw/kjcx/jianjie" title=""-->
<!--                                                   class="sf-depth-3">查新站简介</a></li>-->
<!--                                            <li id="menu-1694-1"-->
<!--                                                class="middle even sf-item-2 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/fw/kjcx/liucheng" title=""-->
<!--                                                    class="sf-depth-3">查新流程</a></li>-->
<!--                                            <li id="menu-1695-1" class="middle odd sf-item-3 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/fw/kjcx/shoufei" title=""-->
<!--                                                   class="sf-depth-3">收费标准</a></li>-->
<!--                                            <li id="menu-1696-1"-->
<!--                                                class="middle even sf-item-4 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/fw/kjcx/lianxi" title=""-->
<!--                                                    class="sf-depth-3">联系方式</a></li>-->
<!--                                            <li id="menu-1697-1" class="last odd sf-item-5 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/fw/kjcx/xiangguanzhandian" title=""-->
<!--                                                    class="sf-depth-3">相关站点</a></li>-->
<!--                                        </ul>-->
<!--                                    </li>-->
<!--                                    <li id="menu-1661-1"-->
<!--                                        class="middle even sf-item-2 sf-depth-2 sf-total-children-6 sf-parent-children-0 sf-single-children-6 menuparent">-->
<!--                                        <a href="/portal/cn/fw/xkfw/xuekeguanyuan" title=""-->
<!--                                           class="sf-depth-2 menuparent">学科服务</a>-->
<!--                                        <ul>-->
<!--                                            <li id="menu-1699-1" class="first odd sf-item-1 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/fw/xkfw/xuekexinximenhu" title=""-->
<!--                                                   class="sf-depth-3">学科信息门户</a></li>-->
<!--                                            <li id="menu-1700-1"-->
<!--                                                class="middle even sf-item-2 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/fw/xkfw/qianyanzuizhong" title=""-->
<!--                                                    class="sf-depth-3">学科课题咨询</a></li>-->
<!--                                            <li id="menu-1701-1" class="middle odd sf-item-3 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/fw/kyzc/ketizixun" title="" class="sf-depth-3">学科情报订阅</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-1702-1"-->
<!--                                                class="middle even sf-item-4 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/fw/xkfw/lunwenxiezuojisuyang" title=""-->
<!--                                                    class="sf-depth-3">学术规范与投稿指南</a></li>-->
<!--                                            <li id="menu-1703-1" class="middle odd sf-item-5 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/fw/kyzc/jingzhengqingbao" title=""-->
<!--                                                   class="sf-depth-3">学科竞争力分析报告</a></li>-->
<!--                                            <li id="menu-1704-1" class="last even sf-item-6 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/fw/kyzc/zhishichanquan" title="" class="sf-depth-3">学科前沿报告</a>-->
<!--                                            </li>-->
<!--                                        </ul>-->
<!--                                    </li>-->
<!--                                    <li id="menu-1664-1"-->
<!--                                        class="middle odd sf-item-3 sf-depth-2 sf-total-children-6 sf-parent-children-0 sf-single-children-6 menuparent">-->
<!--                                        <a href="/portal/cn/fw/zlxx/zhuanlipeixun" title=""-->
<!--                                           class="sf-depth-2 menuparent">知识产权服务</a>-->
<!--                                        <ul>-->
<!--                                            <li id="menu-1708-1" class="first odd sf-item-1 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/fw/zlxx/zhuanlipeixun" title="" class="sf-depth-3">知识产权培训</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-1709-1"-->
<!--                                                class="middle even sf-item-2 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/fw/zlxx/zhuanlizixun" title="" class="sf-depth-3">知识产权咨询</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-1710-1" class="middle odd sf-item-3 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/fw/zlxx/zhuanlifenxi" title="" class="sf-depth-3">专利分析报告</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-1711-1"-->
<!--                                                class="middle even sf-item-4 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/fw/zlxx/zhuanliziyuan" title="" class="sf-depth-3">专利资源导航</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-3966-1" class="middle odd sf-item-5 sf-depth-3 sf-no-children">-->
<!--                                                <a href="http://ggfw.cnipa.gov.cn:8010" title="" class="sf-depth-3">国家知识产权公共服务网</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-4086-1" class="last even sf-item-6 sf-depth-3 sf-no-children">-->
<!--                                                <a href="https://ips.lib.pku.edu.cn/" title="" class="sf-depth-3">知识产权信息服务平台</a>-->
<!--                                            </li>-->
<!--                                        </ul>-->
<!--                                    </li>-->
<!--                                    <li id="menu-1663-1"-->
<!--                                        class="middle even sf-item-4 sf-depth-2 sf-total-children-5 sf-parent-children-0 sf-single-children-5 menuparent">-->
<!--                                        <a href="/portal/cn/fw/sjfw/keyanshuju" title="" class="sf-depth-2 menuparent">数据服务</a>-->
<!--                                        <ul>-->
<!--                                            <li id="menu-1730-1" class="first odd sf-item-1 sf-depth-3 sf-no-children">-->
<!--                                                <a href="http://opendata.pku.edu.cn/" title=""-->
<!--                                                   class="sf-depth-3">北大开放数据</a></li>-->
<!--                                            <li id="menu-1728-1"-->
<!--                                                class="middle even sf-item-2 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="https://ir.pku.edu.cn" title=""-->
<!--                                                    class="sf-depth-3">机构知识库</a></li>-->
<!--                                            <li id="menu-1731-1" class="middle odd sf-item-3 sf-depth-3 sf-no-children">-->
<!--                                                <a href="http://ccj.pku.edu.cn" title=""-->
<!--                                                   class="sf-depth-3">北大期刊网</a></li>-->
<!--                                            <li id="menu-1732-1"-->
<!--                                                class="middle even sf-item-4 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="http://scholar.pku.edu.cn/" title=""-->
<!--                                                    class="sf-depth-3">北大学者</a></li>-->
<!--                                            <li id="menu-1706-1" class="last odd sf-item-5 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/fw/sjfw/xuekeshuju" title="" class="sf-depth-3">学科开放数据导航</a>-->
<!--                                            </li>-->
<!--                                        </ul>-->
<!--                                    </li>-->
<!--                                    <li id="menu-1982-1" class="middle odd sf-item-5 sf-depth-2 sf-no-children"><a-->
<!--                                            href="/portal/cn/fw/chashouchayin" title="" class="sf-depth-2">查收查引</a>-->
<!--                                    </li>-->
<!--                                    <li id="menu-3923-1" class="middle even sf-item-6 sf-depth-2 sf-no-children"><a-->
<!--                                            href="https://weibo.com/u/5963822635?profile_ftype=1&amp;is_all=1" title=""-->
<!--                                            class="sf-depth-2">未名学术快报</a></li>-->
<!--                                    <li id="menu-2559-1" class="middle odd sf-item-7 sf-depth-2 sf-no-children"><a-->
<!--                                            href="http://hxqk.lib.pku.edu.cn/" title=""-->
<!--                                            class="sf-depth-2">核心期刊要目</a></li>-->
<!--                                    <li id="menu-1692-1" class="last even sf-item-8 sf-depth-2 sf-no-children"><a-->
<!--                                            href="/portal/cn/xsjl/shuzirenwen"-->
<!--                                            class="sf-depth-2">北京大学数字人文工作坊</a></li>-->
<!--                                </ul>-->
<!--                            </li>-->
<!--                            <li id="menu-1589-1"-->
<!--                                class="middle even sf-item-4 sf-depth-1 sf-total-children-6 sf-parent-children-4 sf-single-children-2 menuparent">-->
<!--                                <span title="" class="sf-depth-1 menuparent nolink">互动交流</span>-->
<!--                                <ul>-->
<!--                                    <li id="menu-1656-1"-->
<!--                                        class="first odd sf-item-1 sf-depth-2 sf-total-children-5 sf-parent-children-0 sf-single-children-5 menuparent">-->
<!--                                        <a href="/portal/cn/hdjl/ydhd" class="sf-depth-2 menuparent">阅读服务</a>-->
<!--                                        <ul>-->
<!--                                            <li id="menu-3952-1" class="first odd sf-item-1 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/hdjl/ydfw/ydhd" class="sf-depth-3">阅读活动</a></li>-->
<!--                                            <li id="menu-3953-1"-->
<!--                                                class="middle even sf-item-2 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/hdjl/ydfw/dsfx" title=""-->
<!--                                                    class="sf-depth-3">读书分享</a></li>-->
<!--                                            <li id="menu-3954-1" class="middle odd sf-item-3 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/hdjl/ydfw/ljyr" class="sf-depth-3">两季一日活动</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-1676-1"-->
<!--                                                class="middle even sf-item-4 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/zhanlan" title="" class="sf-depth-3">展览</a></li>-->
<!--                                            <li id="menu-1674-1" class="last odd sf-item-5 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/xxzc/xctg/yuedubaogao"-->
<!--                                                    class="sf-depth-3">年度阅读报告</a></li>-->
<!--                                        </ul>-->
<!--                                    </li>-->
<!--                                    <li id="menu-1655-1"-->
<!--                                        class="middle even sf-item-2 sf-depth-2 sf-total-children-9 sf-parent-children-0 sf-single-children-9 menuparent">-->
<!--                                        <a href="/portal/cn/hdjl/fwyy/zhanlanzhanshi"-->
<!--                                           class="sf-depth-2 menuparent">服务预约</a>-->
<!--                                        <ul>-->
<!--                                            <li id="menu-3967-1" class="first odd sf-item-1 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/hdjl/fwyy/baogaoting"-->
<!--                                                   class="sf-depth-3">南北配楼报告厅</a></li>-->
<!--                                            <li id="menu-3930-1"-->
<!--                                                class="middle even sf-item-2 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/hdjl/fwyy/zhanlanzhanshi"-->
<!--                                                    class="sf-depth-3">展览展示服务</a></li>-->
<!--                                            <li id="menu-3931-1" class="middle odd sf-item-3 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/hdjl/fwyy/yantaoshi" class="sf-depth-3">研讨室</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-3946-1"-->
<!--                                                class="middle even sf-item-4 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/hdjl/fwyy/yxzz" class="sf-depth-3">研修专座</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-3947-1" class="middle odd sf-item-5 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/hdjl/fwyy/hst" class="sf-depth-3">和声厅</a></li>-->
<!--                                            <li id="menu-3904-1"-->
<!--                                                class="middle even sf-item-6 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="http://yuyue.lib.pku.edu.cn/" title="" class="sf-depth-3">沙特/古籍阅览室</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-3905-1" class="middle odd sf-item-7 sf-depth-3 sf-no-children">-->
<!--                                                <a href="http://yyrg.lib.pku.edu.cn/login.html" title=""-->
<!--                                                   class="sf-depth-3">校外读者入馆</a></li>-->
<!--                                            <li id="menu-1671-1"-->
<!--                                                class="middle even sf-item-8 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="http://www.lib.pku.edu.cn/portal/cn/xxzc/tycx?qt-content_page_innovation=2#qt-content_page_innovation"-->
<!--                                                    title="" class="sf-depth-3">3D打印</a></li>-->
<!--                                            <li id="menu-3959-1" class="last odd sf-item-9 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/fw/kongjiansheshi/zizhufuwu" title=""-->
<!--                                                    class="sf-depth-3">自助服务</a></li>-->
<!--                                        </ul>-->
<!--                                    </li>-->
<!--                                    <li id="menu-1659-1"-->
<!--                                        class="middle odd sf-item-3 sf-depth-2 sf-total-children-7 sf-parent-children-0 sf-single-children-7 menuparent">-->
<!--                                        <a href="/portal/cn/fw/yixiaoshijiangzuo/zhuanchangjiangzuo" title=""-->
<!--                                           class="sf-depth-2 menuparent">教学与培训</a>-->
<!--                                        <ul>-->
<!--                                            <li id="menu-1687-1" class="first odd sf-item-1 sf-depth-3 sf-no-children">-->
<!--                                                <a href="http://www.lib.pku.edu.cn/portal/cn/xxzc/yixiaoshi?qt-content_page_onehour=0#qt-content_page_onehour"-->
<!--                                                   title="" class="sf-depth-3">一小时讲座</a></li>-->
<!--                                            <li id="menu-1688-1"-->
<!--                                                class="middle even sf-item-2 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/fw/yixiaoshijiangzuo/zhuanchangjiangzuo" title=""-->
<!--                                                    class="sf-depth-3">定制讲座</a></li>-->
<!--                                            <li id="menu-1689-1" class="middle odd sf-item-3 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/fw/yixiaoshijiangzuo/xinxisuyang"-->
<!--                                                   class="sf-depth-3">信息素养课</a></li>-->
<!--                                            <li id="menu-1690-1"-->
<!--                                                class="middle even sf-item-4 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="http://il.lib.pku.edu.cn/" title="" class="sf-depth-3">信息素养能力评测</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-1691-1" class="middle odd sf-item-5 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/fw/yixiaoshijiangzuo/xinxisuyangyouxi" title=""-->
<!--                                                   class="sf-depth-3">信息素养手机游戏</a></li>-->
<!--                                            <li id="menu-3958-1"-->
<!--                                                class="middle even sf-item-6 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/fw/yixiaoshijiangzuo/weiketang" class="sf-depth-3">信息素质教育微课堂</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-3941-1" class="last odd sf-item-7 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/hdjl/jxypx/dbtsgy"-->
<!--                                                    class="sf-depth-3">带班图书馆员</a></li>-->
<!--                                        </ul>-->
<!--                                    </li>-->
<!--                                    <li id="menu-3910-1"-->
<!--                                        class="middle even sf-item-4 sf-depth-2 sf-total-children-2 sf-parent-children-0 sf-single-children-2 menuparent">-->
<!--                                        <a href="http://purchase.lib.pku.edu.cn/" title=""-->
<!--                                           class="sf-depth-2 menuparent">用户共建</a>-->
<!--                                        <ul>-->
<!--                                            <li id="menu-3911-1" class="first odd sf-item-1 sf-depth-3 sf-no-children">-->
<!--                                                <a href="https://purchase.lib.pku.edu.cn/" title="" class="sf-depth-3">推荐购买</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-3912-1" class="last even sf-item-2 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/donation" title="" class="sf-depth-3">捐赠</a></li>-->
<!--                                        </ul>-->
<!--                                    </li>-->
<!--                                    <li id="menu-2557-1" class="middle odd sf-item-5 sf-depth-2 sf-no-children"><a-->
<!--                                            href="/portal/cn/zy/dzzy/xueweilunwen/tijiaoyaoqiu" class="sf-depth-2">学位论文提交</a>-->
<!--                                    </li>-->
<!--                                    <li id="menu-2558-1" class="last even sf-item-6 sf-depth-2 sf-no-children"><a-->
<!--                                            href="/portal/cn/zy/dzzy/chuzhanbaogao/tijiaoyaoqiu" class="sf-depth-2">出站报告提交</a>-->
<!--                                    </li>-->
<!--                                </ul>-->
<!--                            </li>-->
<!--                            <li id="menu-3914-1"-->
<!--                                class="middle odd sf-item-5 sf-depth-1 sf-total-children-3 sf-parent-children-3 sf-single-children-0 menuparent">-->
<!--                                <span title="" class="sf-depth-1 menuparent nolink">读者指南</span>-->
<!--                                <ul>-->
<!--                                    <li id="menu-3925-1"-->
<!--                                        class="first odd sf-item-1 sf-depth-2 sf-total-children-4 sf-parent-children-0 sf-single-children-4 menuparent">-->
<!--                                        <a href="/portal/cn/dzzn/gzzd/wenminggongyue"-->
<!--                                           class="sf-depth-2 menuparent">规章制度</a>-->
<!--                                        <ul>-->
<!--                                            <li id="menu-3933-1" class="first odd sf-item-1 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/dzzn/gzzd/wenminggongyue"-->
<!--                                                   class="sf-depth-3">文明读者公约</a></li>-->
<!--                                            <li id="menu-3934-1"-->
<!--                                                class="middle even sf-item-2 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/dzzn/gzzd/ruguanguanli"-->
<!--                                                    class="sf-depth-3">用户入馆管理办法</a></li>-->
<!--                                            <li id="menu-3935-1" class="middle odd sf-item-3 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/dzzn/gzzd/zhengjianguanli" class="sf-depth-3">借阅证件管理办法</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-3936-1" class="last even sf-item-4 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/dzzn/gzzd/canguanpaishe"-->
<!--                                                   class="sf-depth-3">参观拍摄管理办法</a></li>-->
<!--                                        </ul>-->
<!--                                    </li>-->
<!--                                    <li id="menu-3915-1"-->
<!--                                        class="middle even sf-item-2 sf-depth-2 sf-total-children-2 sf-parent-children-0 sf-single-children-2 menuparent">-->
<!--                                        <a href="/portal/cn/dzzn/xyzl/xiaoyoufuwu"-->
<!--                                           class="sf-depth-2 menuparent">校友专栏</a>-->
<!--                                        <ul>-->
<!--                                            <li id="menu-3937-1" class="first odd sf-item-1 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/dzzn/xyzl/xiaoyoufuwu"-->
<!--                                                   class="sf-depth-3">校友服务</a></li>-->
<!--                                            <li id="menu-3939-1" class="last even sf-item-2 sf-depth-3 sf-no-children">-->
<!--                                                <a href="http://yyrg.lib.pku.edu.cn/login.html" title=""-->
<!--                                                   class="sf-depth-3">校友入馆预约</a></li>-->
<!--                                        </ul>-->
<!--                                    </li>-->
<!--                                    <li id="menu-3918-1"-->
<!--                                        class="last odd sf-item-3 sf-depth-2 sf-total-children-2 sf-parent-children-0 sf-single-children-2 menuparent">-->
<!--                                        <a href="/portal/cn/dzzn/xwdz/guanlibanfa"-->
<!--                                           class="sf-depth-2 menuparent">校外读者</a>-->
<!--                                        <ul>-->
<!--                                            <li id="menu-3940-1" class="first odd sf-item-1 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/dzzn/xwdz/guanlibanfa"-->
<!--                                                   class="sf-depth-3">校外读者接待办法</a></li>-->
<!--                                            <li id="menu-3921-1" class="last even sf-item-2 sf-depth-3 sf-no-children">-->
<!--                                                <a href="http://yyrg.lib.pku.edu.cn/login.html" title=""-->
<!--                                                   class="sf-depth-3">校外读者预约入馆</a></li>-->
<!--                                        </ul>-->
<!--                                    </li>-->
<!--                                </ul>-->
<!--                            </li>-->
<!--                            <li id="menu-1592-1"-->
<!--                                class="middle even sf-item-6 sf-depth-1 sf-total-children-5 sf-parent-children-0 sf-single-children-5 menuparent">-->
<!--                                <span title="" class="sf-depth-1 menuparent nolink">分馆服务</span>-->
<!--                                <ul>-->
<!--                                    <li id="menu-1712-1" class="first odd sf-item-1 sf-depth-2 sf-no-children"><a-->
<!--                                            href="http://library.bjmu.edu.cn/" title="" class="sf-depth-2">医学馆</a>-->
<!--                                    </li>-->
<!--                                    <li id="menu-4097-1" class="middle even sf-item-2 sf-depth-2 sf-no-children"><a-->
<!--                                            href="https://kapl.pku.edu.cn/" title="" class="sf-depth-2">阿卜杜勒·阿齐兹国王公共图书馆北京大学分馆</a>-->
<!--                                    </li>-->
<!--                                    <li id="menu-2723-1" class="middle odd sf-item-3 sf-depth-2 sf-no-children"><a-->
<!--                                            href="/portal/cn/fg/yuanxifenguanlist" title=""-->
<!--                                            class="sf-depth-2">院系分馆</a></li>-->
<!--                                    <li id="menu-1949-1" class="middle even sf-item-4 sf-depth-2 sf-no-children"><a-->
<!--                                            href="/portal/cn/fg/gongzuodongtai" title=""-->
<!--                                            class="sf-depth-2">分馆工作动态</a></li>-->
<!--                                    <li id="menu-1714-1" class="last odd sf-item-5 sf-depth-2 sf-no-children"><a-->
<!--                                            href="/portal/cn/fg/jieyueshuoming" title=""-->
<!--                                            class="sf-depth-2">分馆借阅FAQ</a></li>-->
<!--                                </ul>-->
<!--                            </li>-->
<!--                            <li id="menu-2963-1"-->
<!--                                class="last odd sf-item-7 sf-depth-1 sf-total-children-2 sf-parent-children-2 sf-single-children-0 menuparent">-->
<!--                                <span title="" class="sf-depth-1 menuparent nolink">关于</span>-->
<!--                                <ul>-->
<!--                                    <li id="menu-1721-1"-->
<!--                                        class="first odd sf-item-1 sf-depth-2 sf-total-children-7 sf-parent-children-0 sf-single-children-7 menuparent">-->
<!--                                        <a href="/portal/cn/bggk/bgjs/guanzhangjiyu" title=""-->
<!--                                           class="sf-depth-2 menuparent">关于本馆</a>-->
<!--                                        <ul>-->
<!--                                            <li id="menu-1715-1" class="first odd sf-item-1 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/bggk/bgjs/guanzhangjiyu"-->
<!--                                                   class="sf-depth-3">馆长致辞</a></li>-->
<!--                                            <li id="menu-1716-1"-->
<!--                                                class="middle even sf-item-2 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/bggk/bgjs/lishiyange"-->
<!--                                                    class="sf-depth-3">本馆介绍</a></li>-->
<!--                                            <li id="menu-1717-1" class="middle odd sf-item-3 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/bggk/guanshefengmao" class="sf-depth-3">馆舍风貌</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-1718-1"-->
<!--                                                class="middle even sf-item-4 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/bggk/zuzhijigou" class="sf-depth-3">组织机构</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-1720-1" class="middle odd sf-item-5 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/bggk/lianxiwomen" class="sf-depth-3">联系我们</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-2962-1"-->
<!--                                                class="middle even sf-item-6 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/bggk/laifangyuyue" class="sf-depth-3">来访预约</a>-->
<!--                                            </li>-->
<!--                                            <li id="menu-1727-1" class="last odd sf-item-7 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/bggk/jiaruwomen" class="sf-depth-3">加入我们</a>-->
<!--                                            </li>-->
<!--                                        </ul>-->
<!--                                    </li>-->
<!--                                    <li id="menu-3563-1"-->
<!--                                        class="last even sf-item-2 sf-depth-2 sf-total-children-4 sf-parent-children-0 sf-single-children-4 menuparent">-->
<!--                                        <a href="/portal/cn/bggk/kxyj/idl" class="sf-depth-2 menuparent">科学研究</a>-->
<!--                                        <ul>-->
<!--                                            <li id="menu-3564-1" class="first odd sf-item-1 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/bggk/keyanxiangmu" title=""-->
<!--                                                   class="sf-depth-3">科研项目</a></li>-->
<!--                                            <li id="menu-3568-1"-->
<!--                                                class="middle even sf-item-2 sf-depth-3 sf-no-children"><a-->
<!--                                                    href="/portal/cn/bggk/kxyj/idl"-->
<!--                                                    class="sf-depth-3">北京大学数字图书馆研究所</a></li>-->
<!--                                            <li id="menu-3569-1" class="middle odd sf-item-3 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/bggk/kxyj/yzsdwx"-->
<!--                                                   class="sf-depth-3">北京大学亚洲史地文献研究中心</a></li>-->
<!--                                            <li id="menu-3570-1" class="last even sf-item-4 sf-depth-3 sf-no-children">-->
<!--                                                <a href="/portal/cn/bggk/xueshuweiyuanhui"-->
<!--                                                   class="sf-depth-3">学术委员会</a></li>-->
<!--                                        </ul>-->
<!--                                    </li>-->
<!--                                </ul>-->
<!--                            </li>-->
<!--                        </ul>-->
<!--                    </section>-->
<!--                </div>-->
<!--            </nav>-->
<!--        </div>-->

<!--        <div class="header-search-blocks-region">-->
<!--            <div class="region region-search-blocks">-->
<!--                <section id="block-quicktabs-search-quicktab" class="block block-quicktabs clearfix">-->


<!--                    <div id="quicktabs-search_quicktab" class="quicktabs-wrapper quicktabs-style-navlist">-->
<!--                        <ul class="quicktabs-tabs quicktabs-style-navlist">-->
<!--                            <li class="active"><a-->
<!--                                    href="/portal/cn/fw/ydtj/jiaoshoutuijian?qt-search_quicktab=0#qt-search_quicktab"-->
<!--                                    id="quicktabs-tab-search_quicktab-0"-->
<!--                                    class="quicktabs-tab quicktabs-tab-block quicktabs-tab-block-summon-delta-summon active">未名学术搜索</a>-->
<!--                            </li>-->
<!--                            <li><a href="/portal/cn/fw/ydtj/jiaoshoutuijian?qt-search_quicktab=1#qt-search_quicktab"-->
<!--                                   id="quicktabs-tab-search_quicktab-1"-->
<!--                                   class="quicktabs-tab quicktabs-tab-block quicktabs-tab-block-block-delta-4 active">馆藏目录</a>-->
<!--                            </li>-->
<!--                            <li><a href="/portal/cn/fw/ydtj/jiaoshoutuijian?qt-search_quicktab=2#qt-search_quicktab"-->
<!--                                   id="quicktabs-tab-search_quicktab-2"-->
<!--                                   class="quicktabs-tab quicktabs-tab-block quicktabs-tab-block-block-delta-5 active">数据库</a>-->
<!--                            </li>-->
<!--                            <li><a href="/portal/cn/fw/ydtj/jiaoshoutuijian?qt-search_quicktab=3#qt-search_quicktab"-->
<!--                                   id="quicktabs-tab-search_quicktab-3"-->
<!--                                   class="quicktabs-tab quicktabs-tab-block quicktabs-tab-block-block-delta-6 active">电子期刊/图书</a>-->
<!--                            </li>-->
<!--                            <li><a href="/portal/cn/fw/ydtj/jiaoshoutuijian?qt-search_quicktab=4#qt-search_quicktab"-->
<!--                                   id="quicktabs-tab-search_quicktab-4"-->
<!--                                   class="quicktabs-tab quicktabs-tab-block quicktabs-tab-block-views-delta&#45;&#45;exp-site-search2-page active">站内搜索</a>-->
<!--                            </li>-->
<!--                        </ul>-->
<!--                        <div id="quicktabs-container-search_quicktab" class="quicktabs_main quicktabs-style-navlist">-->
<!--                            <div id="quicktabs-tabpage-search_quicktab-0" class="quicktabs-tabpage ">-->
<!--                                <section id="block-summon-summon" class="block block-summon clearfix">-->

<!--                                    <h2 class="block-title">未名学术搜索</h2>-->

<!--                                    <link rel="stylesheet" type="text/css" media="screen" href="/static/css/suggest.css">-->
<!--                                    <div id="custom-front-top-summon">-->
<!--                                        <div id="search-wrapper">-->
<!--                                            <form target="_blank" action="/portal/summon/search/" method="GET"-->
<!--                                                  id="summon-search">-->
<!--                                                <div class="summon-search-box" id="summon-search-box">-->
<!--                                                    <input type="text" style="color: rgb(153, 153, 153);" name="s.q"-->
<!--                                                           class="text" id="summon-search-field"-->
<!--                                                           placeholder="图书,期刊,论文...一搜即得" autocomplete="off">-->
<!--                                                    <input type="submit" value="搜索" class="submit">-->
<!--                                                </div>-->
<!--                                            </form>-->
<!--                                        </div>-->
<!--                                        <div id="custom-front-top-summon-bottom-text">-->
<!--                                            <ul class="new-user">-->
<!--                                                <li><strong>新手指南：</strong>&nbsp;<a href="/portal/help/summon"-->
<!--                                                                                       target="_blank">未名学术搜索使用指南</a>-->
<!--                                                </li>-->
<!--                                            </ul>-->
<!--                                            <ul class="recommend">-->
<!--                                                <li>-->
<!--                                                    <a href="/portal/newresources/22" target="_blank">最新资源</a>-->
<!--                                                </li>-->
<!--                                                <li>-->
<!--                                                    <a href="http://newbooks.lib.pku.edu.cn/"-->
<!--                                                       target="_blank">最新到馆图书</a>-->
<!--                                                </li>-->
<!--                                            </ul>-->
<!--                                        </div>-->

<!--                                    </div>-->
<!--                                    &lt;!&ndash;<script defer="true" id="summon-search-widget" type="text/javascript" src="/static/js/searchbox.js"></script>&ndash;&gt;-->
<!--                                    <script type="text/javascript">-->
<!--                                        document.getElementById('summon-search-field').focus()-->
<!--                                    </script>-->
<!--                                </section>-->
<!--                            </div>-->
<!--                            <div id="quicktabs-tabpage-search_quicktab-1" class="quicktabs-tabpage quicktabs-hide">-->
<!--                                <section id="block-block-4" class="block block-block clearfix">-->

<!--                                    <h2 class="block-title">馆藏目录</h2>-->

<!--                                    <div id="custom-front-top-opac">-->
<!--                                        <div id="custom-front-top-opac-searchbox">-->
<!--                                            <form action="/portal/opac/search" method="get" name="searchform"-->
<!--                                                  target="_blank">-->
<!--                                                <ul id="opac-search-input-box">-->
<!--                                                    <li id="opac-search-input-2">-->
<!--                                                        <select id="opac-search-select" name="srchfield1">-->
<!--                                                            <option value="GENERAL^SUBJECT^GENERAL^^%E5%85%A8%E9%9D%A2%E6%A3%80%E7%B4%A2">-->
<!--                                                                全面-->
<!--                                                            </option>-->
<!--                                                            <option selected="selected"-->
<!--                                                                    value="TI^TITLE^^Title Processing^title">题名-->
<!--                                                            </option>-->
<!--                                                            <option value="AU^AUTHOR^^Author Processing^author">著者-->
<!--                                                            </option>-->
<!--                                                            <option value="SU^SUBJECT^^^subject">主题</option>-->
<!--                                                            <option value="PER^PERTITLE^^Title Processing^periodical title">-->
<!--                                                                刊名-->
<!--                                                            </option>-->
<!--                                                        </select></li>-->
<!--                                                    <li id="opac-search-input-1">-->
<!--                                                        <input id="opac-search-field" maxlength="255" name="searchdata1"-->
<!--                                                               size="40" placeholder="全面搜索北大馆藏"/></li>-->
<!--                                                    <li id="opac-search-input-3">-->
<!--                                                        <input name="user_id" type="hidden" value="userid"-->
<!--                                                               width="0"/><input name="password" type="hidden"-->
<!--                                                                                 value="password" width="0"/> <input-->
<!--                                                            name="library" type="hidden" value="ALL" width="0"/> <input-->
<!--                                                            name="sort_by" type="hidden" value="TI" width="0"/> <input-->
<!--                                                            name="relevance" type="hidden" value="off" width="0"/><input-->
<!--                                                            class="searchbutton" type="submit" value="搜索"/></li>-->
<!--                                                </ul>-->
<!--                                            </form>-->
<!--                                        </div>-->
<!--                                        <div id="custom-front-top-opac-bottom-text">-->
<!--                                            <div class="col-lg-6 col-md-6">-->

<!--                                                <ul class="new-user">-->
<!--                                                    <li>-->
<!--                                                        <strong>新手指南</strong>：<a-->
<!--                                                            href="/portal/cn/jy/gcjs/tushujiansuo" target="_blank">馆藏检索与使用</a>-->
<!--                                                    </li>-->
<!--                                                </ul>-->
<!--                                                <ul class="recommend">-->
<!--                                                    <li class="bottom-text-label">-->
<!--                                                        不知道看什么书？-->
<!--                                                    </li>-->
<!--                                                    <li>-->
<!--                                                        <a href="http://rbdl.calis.edu.cn/aopac/indexold.jsp"-->
<!--                                                           target="_blank">古籍</a> &nbsp;| &nbsp;<a-->
<!--                                                            href="http://newbooks.lib.pku.edu.cn/"-->
<!--                                                            target="_blank">新书通报</a>&nbsp; | &nbsp;<a-->
<!--                                                            href="/portal/cn/xxzc/xctg/yuedubaogao"-->
<!--                                                            target="_blank">阅读报告</a>&nbsp;| &nbsp;<a-->
<!--                                                            href="/portal/cn/fw/ydtj/jiaoshoutuijian" target="_blank">教授推荐书目</a>-->
<!--                                                    </li>-->

<!--                                                </ul>-->
<!--                                            </div>-->

<!--                                            <div class="col-lg-6 col-md-6">-->
<!--                                                <ul class="firt-step">-->
<!--                                                    <li class="bottom-text-label">-->
<!--                                                        图书借阅第一步：-->
<!--                                                    </li>-->
<!--                                                    <li>-->
<!--                                                        <a href="/portal/cn/fw/rgzn/guancangfenbu"-->
<!--                                                           target="_blank">馆藏分布</a> &nbsp;| &nbsp;<a-->
<!--                                                            href="/portal/cn/fw/rgzn/guizhangzhidu/notice4"-->
<!--                                                            target="_blank">借阅制度</a> &nbsp;| &nbsp;<a-->
<!--                                                            href="/portal/cn/jy/gcjs/tushujiansuo"-->
<!--                                                            target="_blank">借阅方法</a></li>-->
<!--                                                </ul>-->
<!--                                                <ul class="bookdelivery">-->
<!--                                                    <li>-->
<!--                                                        <strong><a href="http://d2d.lib.pku.edu.cn/" target="_blank">上门借还服务</a>-->
<!--                                                            &nbsp;| &nbsp;<a href="https://calling.lib.pku.edu.cn:8447/"-->
<!--                                                                             target="_blank">昌平工具书、期刊预约</a></strong>-->
<!--                                                    </li>-->
<!--                                                </ul>-->

<!--                                            </div>-->
<!--                                        </div>-->
<!--                                    </div>-->

<!--                                </section>-->
<!--                            </div>-->
<!--                            <div id="quicktabs-tabpage-search_quicktab-2" class="quicktabs-tabpage quicktabs-hide">-->
<!--                                <section id="block-block-5" class="block block-block clearfix">-->

<!--                                    <h2 class="block-title">数据库</h2>-->

<!--                                    <script language="javascript">-->
<!--                                        function searchallresbyetitle() {-->
<!--                                            var form = document.getElementById("database-search-form");-->
<!--                                            var title = form.title.value;-->

<!--                                            form.titleofallres.value = title;-->
<!--                                            if (title == "" || title == "请输入数据库名") {-->
<!--                                                form.action = "https://dbnav.lib.pku.edu.cn";-->
<!--                                            } else {-->
<!--                                                form.action = Drupal.settings.basePath + "db/search";-->
<!--                                            }-->

<!--                                        }-->
<!--                                    </script>-->
<!--                                    <div id="custom-front-top-eresource">-->
<!--                                        <div id="custom-front-top-eresource-searchbox">-->
<!--                                            <form accept-charset="UTF-8" class="search-form" id="database-search-form"-->
<!--                                                  method="get" onsubmit="searchallresbyetitle();return true;"-->
<!--                                                  target="_blank">-->
<!--                                                <input name="titleofallres" type="hidden" value=""/>-->
<!--                                                <div>-->
<!--                                                    <div class="container-inline form-wrapper" id="edit-basic">-->
<!--                                                        <div class="form-item form-type-textfield form-item-keys">-->
<!--                                                            <input id="eresource-search-field" name="title"-->
<!--                                                                   placeholder="请输入数据库名" style="color:#999"-->
<!--                                                                   type="text" value=""/></div>-->
<!--                                                        <input class="searchbutton" type="submit" value="搜索"/>-->
<!--                                                    </div>-->
<!--                                                    <div id="custom-front-top-search-database-browselink">-->
<!--			<span class="eresource-search-box-browse">-->
<!--			<a href="http://dbnav.lib.pku.edu.cn" style="color:#000000;font-size:14px;font-weight:bold;"-->
<!--               target="_blank">浏览</a></span>-->
<!--                                                        <input name="get" type="hidden" value="[]"/>-->
<!--                                                    </div>-->
<!--                                                    &lt;!&ndash;<input type="hidden" value="form-Usg0YbCREbCNHoTrNqk8tqA0IQLgPnQQU65St1cyrP0" name="form_build_id">-->
<!--		<input type="hidden" value="apachesolr_search_custom_page_search_form" name="form_id">&ndash;&gt;</div>-->
<!--                                            </form>-->
<!--                                        </div>-->
<!--                                        <div id="custom-front-top-eresource-bottom-text">-->
<!--                                            <div class="col-lg-6 col-md-6 col-sm-6">-->
<!--                                                <ul class="new-user">-->
<!--                                                    <li class="bottom-text-label">新手指南：</li>-->
<!--                                                    <li>-->
<!--                                                        <a href="/portal/cn/xxzc/yixiaoshi?qt-content_page_onehour=1#qt-content_page_onehour"-->
<!--                                                           target="_blank">解锁数据库</a> | <a-->
<!--                                                            href="/portal/cn/fw/yixiaoshijiangzuo/xinxisuyang"-->
<!--                                                            target="_blank">电子资源的检索与利用</a> | <a-->
<!--                                                            href="https://dbnav.lib.pku.edu.cn/content/%E6%A0%A1%E5%A4%96%E8%AE%BF%E9%97%AE%E9%A1%BB%E7%9F%A5"-->
<!--                                                            target="_blank">校外访问</a>-->
<!--                                                    </li>-->
<!--                                                </ul>-->
<!--                                                <ul class="recommend">-->
<!--                                                    <li>-->
<!--                                                        <strong>特色资源库：</strong>-->
<!--                                                        <a href="http://rbdl.calis.edu.cn/aopac/indexold.jsp"-->
<!--                                                           target="_blank">古文献资源库</a> |-->
<!--                                                        <a href="http://media.lib.pku.edu.cn/"-->
<!--                                                           target="_blank">多媒体资源</a> |-->
<!--                                                        <a href="https://e-reserve.lib.pku.edu.cn/" target="_blank">数字教参资料</a>-->
<!--                                                        |-->
<!--                                                        <a href="http://thesis.lib.pku.edu.cn/"-->
<!--                                                           target="_blank">北大学位论文</a> |-->
<!--                                                        <a href="http://162.105.138.115/index.php?m=content&c=index&a=lists&catid=33&sserial=3713"-->
<!--                                                           target="_blank">北大讲座</a> |-->
<!--                                                        <a href="http://mgqk.lib.pku.edu.cn"-->
<!--                                                           target="_blank">民国旧报刊</a>-->
<!--                                                    </li>-->

<!--                                                </ul>-->
<!--                                            </div>-->
<!--                                            <ul class="top-list col-lg-6 col-md-6 col-sm-6">-->
<!--                                                <li class="bottom-text-label">-->
<!--                                                    热门数据库：-->
<!--                                                </li>-->
<!--                                                <li><strong>中文：</strong>-->
<!--                                                    <a href="http://www.cnki.net/" target="_blank"-->
<!--                                                       title="知网CNKI">知网</a> |-->
<!--                                                    <a href="http://www.wanfangdata.com.cn" target="_blank"-->
<!--                                                       title="">万方</a> |-->
<!--                                                    <a href="https://www.pkulaw.com/" target="_blank"-->
<!--                                                       title="">北大法宝</a> |-->
<!--                                                    <a href="http://www.duxiu.com/" target="_blank" title="">读秀</a> |-->
<!--                                                    <a href="http://data.people.com.cn/rmrb/" target="_blank" title="">人民日报</a>-->
<!--                                                </li>-->
<!--                                                <li><strong>外文：</strong>-->
<!--                                                    <a href="http://webofknowledge.com/" target="_blank"-->
<!--                                                       title="Web of Science">SCI</a> |-->
<!--                                                    <a href="http://www.scopus.com/" target="_blank" title="Scopus">Scopus</a>-->
<!--                                                    |-->
<!--                                                    <a href="http://www.jstor.org/" target="_blank"-->
<!--                                                       title="JSTOR">JSTOR</a> |-->
<!--                                                    <a href="http://dbnav.lib.pku.edu.cn/node/11009" target="_blank"-->
<!--                                                       title="lexis">lexis</a> |-->
<!--                                                    <a href="http://dbnav.lib.pku.edu.cn/node/11094" target="_blank"-->
<!--                                                       title="heinonline">heinonline</a>-->
<!--                                                </li>-->
<!--                                                <li><strong>专利：</strong>-->
<!--                                                    <a href="http://dbnav.lib.pku.edu.cn/content/innography"-->
<!--                                                       target="_blank" title="INNOGRAPHY">INNOGRAPHY</a> |-->
<!--                                                    <a href="http://webofknowledge.com/DIIDW" target="_blank"-->
<!--                                                       title="Derwent Innovations Index（DII）">Derwent</a> |-->
<!--                                                    <a href="http://dbnav.lib.pku.edu.cn/content/%E6%99%BA%E6%85%A7%E8%8A%BD%EF%BC%88patsnap%EF%BC%89%E5%85%A8%E7%90%83%E4%B8%93%E5%88%A9%E6%A3%80%E7%B4%A2%E6%95%B0%E6%8D%AE%E5%BA%93-0"-->
<!--                                                       target="_blank" title="智慧芽">智慧芽</a> |-->
<!--                                                    <a href="http://pss-system.cnipa.gov.cn/" target="_blank"-->
<!--                                                       title="中国国家知识产权局专利检索与分析系统">国知局专利</a>-->
<!--                                                </li>-->
<!--                                            </ul>-->

<!--                                        </div>-->
<!--                                    </div>-->


<!--                                </section>-->
<!--                            </div>-->
<!--                            <div id="quicktabs-tabpage-search_quicktab-3" class="quicktabs-tabpage quicktabs-hide">-->
<!--                                <section id="block-block-6" class="block block-block clearfix">-->

<!--                                    <h2 class="block-title">电子期刊/图书</h2>-->

<!--                                    <div id="custom-front-top-ejournal">-->
<!--                                        <div id="custom-front-top-ejournal-searchbox">-->
<!--                                            <form action="/portal/journal/search" id="ejournal-search-form" method="get"-->
<!--                                                  name="SS_EJPSearchForm" target="_blank">-->
<!--                                                <select id="select-first-dbtype" name="dbType" onChange="change()">-->
<!--                                                    <option selected="selected" value="ALL">所有</option>-->
<!--                                                    <option value="JOURNALS">期刊</option>-->
<!--                                                    <option value="BOOKS">图书</option>-->
<!--                                                </select>-->
<!--                                                <select id="select-second-searchtype" name="searchType">-->
<!--                                                    <option selected="selected" value="title_contains">标题</option>-->
<!--                                                    <option value="issn_equals">ISSN/ISBN</option>-->
<!--                                                </select>-->
<!--                                                <input id="ejournal-search-field" name="criteria"-->
<!--                                                       placeholder="请输入刊名或ISSN" size="18" style="color: #999;"-->
<!--                                                       value=""/>-->
<!--                                                <input class="searchbutton" type="Submit" value="搜索"/>-->
<!--                                                <br/>-->
<!--                                                <div id="custom-front-top-search-ejournal-browselink">-->
<!--                                                    <a href="http://zm8lp2fe5j.search.serialssolutions.com/ejp/?libHash=ZM8LP2FE5J#/?language=zh-CN&amp;titleType=JOURNALS"-->
<!--                                                       target="_blank">浏览电子期刊</a> &nbsp;| &nbsp;-->
<!--                                                    <a href="http://zm8lp2fe5j.search.serialssolutions.com/ejp/?libHash=ZM8LP2FE5J#/?titleType=BOOKS&language=zh-CN"-->
<!--                                                       target="_blank">浏览电子图书</a>-->
<!--                                                </div>-->
<!--                                            </form>-->
<!--                                        </div>-->
<!--                                        <div id="custom-front-top-ejournal-bottom-text">-->
<!--                                            <ul class="new-user">-->
<!--                                                <li><strong>新手指南</strong>：-->
<!--                                                    <a href="/portal/sites/default/files/zixunbu/docs/2018-spring-journal.pdf"-->
<!--                                                       target="_blank">遍历西文电子期刊库</a> &nbsp;| &nbsp;-->
<!--                                                    <a href="/portal/sites/default/files/zixunbu/docs/2019.10.10ebooks.pdf"-->
<!--                                                       target="_blank">中外文电子图书资源简介</a>-->
<!--                                                </li>-->
<!--                                            </ul>-->
<!--                                            <ul class="recommend">-->
<!--                                                <li>-->
<!--                                                    <a href="http://hxqk.lib.pku.edu.cn/" target="_blank"-->
<!--                                                       title="《中文核心期刊要目总览》（2014年版）相关问题说明">核心期刊要目</a>-->
<!--                                                    &nbsp;| &nbsp;-->
<!--                                                    <a href="https://jcr.clarivate.com/" target="_blank"-->
<!--                                                       title="Journal Citation Reports(JCR)">JCR</a>&nbsp; | &nbsp;-->
<!--                                                    <a href="http://cssci.nju.edu.cn/" target="_blank"-->
<!--                                                       title="中国社会科学引文索引">CSSCI</a>-->
<!--                                                </li>-->
<!--                                                <li>-->
<!--                                                    常见期刊平台：<a href="http://www.oaj.pku.edu.cn/" target="_blank">北京大学期刊网</a>-->
<!--                                                    &nbsp;| &nbsp;-->
<!--                                                    <a href="https://doaj.org/" target="_blank"-->
<!--                                                       title="Directory of Open Access Journals">DOAJ</a>-->
<!--                                                </li>-->
<!--                                            </ul>-->
<!--                                        </div>-->
<!--                                    </div>-->

<!--                                    <script>-->
<!--                                        var inputs = jQuery("#opac-search-field, #summon-search-field, #eresource-search-field, #ejournal-search-field");-->
<!--                                        inputs.blur(-->
<!--                                            function () {-->
<!--                                                action_input = this,-->
<!--                                                    text = jQuery(this).val();-->
<!--                                                inputs.each(-->
<!--                                                    function () {-->
<!--                                                        if (this == action_input)-->
<!--                                                            return true;-->
<!--                                                        jQuery(this).val(text)-->
<!--                                                    });-->
<!--                                            });-->

<!--                                    </script>-->

<!--                                    <script>-->
<!--                                        function change() {-->
<!--                                            var first = document.getElementById("select-first-dbtype");-->
<!--                                            var second = document.getElementById("select-second-searchtype");-->
<!--                                            var inputtext = document.getElementById("ejournal-search-field");-->
<!--                                            second.options.length = 0; // 清除second下拉框的所有内容  -->
<!--                                            if (first.selectedIndex == 0) {-->
<!--                                                second.options.add(new Option("标题", "title_contains", false, true)); // 默认选中省会城市-->
<!--                                                second.options.add(new Option("ISSN/ISBN", "issn_equals"));-->
<!--                                                inputtext.placeholder = "请输入标题或ISSN/ISBN";-->
<!--                                            }-->
<!--                                            if (first.selectedIndex == 1) {-->
<!--                                                second.options.add(new Option("刊名", "title_contains", false, true)); // 默认选中省会城市-->
<!--                                                second.options.add(new Option("ISSN", "issn_equals"));-->
<!--                                                inputtext.placeholder = "请输入刊名或ISSN";-->
<!--                                            }-->

<!--                                            if (first.selectedIndex == 2) {-->
<!--                                                second.options.add(new Option("书名", "title_contains", false, true)); // 默认选中省会城市-->
<!--                                                second.options.add(new Option("ISBN", "issn_equals"));-->
<!--                                                inputtext.placeholder = "请输入书名或ISBN";-->
<!--                                            }-->
<!--                                        }-->
<!--                                    </script>-->
<!--                                </section>-->
<!--                            </div>-->
<!--                            <div id="quicktabs-tabpage-search_quicktab-4" class="quicktabs-tabpage quicktabs-hide">-->
<!--                                <section id="block-views-exp-site-search2-page&#45;&#45;2" class="block block-views clearfix">-->


<!--                                    <form action="/portal/cn/site-search" method="get"-->
<!--                                          id="views-exposed-form-site-search2-page" accept-charset="UTF-8">-->
<!--                                        <div>-->
<!--                                            <div class="views-exposed-form">-->
<!--                                                <div class="views-exposed-widgets clearfix">-->
<!--                                                    <div id="edit-keywords-wrapper"-->
<!--                                                         class="views-exposed-widget views-widget-filter-search_api_views_fulltext">-->
<!--                                                        <label for="edit-keywords">-->
<!--                                                            站内搜索 </label>-->
<!--                                                        <div class="views-widget">-->
<!--                                                            <div class="form-item form-item-keywords form-type-textfield form-group">-->
<!--                                                                <input class="form-control form-text" type="text"-->
<!--                                                                       id="edit-keywords" name="keywords" value=""-->
<!--                                                                       size="30" maxlength="128"/></div>-->
<!--                                                        </div>-->
<!--                                                    </div>-->
<!--                                                    <div class="views-exposed-widget views-submit-button">-->
<!--                                                        <button type="submit" id="edit-submit-site-search2" name=""-->
<!--                                                                value="搜索" class="btn btn-primary form-submit">搜索-->
<!--                                                        </button>-->
<!--                                                    </div>-->
<!--                                                </div>-->
<!--                                            </div>-->
<!--                                        </div>-->
<!--                                    </form>-->
<!--                                </section>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                    <div class="custom-front-search-open-toggle">-->
<!--                        <a class="btn btn-default search-open-toggle-btn" title="点击图钉，可将搜索栏设置为默认收起。"-->
<!--                           href="#"></a>-->
<!--                    </div>-->
<!--                </section>-->

<!--            </div>-->
<!--        </div>-->
<!--    </div>-->
<!--</header>-->

<div class="main-container container">

    <header id="page-header" role="banner">

    </header> <!-- /#page-header -->

    <div class="row">
        <!--
                <aside class="col-sm-3" role="complementary">
                    <div class="region region-sidebar-first well">
                        <section id="block-menu-block-15" class="block block-menu-block clearfix">

                            <h2 class="block-title">借阅服务</h2>

                            <div class="menu-block-wrapper menu-block-15 menu-name-menu-menu2018 parent-mlid-0 menu-level-2">
                                <ul class="menu nav">
                                    <li class="first collapsed menu-mlid-1626"><a
                                            href="/portal/cn/jy/gcjs/tushujiansuo">馆藏检索与使用</a></li>
                                    <li class="expanded menu-mlid-3836"><a href="/portal/cn/fw/rgzn/guizhangzhidu/notice3"
                                                                           title="">借阅规则</a>
                                        <ul class="menu nav">
                                            <li class="first leaf menu-mlid-1631"><a
                                                    href="/portal/cn/fw/rgzn/guizhangzhidu/notice3">外借册数和期限</a></li>
                                            <li class="leaf menu-mlid-1633"><a href="/portal/cn/fw/rgzn/guizhangzhidu/notice4">馆藏借阅制度</a>
                                            </li>
                                            <li class="leaf menu-mlid-1634"><a href="/portal/cn/fw/rgzn/guizhangzhidu/notice16">各阅览室规章</a>
                                            </li>
                                            <li class="leaf menu-mlid-1642"><a
                                                    href="/portal/cn/jy/jybl/shineiyuelan">室内阅览</a></li>
                                            <li class="last leaf menu-mlid-1644"><a
                                                    href="/portal/cn/fw/rgzn/guizhangzhidu/notice11">逾期与遗失</a></li>
                                        </ul>
                                    </li>
                                    <li class="collapsed menu-mlid-1627"><a href="/portal/cn/jy/jybl/jiehuanxujie">借阅办理</a>
                                    </li>
                                    <li class="collapsed menu-mlid-1628"><a href="/portal/cn/fw/gjhj/fuwuneirong">馆际互借&amp;文献传递</a>
                                    </li>
                                    <li class="expanded active-trail active menu-mlid-1629 active"><a
                                            href="/portal/cn/fw/ydtj/jiaoshoutuijian" class="active-trail active">阅读推荐</a>
                                        <ul class="menu nav">
                                            <li class="first leaf menu-mlid-1651"><a href="http://newbooks.lib.pku.edu.cn/"
                                                                                     title="">新书通报</a></li>
                                            <li class="leaf active-trail active menu-mlid-1652 active"><a
                                                    href="/portal/cn/fw/ydtj/jiaoshoutuijian" title=""
                                                    class="active-trail active">教授推荐阅读</a></li>
                                            <li class="last leaf menu-mlid-1653"><a href="/portal/cn/fw/ydtj/xuezituijian">学子推荐阅读</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="leaf menu-mlid-3922"><a href="http://d2d.lib.pku.edu.cn"
                                                                       title="">上门借还服务</a></li>
                                    <li class="last leaf menu-mlid-4087"><a
                                            href="/portal/cn/jy/jybl/jieyuejiansuoyanshi">检索借阅演示</a></li>
                                </ul>
                            </div>

                        </section>
                    </div>
                </aside>  -->
        <!-- /#sidebar-first -->

        <section class="col-sm-9">
            <ol class="breadcrumb">
                <li><a href="/">首页</a></li>
                <li><span class="nolink" title="">借阅服务</span></li>
                <li><a class="active" href="/fw/hottertuijian">热门图书推荐</a></li>
                <li class="active">热门推荐阅读——对我最有影响的几本书</li>
            </ol>
            <a id="main-content"></a>
            <c:if test="${bookRecommendationList==null||bookRecommendationList.size()==0}">
                <h1 class="page-header">暂时还没有一位有感悟的读者推荐图书</h1>
            </c:if>
            <c:if test="${bookRecommendationList!=null}">
                <h1 class="page-header">热门推荐阅读——对我最有影响的几本书</h1>
                <div class="region region-content">
                    <section class="block block-system clearfix" id="block-system-main">
                        <article about="/portal/cn/fw/ydtj/jiaoshoutuijian" class="node node-page clearfix"
                                 id="node-979"
                                 typeof="foaf:Document">
                            <header>
                            <span class="rdf-meta element-hidden" content="热门推荐阅读——对我最有影响的几本书"
                                  property="dc:title"></span><span class="rdf-meta element-hidden" content="0"
                                                                   datatype="xsd:integer"
                                                                   property="sioc:num_replies"></span>
                            </header>
                            <div class="field field-name-body field-type-text-with-summary field-label-hidden">
                                <div class="field-items">
                                    <div class="field-item even" property="content:encoded">
                                        <style type="text/css">
                                            <!-- /*--><![CDATA[/* ><!--*/

                                            body.page-node-979 table tr td:nth-child(4) {
                                                display: none;
                                            }

                                            /*--><!]]>*/
                                        </style>
                                        <p>
                                            网友们在其中都谈到了对自己最有影响的几本书。图书馆将这些书目汇总起来，标明馆藏地点，推荐给读者。
                                        </p>

                                        <c:forEach items="${bookRecommendationList}" var="book">
                                            <p align="left">
                                                <strong>${book.username}</strong>
                                                <span>&nbsp;推荐时间：<strong>${book.recommendationTime}</strong></span>
                                            </p>
                                            <div class="table-responsive">
                                                <table align="center" border="0" cellpadding="0" cellspacing="0"
                                                       class="table"
                                                       style="width:100%;">
                                                    <tbody>
                                                    <tr>
                                                        <td style="width:132px;">
                                                            <p align="left">
                                                                <strong>题名</strong></p>
                                                        </td>
                                                        <td style="width:104px;">
                                                            <p align="left">
                                                                <strong>责任者</strong></p>
                                                        </td>
                                                        <td style="width:160px;">
                                                            <p align="left">
                                                                <strong>出版信息</strong></p>
                                                        </td>
                                                        <td style="width:84px;">
                                                            <p align="left">
                                                                <strong>馆藏址</strong></p>
                                                        </td>
                                                        <td style="width:102px;">
                                                            <p align="left">
                                                                <strong>索书号</strong></p>
                                                        </td>
                                                        <td style="width:102px;">
                                                            <p align="left">
                                                                <strong>推荐理由</strong></p>
                                                        </td>
                                                    </tr>
                                                    <c:forEach items="${book.dataVos}" var="dataVos">
                                                        <tr>
                                                            <td style="width:132px;">
                                                                <p align="left">
                                                                        ${dataVos.bookTitle}</p>
                                                            </td>
                                                            <td style="width:104px;">
                                                                <p align="left">
                                                                        ${dataVos.bookAuthor}</p>
                                                            </td>
                                                            <td style="width:160px;">
                                                                <p align="left">
                                                                        ${dataVos.publishYear}</p>
                                                            </td>
                                                            <td style="width:84px;">
                                                                <p align="left">
                                                                    人文社科区</p>
                                                            </td>
                                                            <td style="width:102px;">
                                                                <p align="left">
                                                                        ${dataVos.isbn}</p>
                                                            </td>
                                                            <td style="width:167px;">
                                                                <p align="left">
                                                                        ${dataVos.reason}</p>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div style="clear:both;">
                                                 
                                            </div>

                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <div class="form-item form-type-item form-group"><label class="control-label">语言</label>
                                Chinese, Simplified(简体中文)
                            </div>
                            <footer>
                                <ul class="links list-inline">
                                    <li class="translation_en first last"><a class="translation-link"
                                                                             href="/portal/en/fw/ydtj/jiaoshoutuijian"
                                                                             title="Professors&#039; Recommendations -- Valuable Books in their Views"
                                                                             xml:lang="en">English</a></li>
                                </ul>
                            </footer>
                        </article>

                    </section>
                </div>
            </c:if>

        </section>


    </div>
</div>
<div class="region region-footer">
    <section class="block block-block clearfix" id="block-block-59">


        <!-- 自定义区块开始：全页面屏底社交网络工具，窗口底边固定 -->
        <div class="custom-global-bottom-sticker">
            <div class="container">
                <div id="custom-global-bottom-edge-label-ask">
                    <a href="/portal/cn/zxt/dianhua">
                        <img src="/static/picture/custom-global-bottom-edge-ask.png" style="cursor: help;"/>
                    </a>
                </div>
                <div id="custom-global-bottom-edge-navbar">
                    <ul>
                        <li id="custom-global-bottom-edge-backtotop">
                            <a onclick="back2Top(); return false;">
                                <span aria-hidden="true" class="glyphicon glyphicon-menu-up"></span>回到顶部
                            </a> |
                        <li>
                            <a href="/portal/cn/zxt/dianhua" style="cursor: help;">咨询台</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- 自定义区块结束 -->
    </section>
</div>
<script type="text/javascript">
    function showHideAnchorNav() {
        var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
        if (scrollTop > document.documentElement.clientHeight / 3) {
            jQuery("#custom-global-bottom-edge-label-ask").css("visibility", "visible");
            jQuery("#custom-global-bottom-edge-navbar").css("visibility", "visible");
        } else {
            jQuery("#custom-global-bottom-edge-label-ask").css("visibility", "hidden");
            jQuery("#custom-global-bottom-edge-navbar").css("visibility", "hidden");
        }
    }

    showHideAnchorNav();
    jQuery(window).on("scroll", showHideAnchorNav);

</script>
<script src="/static/js/bootstrap.js"></script>
<div style="display:none;">
	<script src="/static/js/h.js" type="text/javascript"></script>
</div>
</body>
</html>
