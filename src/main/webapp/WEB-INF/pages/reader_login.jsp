<%@ page import="com.bai.utils.constants.Constants" %>
<%@ page contentType="text/html; UTF-8" isELIgnored="false" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html dir="ltr" lang="zh-hans"
      prefix="content: http://purl.org/rss/1.0/modules/content/ dc: http://purl.org/dc/terms/ foaf: http://xmlns.com/foaf/0.1/ og: http://ogp.me/ns# rdfs: http://www.w3.org/2000/01/rdf-schema# sioc: http://rdfs.org/sioc/ns# sioct: http://rdfs.org/sioc/types# skos: http://www.w3.org/2004/02/skos/core# xsd: http://www.w3.org/2001/XMLSchema#">
<head>
	<link href="http://www.w3.org/1999/xhtml/vocab" rel="profile"/>
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<meta content="webkit|ie-comp|ie-stand" name="renderer">
	<meta content="text/html; charset=utf-8" http-equiv="Content-Type"/>
	<meta content="XXXXXXXXXXXXXXXXXXXXXXXXXXXX" name="Generator"/>
	<link href="<c:url value="<%=Constants.StaticIcon.icon_index%>"/>" rel="shortcut icon"
	      type="image/vnd.microsoft.icon"/>
	<title>我的图书馆 | xxx图书馆</title>
	<link href="/static/css/css_o9umxtgxxq9a2xbebn4tkpmgbu4lavzerjcrl8gozdw.css" media="all" rel="stylesheet"
	      type="text/css"/>
	<link href="/static/css/css_k63pupoxloolfk6iyuhto-czl943ncprr4wiilqy3yw.css" media="all" rel="stylesheet"
	      type="text/css"/>
	<link href="/static/css/css_8orp6q91fonbds2ydw1jde0dvffl2uqdwazzyxea4zs.css" media="all" rel="stylesheet"
	      type="text/css"/>
	<link href="/static/css/css_2wj43g_m8tavtlgxdf6boz6fcu2l8otqn9hbyj0bzr0.css" media="all" rel="stylesheet"
	      type="text/css"/>
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
	<script src="/static/js/pkusso.js"></script>
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
            "theme": "pkulib2018", "theme_token": "sJX2v7A4eSR8nHmijhe6UXLe2EkJabgN65DLLEgyYCw", "js": {
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
                "sites\/all\/modules\/pkusso\/pkusso.js": 1,
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
                "sites\/all\/modules\/pkusso\/pkusso.css": 1,
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
	<style>


        a:hover, a:visited {
            text-decoration: none;
            color: #3c763d !important;
            background: none !important;
        }
	
	</style>
</head>
<body class="html not-front not-logged-in no-sidebars page-mylib i18n-zh-hans section-mylib">
<div id="skip-link">
	<a class="element-invisible element-focusable" href="#main-content">跳转到主要内容</a>
</div>
<div class="main-container container">
	
	<header id="page-header" role="banner">
	
	</header> <!-- /#page-header -->
	
	<div class="row">
		
		
		<section class="col-sm-12">
			<ol class="breadcrumb">
				<li><a href="/portal/cn">首页</a></li>
				<li class="active">我的图书馆</li>
			</ol>
			<a id="main-content"></a>
			<h1 class="page-header">我的图书馆</h1>
			<div class="region region-content">
				<section class="block block-system clearfix" id="block-system-main">
					
					
					<style>
                        #borrowRuleA:hover {
                            color: #337ab7;
                            background-color: transparent;
                        }
					</style>
					<div id="pkusso-login-block"
					     style="background-image:url('/static/img/reader_login.jpg');height: 99.5vh">
						<div class="container">
							<div>
								<div class="pkusso-login-form-header">
									<h4 class="mylib-title">我的图书馆</h4>
									<div class="mylib-mimashuoming">
										<c:if test="${tip!=null}">
											<p><font color="red">${tip.msg}</font></p>
										</c:if>
									</div>
								</div>
								<form action="javascript:void(0);" id="pkusso-login" method="post" name="pkusso-login"
								      onsubmit="loginCheck()">
									<div class="form-group uid-group has-feedback">
										<input class="form-control" id="userid" name="userid"
										       placeholder="请输入学号"
										       type="text">
									</div>
									<div class="form-group passwd-group">
										<input autocomplete="off" class="form-control" id="password" name="password"
										       placeholder="请输入密码（默认为身份证后六位）" type="password">
										<input type="hidden" id="_model" name="_model" value="reader">
									</div>
									<button class="btn btn-default mylib-login-submit" type="submit">
										登录
									</button>
									<div style="display: none;">
										<input id="verb" name="verb" type="hidden" value="login">
										<!--input type="hidden" value="false" id="Iplogin" name="Iplogin"-->
										<input id="Lid" name="Lid" type="hidden" value="portal">
										<!--input type="hidden" value="kluwer" id="Lid" name="Lid"-->
										<!--  <input id="goto" name="goto"
												 type="hidden" value="https://www.lib.pku.edu.cn/portal/cn/mylib?">-->
										<input id="goto" name="goto"
										       type="hidden" value="#">
										<!--<input type="hidden" value="" id="goto" name="goto">-->
										<!--<input type="hidden" value="" id="goto" name="goto">-->
										<!--input type="hidden" value="http://162.105.138.184:8090/idp/pku?goto=http%3A%2F%2Fuas.bj.calis.edu.cn%3A8090%2Famconsole%2FAuthServices%2F211010%3Fverb%3Dsplogin%26goto%3Dhttp%3A%2F%2F162.105.140.125%2Fdrupal6%2Fpkusso%2Flogin%253Fidp%253D211010" id="goto" name="goto"-->
									</div>
									<h3 class="mylib-title" style="float: right"><a
											href="<c:url value="/reader_register.html"/>">注册</a>
									</h3>
								</form>
							</div>
						</div>
					</div>
				</section>
			</div>
		</section>
	
	
	</div>
</div>
<script src="/static/js/bootstrap.js"></script>
<div style="display:none;">
	<script src="/static/js/h.js" type="text/javascript"></script>
</div>
</body>
</html>
