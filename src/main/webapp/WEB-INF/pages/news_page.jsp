<%@ page import="cn.hutool.core.date.DateUtil" %>
<%@ page import="cn.hutool.core.util.ObjectUtil" %>
<%@ page import="com.bai.utils.constants.Constants" %>
<%@ page contentType="text/html;charset=utf-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html dir="ltr" lang="zh-hans"
      prefix="content: http://purl.org/rss/1.0/modules/content/ dc: http://purl.org/dc/terms/ foaf: http://xmlns.com/foaf/0.1/ og: http://ogp.me/ns# rdfs: http://www.w3.org/2000/01/rdf-schema# sioc: http://rdfs.org/sioc/ns# sioct: http://rdfs.org/sioc/types# skos: http://www.w3.org/2004/02/skos/core# xsd: http://www.w3.org/2001/XMLSchema#">
<head>
	<link href="http://www.w3.org/1999/xhtml/vocab" rel="profile"/>
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<meta content="webkit|ie-comp|ie-stand" name="renderer">
	<meta content="text/html; charset=utf-8" http-equiv="Content-Type"/>
	<meta content="XXXXXXXXXXXXXXXXXXXXXXXXXXXX" name="Generator"/>
	<link href="/portal/cn/news/0000002496" rel="canonical"/>
	<link href="/portal/cn/node/6311" rel="shortlink"/>
	<link href="<c:url value="<%=Constants.StaticIcon.ICON_PATH%>"/>" rel="shortcut icon"
	      type="image/vnd.microsoft.icon"/>
	<title>${news.newsTitle}</title>
	<link type="text/css" rel="stylesheet" href="/static/css/css_o9umxtgxxq9a2xbebn4tkpmgbu4lavzerjcrl8gozdw.css"
	      media="all"/>
	<link type="text/css" rel="stylesheet" href="/static/css/css_k63pupoxloolfk6iyuhto-czl943ncprr4wiilqy3yw.css"
	      media="all"/>
	<link type="text/css" rel="stylesheet" href="/static/css/css_sifat1yrbnt1yexl-kgocar2lk9ihpzmzhha3b-_44s.css"
	      media="all"/>
	<link type="text/css" rel="stylesheet" href="/static/css/css_2wj43g_m8tavtlgxdf6boz6fcu2l8otqn9hbyj0bzr0.css"
	      media="all"/>
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
	<script src=/static/js/html5shiv-printshiv.min.js"></script>
	<script src=/static/js/respond.js"></script>
	<![endif]-->
	
	<!--[if (gt IE 9)|(gt IEMobile 7)|(!IE)]><!-->
	
	<!--<![endif]-->
	<script src=/static/js/jquery.min.js"></script>
	<script src=/static/js/jquery-extend-3.4.0.js"></script>
	<script src=/static/js/jquery-html-prefilter-3.5.0-backport.js"></script>
	<script src=/static/js/jquery.once.js"></script>
	<script src=/static/js/drupal.js"></script>
	<script src=/static/js/admin_devel.js"></script>
	<script src=/static/js/jquery-migrate-1.2.0.js"></script>
	<script src=/static/js/jquery.lazyloader.js"></script>
	<script src=/static/js/extlink.js"></script>
	<script src=/static/js/_progress.js"></script>
	<script src=/static/js/zh-hans_9-aoirakfv3_r5hhnl3qaotbxqnqba9zow2xp9jlebq.js"></script>
	<script src=/static/js/lightbox.js"></script>
	<script src=/static/js/tb-megamenu-frontend.js"></script>
	<script src=/static/js/tb-megamenu-touch.js"></script>
	<script src=/static/js/quicktabs.js"></script>
	<script src=/static/js/jquery.hoverintent.minified.js"></script>
	<script src=/static/js/sftouchscreen.js"></script>
	<script src=/static/js/sfsmallscreen.js"></script>
	<script src=/static/js/jquery.bgiframe.min.js"></script>
	<script src=/static/js/superfish.js"></script>
	<script src=/static/js/supersubs.js"></script>
	<script src=/static/js/superfish.js"></script>
	<script src=/static/js/bootstrap.min.js"></script>
	<script src=/static/js/jquery.qrcode.min.js"></script>
	<script src=/static/js/custom.js"></script>
	<script src=/static/js/custom-ge.js"></script>
	<script>jQuery.extend(Drupal.settings, {
        "basePath": "\/portal\/",
        "pathPrefix": "cn\/",
        "ajaxPageState": {
            "theme": "pkulib2018", "theme_token": "BRqLt-1NHlfZhdjaOSw61xPZxp9C30D1WLOfSt5FDrE", "js": {
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
<body class="html not-front not-logged-in no-sidebars page-node page-node- page-node-6311 node-type-article i18n-zh-hans section-news">
<div id="skip-link">
	<a class="element-invisible element-focusable" href="#main-content">跳转到主要内容</a>
</div>
<div class="main-container container">
	
	<header id="page-header" role="banner">
	
	</header> <!-- /#page-header -->
	
	<div>
		<section>
			<ol class="breadcrumb">
				<c:set var="contextPath" value="${pageContext.servletContext.contextPath}"/>
				<li><a href="${contextPath.equals("")?"/":contextPath}">首页</a></li>
				<li><a href="<c:url value="/news/journalism/page"/>">最新消息</a></li>
				<li class="active">${news.newsTitle}</li>
			</ol>
			<a id="main-content"></a>
			
			<div class="region region-content">
				<section class="block block-system clearfix" id="block-system-main">
					
					
					<div about="/portal/cn/news/0000002496" class="node node-article row clearfix" id="node-6311"
					     typeof="sioc:Item foaf:Document">
						
						<div class="col-sm-12">
							<h1 class="page-header">${news.newsTitle}</h1>
							
							<div class="meta">
								<c:set var="dateFormatter" value="<%=new DateUtil()%>"/>
								<span class="created">${dateFormatter.format(news.createTime,"yyyy-MM-dd")}</span><!-- |
	<span class="news-type">
	</span> |
	<span class="statistics">
	浏览 33 次	</span>--></div>
							
							<div class="content clearfix">
								<div class="field field-name-body field-type-text-with-summary field-label-hidden">
									<div class="field-items">
										<div class="field-item even" property="content:encoded">
											<p>
												${news.newsContent}
											</p>
											<p>
												 </p>
											<p>
												 </p>
											<p>
												 </p>
											<p align="right">
												撰稿：${news.newsAdmin}   NIU牛</p>
											<c:if test="${news.imgsList!=null&&news.imgsList.size()>0}">
												<p align="right">
													   照片：NBX NIU牛</p>
											</c:if>
											<p>
												 </p>
										</div>
									</div>
								</div>
							</div>
						</div>
					
					</div>
				
				
				</section>
			</div>
		</section>
	
	</div>
</div>
<div class="region region-footer">
	<section id="block-block-59" class="block block-block clearfix">
		
		
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
							<a onclick="javascript:back2Top(); return false;">
								<span class="glyphicon glyphicon-menu-up" aria-hidden="true"></span>回到顶部
							</a> |
						<li>
							<a href="<c:url value="<%=Constants.AccessPageUrl.CONCATME%>"/>"
							   style="cursor: help;">咨询台</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 自定义区块结束 -->
	</section>
</div>
<script src=/static/js/bootstrap.js"></script>
<div style="display:none;">
	<script src="/static/js/h.js" type="text/javascript"></script>
</div>
</body>
</html>
