<%@ page import="cn.hutool.core.date.DateUtil" %>
<%@ page import="com.bai.utils.constants.Constants" %>
<%@ page contentType="text/html;charset=utf-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html dir="ltr" lang="zh-hans"
      prefix="content: http://purl.org/rss/1.0/modules/content/ dc: http://purl.org/dc/terms/ foaf: http://xmlns.com/foaf/0.1/ og: http://ogp.me/ns# rdfs: http://www.w3.org/2000/01/rdf-schema# sioc: http://rdfs.org/sioc/ns# sioct: http://rdfs.org/sioc/types# skos: http://www.w3.org/2004/02/skos/core# xsd: http://www.w3.org/2001/XMLSchema#">
<head>
	<link href="http://www.w3.org/1999/xhtml/vocab" rel="profile"/>
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<meta content="webkit" name="renderer">
	<!-- <meta name="referrer" content="no-referrer"> -->
	<meta content="text/html; charset=utf-8" http-equiv="Content-Type"/>
	<meta content="XXXXXXXXXXXXXXXXXXXXXXXXXXXX" name="Generator"/>
	<link href="/img/library.png" rel="shortcut icon" type="image/vnd.microsoft.icon"/>
	<title>${initParam.title}</title>
	<link href="/static/css/css_o9umxtgxxq9a2xbebn4tkpmgbu4lavzerjcrl8gozdw.css" media="all" rel="stylesheet"
	      type="text/css"/>
	<link href="/static/css/css_k63pupoxloolfk6iyuhto-czl943ncprr4wiilqy3yw.css" media="all" rel="stylesheet"
	      type="text/css"/>
	<link href="/static/css/css_hsxeqhqwjwmv0a3u9ojsimyveokrqajsuqqisjackcs.css" media="all" rel="stylesheet"
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
	<!--[if lte IE 9]>
	<script>window.location = "/portal/compatibility/index.html";</script>
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
	<script src="/static/js/jquery.cookie.js"></script>
	<script src="/static/js/jquery.form.min.js"></script>
	<script src="/static/js/ajax.js"></script>
	<script src="/static/js/jquery_update.js"></script>
	<script src="/static/js/admin_devel.js"></script>
	<script src="/static/js/jquery-migrate-1.2.0.js"></script>
	<script src="/static/js/jquery.lazyloader.js"></script>
	<script src="/static/js/extlink.js"></script>
	<script src="/static/js/_progress.js"></script>
	<script src="/static/js/zh-hans_9-aoirakfv3_r5hhnl3qaotbxqnqba9zow2xp9jlebq.js"></script>
	<script src="/static/js/lightbox.js"></script>
	<script src="/static/js/tb-megamenu-frontend.js"></script>
	<script src="/static/js/tb-megamenu-touch.js"></script>
	<script src="/static/js/summon.js"></script>
	<script src="/static/js/swiper-4.1.6.min.js"></script>
	<script src="/static/js/base.js"></script>
	<script src="/static/js/quicktabs.js"></script>
	<script src="/static/js/ajax_view.js"></script>
	<script src="/static/js/mycalendar.js"></script>
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
	<script src="/static/js/ajax_view.js"></script>
	<script src="/static/js/ajax.js"></script>
	<script>jQuery.extend(Drupal.settings, {
        "basePath": "\/portal\/",
        "pathPrefix": "cn\/",
        "ajaxPageState": {
            "theme": "pkulib2018",
            "theme_token": "i8UC7A1Zi20rOqLXpITbFJ4B2VqA6YP1eu1MQRfVzmU",
            "jquery_version": "1.10",
            "js": {
                "0": 1,
                "sites\/all\/themes\/bootstrap\/js\/bootstrap.js": 1,
                "sites\/all\/modules\/jquery_update\/replace\/jquery\/1.10\/jquery.min.js": 1,
                "misc\/jquery-extend-3.4.0.js": 1,
                "misc\/jquery-html-prefilter-3.5.0-backport.js": 1,
                "misc\/jquery.once.js": 1,
                "misc\/drupal.js": 1,
                "sites\/all\/modules\/jquery_update\/replace\/ui\/external\/jquery.cookie.js": 1,
                "sites\/all\/modules\/jquery_update\/replace\/misc\/jquery.form.min.js": 1,
                "misc\/ajax.js": 1,
                "sites\/all\/modules\/jquery_update\/js\/jquery_update.js": 1,
                "sites\/all\/modules\/admin_menu\/admin_devel\/admin_devel.js": 1,
                "sites\/all\/modules\/jquery_update\/js\/jquery-migrate-1.2.0.js": 1,
                "sites\/all\/modules\/lazyloader\/jquery.lazyloader.js": 1,
                "sites\/all\/modules\/extlink\/extlink.js": 1,
                "sites\/all\/themes\/bootstrap\/js\/misc\/_progress.js": 1,
                "public:\/\/languages\/zh-hans_9-aoiRAkfV3_r5hHNl3QAotbXQNQBA9zOW2xP9JLEbQ.js": 1,
                "sites\/all\/modules\/lightbox2\/js\/lightbox.js": 1,
                "sites\/all\/modules\/tb_megamenu\/js\/tb-megamenu-frontend.js": 1,
                "sites\/all\/modules\/tb_megamenu\/js\/tb-megamenu-touch.js": 1,
                "sites\/all\/modules\/summon\/summon.js": 1,
                "sites\/all\/themes\/pkulib2018\/js\/swiper\/swiper-4.1.6.min.js": 1,
                "sites\/all\/modules\/views\/js\/base.js": 1,
                "sites\/all\/modules\/quicktabs\/js\/quicktabs.js": 1,
                "sites\/all\/modules\/views\/js\/ajax_view.js": 1,
                "sites\/all\/modules\/mycalendar\/mycalendar.js": 1,
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
                "sites\/all\/themes\/pkulib2018\/js\/custom-ge.js": 1,
                "sites\/all\/themes\/bootstrap\/js\/modules\/views\/js\/ajax_view.js": 1,
                "sites\/all\/themes\/bootstrap\/js\/misc\/ajax.js": 1
            },
            "css": {
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
                "sites\/all\/themes\/pkulib2018\/layouts\/frontpc\/frontpc.css": 1,
                "modules\/locale\/locale.css": 1,
                "sites\/all\/modules\/tb_megamenu\/css\/bootstrap.css": 1,
                "sites\/all\/modules\/tb_megamenu\/css\/base.css": 1,
                "sites\/all\/modules\/tb_megamenu\/css\/default.css": 1,
                "sites\/all\/modules\/tb_megamenu\/css\/compatibility.css": 1,
                "sites\/all\/themes\/pkulib2018\/css\/swiper\/swiper-4.1.6.min.css": 1,
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
        "better_exposed_filters": {
            "views": {
                "branches": {
                    "displays": {
                        "attachment_1": {"filters": []},
                        "block_1": {"filters": []}
                    }
                },
                "branch_terms": {"displays": {"default": {"filters": []}}},
                "mycalendar_events": {"displays": {"attachment_3": {"filters": []}}},
                "_zhanlan": {"displays": {"block_1": {"filters": []}}},
                "lecture": {"displays": {"block_1": {"filters": []}}},
                "news_list": {"displays": {"block_front": {"filters": []}, "block_1": {"filters": []}}},
                "resource_news_list": {"displays": {"block": {"filters": []}}},
                "frontpage_silders": {"displays": {"frontpage_bg_swiper": {"filters": []}}}
            }
        },
        "quicktabs": {
            "qt_front_pc_events": {
                "name": "front_pc_events",
                "tabs": [{"bid": "mycalendar_delta_mycalendar", "hide_title": 1}, {
                    "vid": "_zhanlan",
                    "display": "block_1",
                    "args": "",
                    "use_title": 0,
                    "view_path": "front-pc",
                    "view_dom_id": 1,
                    "ajax_args": "",
                    "actual_args": []
                }, {
                    "vid": "lecture",
                    "display": "block_1",
                    "args": "",
                    "use_title": 0,
                    "view_path": "front-pc",
                    "view_dom_id": 2,
                    "ajax_args": "",
                    "actual_args": []
                }],
                "ajaxPageState": {"jquery_version": "1.10"}
            },
            "qt_front_pc_ydtj": {
                "name": "front_pc_ydtj",
                "tabs": [{"bid": "block_delta_53", "hide_title": 1}, {
                    "bid": "pkulib_newbooks_delta_pkulib_newbooks",
                    "hide_title": 1
                }],
                "quicktabs": {
                    "qt_front_pc_events": {
                        "name": "front_pc_events",
                        "tabs": [{"bid": "mycalendar_delta_mycalendar", "hide_title": 1}, {
                            "vid": "_zhanlan",
                            "display": "block_1",
                            "args": "",
                            "use_title": 0,
                            "view_path": "front-pc",
                            "view_dom_id": 1,
                            "ajax_args": "",
                            "actual_args": []
                        }, {
                            "vid": "lecture",
                            "display": "block_1",
                            "args": "",
                            "use_title": 0,
                            "view_path": "front-pc",
                            "view_dom_id": 2,
                            "ajax_args": "",
                            "actual_args": []
                        }],
                        "ajaxPageState": {"jquery_version": "1.10"}
                    }
                }
            },
            "qt_search_quicktab": {
                "name": "search_quicktab",
                "tabs": [{"bid": "summon_delta_summon", "hide_title": 0}, {
                    "bid": "block_delta_4",
                    "hide_title": 0
                }, {"bid": "block_delta_5", "hide_title": 0}, {
                    "bid": "block_delta_6",
                    "hide_title": 0
                }, {"bid": "views_delta_-exp-site_search2-page", "hide_title": 0}],
                "quicktabs": {
                    "qt_front_pc_events": {
                        "name": "front_pc_events",
                        "tabs": [{"bid": "mycalendar_delta_mycalendar", "hide_title": 1}, {
                            "vid": "_zhanlan",
                            "display": "block_1",
                            "args": "",
                            "use_title": 0,
                            "view_path": "front-pc",
                            "view_dom_id": 1,
                            "ajax_args": "",
                            "actual_args": []
                        }, {
                            "vid": "lecture",
                            "display": "block_1",
                            "args": "",
                            "use_title": 0,
                            "view_path": "front-pc",
                            "view_dom_id": 2,
                            "ajax_args": "",
                            "actual_args": []
                        }],
                        "ajaxPageState": {"jquery_version": "1.10"}
                    }
                }
            }
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
<body class="html front not-logged-in no-sidebars page-front-pc i18n-zh-hans">
<div id="skip-link">
	<a class="element-invisible element-focusable" href="#main-content">跳转到主要内容</a>
</div>


<div class="pkulib-frontpage">
	<div class="region region-content">
		<section class="block block-system clearfix" id="block-system-main">
			
			
			<nav class="anchor-nav" role="navigation">
				<a alt="News" class="active" href="#front-news" id="anchor1">01<i class="anchor-tip">最新消息</i></a>
				<a alt="Selected Services" href="#front-service" id="anchor2">02<i class="anchor-tip">热门服务</i></a>
				<%--				<a alt="Collections" href="#front-resource" id="anchor3">03<i class="anchor-tip">馆藏资源</i></a>
								<a alt="Special Collections" href="#front-special" id="anchor4">04<i class="anchor-tip">特色资源</i></a>--%>
				<a alt="Recommended Reading" href="#front-recommendation" id="anchor5">03<i
						class="anchor-tip">阅读推荐</i></a>
			</nav>
			<div class="panel-block" id="front-news">
				<div class="pane-title-wrapper"><h3 class="pane-title"><span>最新消息</span></h3></div>
				<div class="container">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6">
							<div class="panel-pane pane-views pane-news-list">
								
								<h2 class="pane-title">
									<a href="<%=Constants.AccessPageUrl.JOURNALISM_URL%>">最新消息</a></h2>
								
								
								<div class="pane-content">
									<div class="view view-news-list view-id-news_list view-display-id-block_front view-dom-id-afec1cff3d56490a8bb190c3a944c7dc">
										
										
										<div class="view-content">
											<c:set var="newsList" value="${newsList}"/>
											<c:set var="newsListLength" value="${newsList.size()}"/>
											<c:set var="dateFormatter" value="<%=new DateUtil()%>"/>
											<c:set var="homePageSize" value="<%=Constants.HOME_PAGE_MSG_SIZE%>"/>
											
											<c:if test="${newsList!=null&&newsList.size()>0}">
												<c:forEach var="news" varStatus="s" items="${newsList}">
													<c:if test="${s.index<homePageSize}">
														<c:choose>
															<c:when test="${news.newsType==0}">
																<div class="views-row views-row-2 views-row-even">
                                                      <span class="news-list-created"><span
		                                                      class="field-content">${dateFormatter.format(news.createTime,"MM/dd")}</span></span>
																	<span class="news-list-link">
                                                          <a class="links-type-class-anounce"
                                                             href="<%=Constants.AccessPageUrl.NOTICE_URL%>"
                                                             target="_blank"><%=Constants.News.NOTICE.type%></a>
                                                        </span>
																	<span class="news-list-title"><span
																			class="field-content"><a
																			href="<%=Constants.AccessPageUrl.JOURNALISM_URL%>/${news.newsId}"
																			target="_blank"><span
																			title="${news.newsTitle}">${news.newsTitle}</span></a></span></span>
																</div>
															</c:when>
															<c:when test="${news.newsType==1}">
																<div class="views-row views-row-3 views-row-odd">

                                                                <span class="news-list-created"><span
		                                                                class="field-content">${dateFormatter.format(news.createTime,"MM/dd")}</span></span>
																	<span class="news-list-link">

<a class="links-type-class-news" href="<%=Constants.AccessPageUrl.JOURNALISM_URL%>"
   target="_blank"><%=Constants.News.NEWS.type%></a>
</span>
																	<span class="news-list-title"><span
																			class="field-content"><a
																			href="<c:url value="/news/journalism/page/${news.newsId}"/>"
																			target="_blank"><span
																			title="${news.newsTitle}">${news.newsTitle}</span></a></span></span>
																
																</div>
															</c:when>
															<c:when test="${news.newsType==2}">
																<div class="views-row views-row-1 views-row-odd views-row-first">

                                                                <span class="news-list-created"><span
		                                                                class="field-content">${dateFormatter.format(news.createTime,"MM/dd")}</span></span>
																	<span class="news-list-link">

<a class="links-type-class-event" href="<%=Constants.AccessPageUrl.ACTIVITY_URL%>"
   target="_blank"><%=Constants.News.ACTIVITY.type%></a>
</span>
																	<span class="news-list-title"><span
																			class="field-content"><a
																			href="<%=Constants.AccessPageUrl.JOURNALISM_URL%>/${news.newsId}"
																			target="_blank"><span
																			title="${news.newsTitle}">${news.newsTitle}</span></a></span></span>
																</div>
															</c:when>
														</c:choose>
													</c:if>
												</c:forEach>
											</c:if>
										</div>
										
										
										<c:if test="${newsListLength>=homePageSize}">
											<div class="more-link">
												<a href='<c:url value="/news/journalism/page"/>' target="_blank">
													更多+ </a>
											</div>
										</c:if>
									
									
									</div>
								</div>
							
							
							</div>
							<div class="panel-separator"></div>
						
						</div>
					</div>
				</div>
			</div>
			<div class="panel-block" id="front-service">
				<div class="pane-title-wrapper"><h3 class="pane-title"><span>热门服务</span></h3></div>
				<div class="container">
					<div class="row">
						<div class="col-lg-8 col-md-8 col-sm-8">
							<div class="panel-pane pane-block pane-block-48">
								
								
								<div class="pane-content">
									<!-- 自定义区块开始：热门服务列表：学生
									@Author wanghx
									-->
									
									<div id="custom-front-service-4students">
										<h3><%=Constants.Role.READER.usernmae%>
										</h3>
										<div id="custom-front-service-service-list">
											<ul class="for-students">
												<%-- <li class="type-title col-lg-3 col-md-4 col-sm-6 col-xs-6">
													 空间布局
													 <ul>
														 <li>
															 <p>
																 <a href="/portal/cn/fw/rgzn/guancangfenbu"
																	target="_blank" title="">馆藏分布</a></p>
														 </li>
													 </ul>
												 </li>--%>
												
												<li class="type-title col-lg-3 col-md-4 col-sm-6 col-xs-6">
													图书借阅
													<ul>
														<li>
															<p>
																<a href="<c:url value="/reader/tologin"/>"
																   target="_self"
																   title="">读者登录</a>
															</p>
														</li>
														<li>
															<p>
																<a href="<c:url value="/reader_main.html"/>"
																   target="_blank"
																   title="">个人借阅状态查询</a>
															</p>
														</li>
														<%--todo 以下是待开发功能项--%>
														<li>
															<p>
																<a href="/portal/cn/jyfw/jybl/cjygh" target="_blank"
																   title="">出借与归还</a></p>
														</li>
														<li>
															<p>
																<a href="/portal/cn/jyfw/jybl/xjyyj" target="_blank"
																   title="">续借与预约</a></p>
														</li>
														<li>
															<p>
																<a href="/portal/cn/fg/jieyueshuoming" target="_blank"
																   title="">借阅分馆FAQ</a></p>
														</li>
													</ul>
												</li>
												<li class="type-title col-lg-3 col-md-4 col-sm-6 col-xs-6">
													读者指南
													<ul>
														<li>
															<p>
																<a href="<c:url value="<%=Constants.AccessPageUrl.WENMINGGONGYUE%>"/>"
																   target="_blank"
																   title="">文明读者公约</a>
															</p>
														</li>
														<li>
															<p>
																<a href="<c:url value="<%=Constants.AccessPageUrl.RUGUANGUANLI%>"/>"
																   target="_blank"
																   title="">用户入馆管理办法</a></p>
														</li>
													</ul>
												</li>
												<li class="type-title col-lg-3 col-md-4 col-sm-6 col-xs-6">
													关于本馆
													<ul>
														<li>
															<p>
																<a href="<c:url value="<%=Constants.AccessPageUrl.CONCATME%>"/>"
																   target="_blank"
																   title="">联系我们</a>
															</p>
														</li>
														<li>
															<p>
																<a href="<c:url value="<%=Constants.AccessPageUrl.WENMINGGONGYUE%>"/>"
																   target="_blank"
																   title="">加入我们</a>
															</p>
														</li>
													
													</ul>
												</li>
												<%--<li class="type-title col-lg-3 col-md-4 col-sm-6 col-xs-6">
													图书借阅
													<ul>
														<li>
															<p>
																<a href="/portal/mylib/services/status" target="_blank"
																   title="">个人借阅状态查询</a></p>
														</li>
														<li>
															<p>
																<a href="/portal/cn/jyfw/jybl/cjygh" target="_blank"
																   title="">出借与归还</a></p>
														</li>
														<li>
															<p>
																<a href="/portal/cn/jyfw/jybl/xjyyj" target="_blank"
																   title="">续借与预约</a></p>
														</li>
														<li>
															<p>
																<a href="/portal/cn/fg/jieyueshuoming" target="_blank"
																   title="">借阅分馆FAQ</a></p>
														</li>
													</ul>
												</li>--%>
												<%--   <li class="type-title col-lg-3 col-md-4 col-sm-6 col-xs-6">
													   馆际互借
													   <ul>
														   <li>
															   <p>
																   <a href="/portal/cn/fw/gjhj/tijiaoshenqing"
																	  target="_blank" title="">提交申请</a></p>
														   </li>
														   <!--这个链接没有找到 -->
														   <li>
															   <p>
																   <a href="/portal/cn/fw/gjhj/changyongshumu"
																	  target="_blank" title="">校外书目查询系统</a></p>
														   </li>
													   </ul>
												   </li>--%>
												<%--     <li class="type-title col-lg-3 col-md-4 col-sm-6 col-xs-6">
														 阅读推广
														 <ul>
															 <li>
																 <p>
																	 <a href="http://newbooks.lib.pku.edu.cn/"
																		target="_blank" title="">新书通报</a></p>
															 </li>
															 <li>
																 <p>
																	 <a href="/portal/cn/fw/ydtj/jiaoshoutuijian"
																		target="_blank" title="">教授推荐阅读</a></p>
															 </li>
															 <!--这个链接画了删除线 -->
															 <li>
																 <p>
																	 <a href="/portal/cn/fw/ydtj/xuezituijian"
																		target="_blank" title="">学子推荐阅读</a></p>
															 </li>
														 </ul>
													 </li>
													<li class="type-title col-lg-3 col-md-4 col-sm-6 col-xs-6">
														 设备设施
														 <ul>
															 <li>
																 <p>
																	 <a href="/portal/cn/xxzc/tycx?qt-content_page_innovation=2#qt-content_page_innovation"
																		target="_blank" title="">3D打印服务</a></p>
															 </li>
															 <li>
																 <p>
																	 <a href="/portal/cn/fw/kongjiansheshi/zizhufuwu"
																		target="_blank" title="">自助服务</a></p>
															 </li>
														 </ul>
													 </li>
													 <li class="type-title col-lg-3 col-md-4 col-sm-6 col-xs-6">
														 提升信息素养
														 <ul>
															 <!--无链接 -->
															 <li>
																 <p>
																	 <a href="/portal/cn/xxzc/yixiaoshi" target="_blank"
																		title="">一小时讲座</a></p>
															 </li>
															 <li>
																 <p>
																	 <a href="/portal/cn/fw/yixiaoshijiangzuo/xinxisuyang"
																		target="_blank" title="">信息素养课</a></p>
															 </li>
															 <li>
																 <p>
																	 <a href="/portal/cn/fw/yixiaoshijiangzuo/xinxisuyang"
																		target="_blank"
																		title="">《数字图书馆资源检索与利用》视频课</a></p>
															 </li>
															 <li>
																 <p>
																	 <a href="http://il.lib.pku.edu.cn/" target="_blank"
																		title="">信息素养能力评测</a></p>
															 </li>
															 <li>
																 <p>
																	 <a href="/portal/cn/fw/yixiaoshijiangzuo/xinxisuyangyouxi"
																		target="_blank" title="">信息素养手机游戏</a></p>
															 </li>
															 <li>
																 <p>&nbsp;
																 </p>
															 </li>
														 </ul>
													 </li>
													 <li class="type-title col-lg-3 col-md-4 col-sm-6 col-xs-6">
														 常用软件与培训
														 <ul>
															 <!--无链接 -->
															 <li>
																 <p>
																	 <a href="/portal/cn/fw/kongjiansheshi/zizhufuwu"
																		target="_blank" title="">联创自助打印系统驱动</a></p>
															 </li>
															 <li>
																 <p>
																	 <a href="/portal/cn/zy/software" target="_blank"
																		title="">SPSS</a></p>
															 </li>
															 <!--无链接 -->
															 <li>
																 <p>
																	 <a href="/portal/cn/zy/software?qt-content_page_software=3#qt-content_page_software"
																		target="_blank" title="">NoteExpress</a></p>
															 </li>
															 <!--无链接 -->
															 <li>
																 <p>
																	 <a href="/portal/cn/zy/software?qt-content_page_software=4#qt-content_page_software"
																		target="_blank" title="">EndNote</a></p>
															 </li>
															 <li>
																 <p>
																	 <a href="/portal/cn/xxzc/yixiaoshi?qt-content_page_onehour=4#qt-content_page_onehour"
																		target="_blank" title="">一小时讲座之软件达人</a></p>
															 </li>
														 </ul>
													 </li>--%>
											</ul>
										</div>
									</div>
									<!-- 自定义区块结束 --> </div>
							
							
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4">
							<div class="panel-pane pane-block pane-block-49">
								
								
								<div class="pane-content">
									<!-- 自定义区块开始：热门服务列表：研究生+教师
									@Author wanghx
									-->
									<div id="custom-front-service-4researchers">
										<%--<h3>研究生+教师</h3>--%>
										<h3><%=Constants.Role.ADMIN.usernmae%>
										</h3>
										<div id="custom-front-service-service-list">
											<ul class="for-teachers">
												<li class="type-title col-lg-6 col-md-6 col-sm-12 col-xs-6">
													后台管理
													<ul>
														<li>
															<p>
																<a href="${pageContext.servletContext.contextPath}/tologin"
																   target="_blank" title="">进入管理后台</a></p>
														</li>
													</ul>
												</li>
												<%--        <li class="type-title col-lg-6 col-md-6 col-sm-12 col-xs-6">
															学科分析报告
															<ul>
																<li>
																	<p>
																		<a href="/portal/cn/fw/kyzc/jingzhengqingbao"
																		   target="_blank" title="">学科竞争力分析报告</a></p>
																</li>
																<li>
																	<p>
																		<a href="/portal/cn/fw/kyzc/zhishichanquan"
																		   target="_blank" title="">学科前沿报告</a></p>
																</li>
															</ul>
														</li>
														<li class="type-title col-lg-6 col-md-6 col-sm-12 col-xs-6">
															专利申请
															<ul>
																<li>
																	<p>
																		<a href="/portal/cn/fw/zlxx/zhuanlizixun"
																		   target="_blank" title="">专利咨询</a></p>
																</li>
																<li>
																	<p>
																		<a href="/portal/cn/fw/zlxx/zhuanlipeixun"
																		   target="_blank" title="">相关培训</a></p>
																</li>
																<!--是否为专利资源导航 -->
																<li>
																	<p>
																		<a href="/portal/cn/fw/zlxx/zhuanliziyuan"
																		   target="_blank" title="">专利数据库</a></p>
																</li>
															</ul>
														</li>
														<li class="type-title col-lg-6 col-md-6 col-sm-12 col-xs-6">
															教学与培训
															<ul>
																<!--无链接 -->
																<li>
																	<p>
																		<a href="/portal/cn/xxzc/yixiaoshi" target="_blank"
																		   title="">一小时讲座</a></p>
																</li>
																<!--无链接 -->
																<li>
																	<p>
																		<a href="/portal/cn/fw/yixiaoshijiangzuo/zhuanchangjiangzuo"
																		   target="_blank" title="">定制讲座</a></p>
																</li>
																<li>
																	<p>
																		<a href="/portal/cn/fw/yixiaoshijiangzuo/xinxisuyang"
																		   target="_blank" title="">信息素养课</a></p>
																</li>
																<li>
																	<p>
																		<a href="http://il.lib.pku.edu.cn/" target="_blank"
																		   title="">信息素养能力评测</a></p>
																</li>
															</ul>
														</li>

														<li class="type-title col-lg-6 col-md-6 col-sm-12 col-xs-6">
															写作支持
															<ul>
																<!--无链接 -->
																<li>
																	<p>
																		<a href="/portal/cn/xxzc/yixiaoshi?qt-content_page_onehour=3"
																		   target="_blank" title="">如何洞悉学科热点</a></p>
																</li>
																<!--无链接 -->
																<li>
																	<p>
																		<a href="/portal/cn/xxzc/yixiaoshi?qt-content_page_onehour=3"
																		   target="_blank" title="">如何进行文献调研</a></p>
																</li>
																<li>
																	<p>
																		<a href="/portal/cn/xxzc/yixiaoshi?qt-content_page_onehour=3"
																		   target="_blank" title="">学术规范与论文写作</a></p>
																</li>
																<li>
																	<p>
																		<a href="/portal/cn/xxzc/yixiaoshi?qt-content_page_onehour=3"
																		   target="_blank" title="">论文投稿指南</a></p>
																</li>
																<!--无链接 -->
																<li>
																	<p>
																		<a href="/portal/cn/zy/software?qt-content_page_software=4#qt-content_page_software"
																		   target="_blank" title="">文献管理软件</a></p>
																</li>
															</ul>
														</li>--%>
											</ul>
										</div>
									</div>
								</div>
							
							
							</div>
						</div>
					</div>
				</div>
			</div>
			<%--			<div class="panel-block" id="front-resource">
							<div class="pane-title-wrapper"><h3 class="pane-title"><span>馆藏资源</span></h3></div>
							<div class="container">
								<div class="row">
									<div class="col-lg-2 col-md-2">
										<div class="panel-pane pane-block pane-block-50">
											
											
											<div class="pane-content">
												<!-- 自定义区块开始：资源左侧介绍页列表
												@Author wanghx
												-->
												<ul id="custom-front-resource-left">
													<c:if test="${classInfoList==null}">
														<!--图书和电子图书不是一个url-->
														<li>
															<p>
																<a href="http://162.105.138.200/uhtbin/cgisirsi/0/0/0/49"
																   target="_blank" title="">图书/期刊</a></p>
														</li>
														<li>
															<p>
																<a href="http://zm8lp2fe5j.search.serialssolutions.com/ejp/?libHash=ZM8LP2FE5J#/?language=zh-CN&titleType=BOOKS"
																   target="_blank" title="">电子图书</a></p>
														</li>
														<li>
															<p>
																<a href="http://zm8lp2fe5j.search.serialssolutions.com/ejp/?libHash=ZM8LP2FE5J#/?language=zh-CN&amp;titleType=JOURNALS"
																   target="_blank" title="">电子期刊</a></p>
														</li>
														<li>
															<p>
																<a href="http://dbnav.lib.pku.edu.cn/" target="_blank"
																   title="">数据库</a></p>
														</li>
														<li>
															<p>
																<a href="http://dbnav.lib.pku.edu.cn/newdbi?field_fenlei_neirongleixing_tid%5B%5D=35"
																   target="_blank" title="">学位论文</a></p>
														</li>
														<li>
															<p>
																<a href="zy/zzzy/guji" target="_blank" title="">古籍</a></p>
														</li>
														<li>
															<p>
																<a href="http://media.lib.pku.edu.cn/" target="_blank"
																   title="">视频/音频</a></p>
														</li>
														<li>
															<p>
																<a href="http://appendcd.lib.pku.edu.cn/"
																   target="_blank">随书光盘</a>
															</p>
														</li>
														<li>
															<p>
																<a href="http://dbnav.lib.pku.edu.cn/newdbi?field_fenlei_neirongleixing_tid%5B%5D=34"
																   target="_blank" title="">报纸</a></p>
														</li>
														<li>
															<p>
																<a href="http://dbnav.lib.pku.edu.cn/newdbi?field_fenlei_neirongleixing_tid%5B%5D=38"
																   target="_blank" title="">统计数据/研究数据</a></p>
														</li>
														<li>
															<p>
																<a href="http://dbnav.lib.pku.edu.cn/newdbi?field_fenlei_neirongleixing_tid%5B%5D=37"
																   target="_blank" title="">档案</a></p>
														</li>
														<li>
															<p>
																<a href="/portal/cn/zy/software" target="_blank"
																   title="">工具与软件</a>
															</p>
														</li>
													</c:if>
													<c:if test="${classInfoList!=null}">
														<c:forEach items="${classInfoList}" var="classs">
															<li>
																<p>
																		&lt;%&ndash;todo 这里需要返回的是classVo&ndash;%&gt;
																	<a href="http://162.105.138.200/uhtbin/cgisirsi/0/0/0/49"
																	   target="_blank" title="">${classs.className}</a></p>
															</li>
														</c:forEach>
													</c:if>
												</ul>
												
												<!-- 自定义区块结束 --> </div>
										
										
										</div>
									</div>
									<div class="col-lg-10 col-md-10">
										<div class="panel-pane pane-block pane-block-51">
											
											
											<div class="pane-content">
												<!-- 自定义区块开始：资源右侧含图片资源链接
												@Author wanghx
												-->
												<div id="custom-front-resource-right">
													<h3>
														文学图书奖系列</h3>
													<ul>
														<li class="col-lg-4 col-md-4 col-sm-6 col-xs-6">
															<a href="/portal/cn/zy/huojiangtushu?field_selected_jiangxiang_tid=73"
															   target="_blank" title="">
																<div class="prize-img"><img alt=""
																							src="/static/picture/custom-front-resource-right-1.jpg"/>
																</div>
																<div class="prize-info"><p class="prize-title">
																	<a href="/portal/cn/zy/huojiangtushu?field_selected_jiangxiang_tid=73"
																	   target="_blank" title="">艾略特奖/ The T. S. Eliot Prize</a>
																</p>
																	<p class="prize-intro">
																	</p></div>
															</a>
														</li>
														<li class="col-lg-4 col-md-4 col-sm-6 col-xs-6">
															<a href="/portal/cn/zy/huojiangtushu?field_selected_jiangxiang_tid=72"
															   target="_blank" title="">
																<div class="prize-img"><img alt=""
																							src="/static/picture/custom-front-resource-right-2.jpg"/>
																</div>
																<div class="prize-info"><p class="prize-title">
																	<a href="/portal/cn/zy/huojiangtushu?field_selected_jiangxiang_tid=72"
																	   target="_blank" title="">布克奖/ The Man Booker Prize</a></p>
																	<p class="prize-intro">
																	</p></div>
															</a>
														</li>
														<li class="col-lg-4 col-md-4 col-sm-6 col-xs-6">
															<a href="/portal/cn/zy/huojiangtushu?field_selected_jiangxiang_tid=77"
															   target="_blank" title="">
																<div class="prize-img"><img alt=""
																							src="/static/picture/custom-front-resource-right-3.jpg"/>
																</div>
																<div class="prize-info"><p class="prize-title">
																	<a href="/portal/cn/zy/huojiangtushu?field_selected_jiangxiang_tid=77"
																	   target="_blank" title="">龚古尔奖/Le prix Goncourt</a></p>
																	<p class="prize-intro">
																	</p></div>
															</a>
														</li>
														<li class="col-lg-4 col-md-4 col-sm-6 col-xs-6">
															<a href="/portal/cn/zy/huojiangtushu?field_selected_jiangxiang_tid=70"
															   target="_blank" title="">
																<div class="prize-img"><img alt=""
																							src="/static/picture/custom-front-resource-right-4.jpg"/>
																</div>
																<div class="prize-info"><p class="prize-title">
																	<a href="/portal/cn/zy/huojiangtushu?field_selected_jiangxiang_tid=70"
																	   target="_blank" title="">美国国家图书奖/National Book
																		Awards</a></p>
																	<p class="prize-intro">
																	</p></div>
															</a>
														</li>
														<li class="col-lg-4 col-md-4 col-sm-6 col-xs-6">
															<a href="/portal/cn/zy/huojiangtushu?field_selected_jiangxiang_tid=71"
															   target="_blank" title="">
																<div class="prize-img"><img alt=""
																							src="/static/picture/custom-front-resource-right-5.jpg"/>
																</div>
																<div class="prize-info"><p class="prize-title">
																	<a href="/portal/cn/zy/huojiangtushu?field_selected_jiangxiang_tid=71"
																	   target="_blank" title="">普利策小说奖/ The Pulitzer Prize for
																		Fiction</a></p>
																	<p class="prize-intro">
																	</p></div>
															</a>
														</li>
														<li class="col-lg-4 col-md-4 col-sm-6 col-xs-6 resource-readmore">
															<a href="zy/huojiangtushu" target="_blank" title="">
																<div class="prize-img"><img alt=""
																							src="/static/picture/custom-front-resource-right-5.png"/>
																</div>
																<div class="prize-info"><p class="prize-title">
																	<a href="zy/huojiangtushu" target="_blank"
																	   title="">了解更多+</a></p>
																	<p class="prize-intro">
																	</p></div>
															</a>
														</li>
													
													</ul>
													<p>
														<a href="zy/huojiangtushu" target="_blank" title="">往届精选图书&gt;</a></p>
												</div>
											</div>
										
										
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="panel-block" id="front-special">
							<div class="pane-title-wrapper"><h3 class="pane-title"><span>特色资源</span></h3></div>
							<div class="container">
								<div class="panel-pane pane-block pane-block-67">
									
									
									<div class="pane-content">
										<div id="custom-front-special">
											<div class="special-readmore">
				<span><a href="/portal/cn/zy/tszy">浏览更多></a>
											</div>
											<ul class="row">
												<li class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
													<a href="http://rbdl.calis.edu.cn/aopac/indexold.jsp" target="_blank" title="">
														<div class="special-img"><img alt="古文献资源库"
																					  data-src="/static/picture/custom-front-special-1.png"
																					  src="/static/picture/image_placeholder.gif"/>
														</div>
														<div class="special-title">
															古文献资源库
														</div>
													</a>
												</li>
												<li class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
													<a href="http://162.105.138.115/index.php?m=content&c=index&a=lists&catid=33&sserial=3713"
													   target="_blank" title="">
														<div class="special-img"><img alt="北大讲座"
																					  data-src="/static/picture/custom-front-special-2.png"
																					  src="/static/picture/image_placeholder.gif"/>
														</div>
														<div class="special-title">
															北大讲座
														</div>
													</a>
												</li>
												<li class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
													<a href="/portal/cn/zy/tszy/minguowenxian" target="_blank" title="">
														<div class="special-img"><img alt="晚清民国文献"
																					  data-src="/static/picture/custom-front-special-3.png"
																					  src="/static/picture/image_placeholder.gif"/>
														</div>
														<div class="special-title">
															晚清民国文献
														</div>
													</a>
												</li>
												<li class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
													<a href="/portal/cn/zy/tszy/xiwentecang" target="_blank" title="">
														<div class="special-img"><img alt="西文特藏"
																					  data-src="/static/picture/custom-front-special-4.png"
																					  src="/static/picture/image_placeholder.gif"/>
														</div>
														<div class="special-title">
															西文特藏
														</div>
													</a>
												</li>
												<li class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
													<a href="/portal/cn/zy/tszy/yandalunwen" target="_blank" title="">
														<div class="special-img"><img alt="燕大学位论文"
																					  data-src="/portal/sites/default/files/siteimages/custom-front-special-5.png"
																					  src="/static/picture/image_placeholder.gif"/>
														</div>
														<div class="special-title">
															燕大学位论文
														</div>
													</a>
												</li>
												<li class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
													<a href="/portal/cn/zy/tszy/beidawenku" target="_blank" title="">
														<div class="special-img"><img alt="北大文库"
																					  data-src="/portal/sites/default/files/siteimages/custom-front-special-6.png"
																					  src="/static/picture/image_placeholder.gif"/>
														</div>
														<div class="special-title">
															北大文库
														</div>
													</a>
												</li>
												<li class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
													<a href="/portal/cn/zy/tszy/mingrencangshu" target="_blank" title="">
														<div class="special-img"><img alt="名人藏书"
																					  data-src="/portal/sites/default/files/siteimages/custom-front-special-7.png"
																					  src="/static/picture/image_placeholder.gif"/>
														</div>
														<div class="special-title">
															名人藏书
														</div>
													</a>
												</li>
												<li class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
													<a href="/portal/cn/zy/tszy/shuzitecang" target="_blank" title="">
														<div class="special-img"><img alt="数字特藏"
																					  data-src="/portal/sites/default/files/siteimages/custom-front-special-8.png"
																					  src="/static/picture/image_placeholder.gif"/>
														</div>
														<div class="special-title">
															数字特藏
														</div>
													</a>
												</li>
											</ul>
										</div>
									</div>
								
								
								</div>
							</div>
						</div>--%>
			<div class="panel-block" id="front-recommendation">
				<div class="pane-title-wrapper"><h3 class="pane-title"><span>阅读推荐</span></h3></div>
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="panel-pane pane-block pane-quicktabs-front-pc-ydtj">
								
								<h2 class="pane-title">
									front-pc-阅读推荐 </h2>
								
								
								<div class="pane-content">
									<div class="quicktabs-wrapper quicktabs-style-nostyle" id="quicktabs-front_pc_ydtj">
										<ul class="quicktabs-tabs quicktabs-style-nostyle">
											<li>
												<a class="quicktabs-tab quicktabs-tab-block quicktabs-tab-block-block-delta-53 active"
												   href="/portal/cn/front-pc?qt-front_pc_ydtj=0#qt-front_pc_ydtj"
												   id="quicktabs-tab-front_pc_ydtj-0">热门图书</a></li>
											<li class="active"><a
													class="quicktabs-tab quicktabs-tab-block quicktabs-tab-block-pkulib-newbooks-delta-pkulib-newbooks active"
													href="/portal/cn/front-pc?qt-front_pc_ydtj=1#qt-front_pc_ydtj"
													id="quicktabs-tab-front_pc_ydtj-1">新书通报</a></li>
										</ul>
										<div class="quicktabs_main quicktabs-style-nostyle"
										     id="quicktabs-container-front_pc_ydtj">
											<div class="quicktabs-tabpage quicktabs-hide"
											     id="quicktabs-tabpage-front_pc_ydtj-0">
												<section class="block block-block clearfix" id="block-block-53">
													
													
													<!-- 自定义区块开始：阅读推荐区块
													@Author wanghx
													第一行 用于浏览器测试，后期删掉即可-->
													<div id="custom-front-recomm-reading">
														<ul>
															<c:if test="${hotBooks!=null&&hotBooks.size()!=0}">
																<c:forEach items="${hotBooks}" var="hot">
																	<li class="booklist col-lg-4 col-md-12 col-sm-12 col-xs-12">
																		<a href="<c:url value="/xxtbcountclick?jmptype=${hot.classId}&isbn=${hot.isbn}&newbookid=${hot.newBookId}"/>"
																		   target="_blank"
																		   title="${hot.newBookTitle}"><img
																				alt=""
																				class="custom-front-recomm-reading-cover"
																				style="width: 158px;height: 235px"
																				src="<c:url value="${hot.coverImg}"/>"></a>
																		<div class="custom-front-recomm-reading-detail">
																			<a href="<c:url value="/xxtbcountclick?jmptype=${hot.classId}&isbn=${hot.isbn}&newbookid=${hot.newBookId}"/>"
																			   target="_blank"
																			   title="${hot.newBookTitle}">${hot.introduction}</a>
																			<ul>
																				<li>
																					<a href="<c:url value="/xxtbcountclick?jmptype=${hot.classId}&isbn=${hot.isbn}&newbookid=${hot.newBookId}"/>"
																					   target="_blank"
																					   title="${hot.newBookTitle}">${hot.bookAuthor}</a>
																				</li>
																				<li>
																					<a href="<c:url value="/xxtbcountclick?jmptype=${hot.classId}&isbn=${hot.isbn}&newbookid=${hot.newBookId}"/>"
																					   target="_blank"
																					   title="${hot.newBookTitle}">馆藏址：保存本阅览室</a>
																				</li>
																				<li>
																					<a href="<c:url value="/xxtbcountclick?jmptype=${hot.classId}&isbn=${hot.isbn}&newbookid=${hot.newBookId}"/>"
																					   target="_blank"
																					   title="${hot.newBookTitle}">${hot.publish}</a>
																				</li>
																				<li>
																					<a href="<c:url value="/xxtbcountclick?jmptype=${hot.classId}&isbn=${hot.isbn}&newbookid=${hot.newBookId}"/>"
																					   target="_blank"
																					   title="${hot.newBookTitle}">${hot.pubDate}</a>
																				</li>
																			</ul>
																		</div>
																		<div class="custom-front-recomm-reading-author">
																			<p class="author-name">
																				<a href="<c:url value="/xxtbcountclick?jmptype=${hot.classId}&isbn=${hot.isbn}&newbookid=${hot.newBookId}"/>"
																				   target="_blank">${hot.bookAuthor}</a>
																			</p>
																			<p class="author-affiliation">
																				<a href="<c:url value="/xxtbcountclick?jmptype=${hot.classId}&isbn=${hot.isbn}&newbookid=${hot.newBookId}"/>"
																				   target="_blank">图书名：${hot.newBookTitle}</a>
																			</p>
																		</div>
																	</li>
																</c:forEach>
															</c:if>
															<c:if test="${hotBooks==null||hotBooks.size()==0}">
																<li class="booklist col-lg-4 col-md-12 col-sm-12 col-xs-12">
																	<a href="http://162.105.138.200/uhtbin/isbn/9787301279601"
																	   target="_blank"
																	   title="两汉魏晋南北朝宰相制度研究"><img alt=""
																	                                           class="custom-front-recomm-reading-cover"
																	                                           src="/static/picture/custom-front-recomm-reading-cover01.png"/></a>
																	<div class="custom-front-recomm-reading-detail">
																		<a href="http://162.105.138.200/uhtbin/isbn/9787301279601"
																		   target="_blank"
																		   title="两汉魏晋南北朝宰相制度研究">宰相及其机构是中国古代国家机器的核心与枢纽。本书以皇权相权的相互关系为线索，在缜密考订史实的基础上，对800年间的帝国中枢政权尽心了上下贯通的深入分析。</a>
																		<ul>
																			<li>
																				<a href="http://162.105.138.200/uhtbin/isbn/9787301279601"
																				   target="_blank"
																				   title="两汉魏晋南北朝宰相制度研究">祝总斌</a>
																			</li>
																			<li>
																				<a href="http://162.105.138.200/uhtbin/isbn/9787301279601"
																				   target="_blank"
																				   title="两汉魏晋南北朝宰相制度研究">馆藏址：保存本阅览室</a>
																			</li>
																			<li>
																				<a href="http://162.105.138.200/uhtbin/isbn/9787301279601"
																				   target="_blank"
																				   title="两汉魏晋南北朝宰相制度研究">北京大学出版社</a>
																			</li>
																			<li>
																				<a href="http://162.105.138.200/uhtbin/isbn/9787301279601"
																				   target="_blank"
																				   title="两汉魏晋南北朝宰相制度研究">2017年</a>
																			</li>
																		</ul>
																	</div>
																	<div class="custom-front-recomm-reading-author">
																		<p class="author-name">
																			<a href="http://162.105.138.200/uhtbin/isbn/9787301279601"
																			   target="_blank">邓小南</a></p>
																		<p class="author-affiliation">
																			<a href="http://162.105.138.200/uhtbin/isbn/9787301279601"
																			   target="_blank">课程：中国古代政治与文化</a>
																		</p>
																	</div>
																</li>
																<li class="booklist col-lg-4 col-md-12 col-sm-12 col-xs-12">
																	<a href="http://162.105.138.200/uhtbin/isbn/0300085370"
																	   target="_blank"
																	   title="The waning of the Renaissance"><img alt=""
																	                                              class="custom-front-recomm-reading-cover"
																	                                              src="/static/picture/custom-front-recomm-reading-cover02.png"/></a>
																	<div class="custom-front-recomm-reading-detail">
																		<a href="http://162.105.138.200/uhtbin/isbn/0300085370"
																		   target="_blank"
																		   title="The waning of the Renaissance">美国历史学会前任主席鲍斯曼的集大成之作，文艺复兴是一场综合性运动，读者在本书能看到历史的复杂性和缓慢性。文艺复兴并不全是光明，中世纪也并不全是黑暗。 </a>
																		<ul>
																			<li>
																				<a href="http://162.105.138.200/uhtbin/isbn/0300085370"
																				   target="_blank"
																				   title="The waning of the Renaissance">William
																					J. Bouwsma</a></li>
																			<li>
																				<a href="http://162.105.138.200/uhtbin/isbn/0300085370"
																				   target="_blank"
																				   title="The waning of the Renaissance">馆藏址：季羡林工作室</a>
																			</li>
																			<li>
																				<a href="http://162.105.138.200/uhtbin/isbn/0300085370"
																				   target="_blank"
																				   title="The waning of the Renaissance">Yale
																					University Press</a></li>
																			<li>
																				<a href="http://162.105.138.200/uhtbin/isbn/0300085370"
																				   target="_blank"
																				   title="The waning of the Renaissance">2000年</a>
																			</li>
																		</ul>
																	</div>
																	<div class="custom-front-recomm-reading-author">
																		<p class="author-name">
																			<a href="http://162.105.138.200/uhtbin/isbn/0300085370"
																			   target="_blank">朱孝远</a></p>
																		<p class="author-affiliation">
																			<a href="http://162.105.138.200/uhtbin/isbn/0300085370"
																			   target="_blank">课程：文艺复兴经典名著选读</a>
																		</p>
																	</div>
																</li>
																<li class="booklist col-lg-4 col-md-12 col-sm-12 col-xs-12">
																	<a href="http://162.105.138.200/uhtbin/isbn/7101013430"
																	   target="_blank" title="帛书老子校注"><img alt=""
																	                                             class="custom-front-recomm-reading-cover"
																	                                             src="/static/picture/custom-front-recomm-reading-cover03.png"/></a>
																	<div class="custom-front-recomm-reading-detail">
																		<a href="http://162.105.138.200/uhtbin/isbn/7101013430"
																		   target="_blank" title="帛书老子校注">先秦诸子，自成一家学术，堪称子学中的经学。其中，道家和儒家形成最早，影响最深。次数集“黄老之术”·“老庄之学”·“仙风道骨”为一身，是道家道教的核心经典。</a>
																		<ul>
																			<li>
																				<a href="http://162.105.138.200/uhtbin/isbn/7101013430"
																				   target="_blank" title="帛书老子校注">高明
																					撰</a></li>
																			<li>
																				<a href="http://162.105.138.200/uhtbin/isbn/7101013430"
																				   target="_blank"
																				   title="帛书老子校注">馆藏位置：北大中心馆</a>
																			</li>
																			<li>
																				<a href="http://162.105.138.200/uhtbin/isbn/7101013430"
																				   target="_blank"
																				   title="帛书老子校注">中华书局</a>
																			</li>
																			<li>
																				<a href="http://162.105.138.200/uhtbin/isbn/7101013430"
																				   target="_blank" title="帛书老子校注">1996年</a>
																			</li>
																		</ul>
																	</div>
																	<div class="custom-front-recomm-reading-author">
																		<p class="author-name">
																			<a href="http://162.105.138.200/uhtbin/isbn/7101013430"
																			   target="_blank">吴国武</a></p>
																		<p class="author-affiliation">
																			<a href="http://162.105.138.200/uhtbin/isbn/7101013430"
																			   target="_blank">课程：国学经典讲论</a></p>
																	</div>
																</li>
															</c:if>
														</ul>
														<div class="custom-front-recomm-reading-rest">
															<a href="<c:url value="/fw/hottertuijian"/>" target="_blank"
															   title=""><img alt=""
															                 src="/static/picture/custom-front-recomm-reading-rest.png"/><span>阅读完整热门推荐书单&gt;</span></a>
														</div>
													</div>
													<!-- 自定义区块结束 -->
												</section>
											</div>
											<div class="quicktabs-tabpage " id="quicktabs-tabpage-front_pc_ydtj-1">
												<section class="block block-pkulib-newbooks clearfix"
												         id="block-pkulib-newbooks-pkulib-newbooks">
													
													
													<div class="newbooks-swiper-container">
														<div class="swiper-wrapper">
															<c:if test="${recommendedBooksVos!=null}">
																<c:forEach items="${recommendedBooksVos}" var="book">
																	<div class="swiper-slide"><a
																			href="<c:url value="/xxtbcountclick?jmptype=${book.classId}&isbn=${book.isbn}&newbookid=${book.newBookId}"/>"
																			target="_blank">
																		<div class="cover"><img alt="book cover image"
																		                        class="img-responsive"
																		                        data-src="${book.coverImg!=null && !"".equals(book.coverImg)?book.coverImg:"/static/img/showFailed.jpg"}"
																		                        height="auto"
																		                        src="<c:url value="/static/img/showFailed.jpg"/>"
																		                        typeof="foaf:Image"
																		                        width="100%"/>
																			<noscript><img alt="book cover image"
																			               class="img-responsive"
																			               height="auto"
																			               src="${book.coverImg}"
																			               typeof="foaf:Image"
																			               width="100%"/>
																			</noscript>
																		</div>
																		<div class="newbook-title">
																				${book.newBookTitle}
																		</div>
																		<div class="callnum">索书号：${book.isbn}</div>
																		<div class="book-author">
																				${book.bookAuthor}
																		</div>
																		<div class="publish-year">${book.publishYear}</div>
																	</a></div>
																</c:forEach>
															</c:if>
															<c:if test="${recommendedBooksVos==null}">
																<div class="swiper-slide"><a
																		href="http://newbooks.lib.pku.edu.cn/xxtbcountclick.jsp?jmptype=4&isbn=9787115600349&newbookid=423101"
																		target="_blank">
																	<div class="cover"><img alt="book cover image"
																	                        class="img-responsive"
																	                        data-src="/static/picture/5934385-fm.jpg!cckb_b"
																	                        height="auto"
																	                        src="https://www.lib.pku.edu.cn/portal/sites/all/modules/lazyloader/image_placeholder.gif"
																	                        typeof="foaf:Image"
																	                        width="100%"/>
																		<noscript><img alt="book cover image"
																		               class="img-responsive"
																		               height="auto"
																		               src="/static/picture/5934385-fm.jpg!cckb_b"
																		               typeof="foaf:Image"
																		               width="100%"/>
																		</noscript>
																	</div>
																	<div class="newbook-title">深入浅出密码学 / (美)
																		戴维·王著
																		= Real-wor…
																	</div>
																	<div class="callnum">索书号：TN918.1/135</div>
																	<div class="book-author">(美) 戴维·王著 ; David Wong
																		;
																		韩露露, 谢文丽, 杨雅希译
																	</div>
																	<div class="publish-year">北京 人民邮电出版社 2023
																	</div>
																</a></div>
																<div class="swiper-slide"><a
																		href="http://newbooks.lib.pku.edu.cn/xxtbcountclick.jsp?jmptype=4&isbn=9787566021250&newbookid=429395"
																		target="_blank">
																	<div class="cover"><img alt="book cover image"
																	                        class="img-responsive"
																	                        data-src="/static/picture/5960726-fm.jpg!cckb_b"
																	                        height="auto"
																	                        src="https://www.lib.pku.edu.cn/portal/sites/all/modules/lazyloader/image_placeholder.gif"
																	                        typeof="foaf:Image"
																	                        width="100%"/>
																		<noscript><img alt="book cover image"
																		               class="img-responsive"
																		               height="auto"
																		               src="/static/picture/5960726-fm.jpg!cckb_b"
																		               typeof="foaf:Image"
																		               width="100%"/>
																		</noscript>
																	</div>
																	<div class="newbook-title">普赖斯的知觉理论批判 :
																		经验论的知觉图式探源 / 邓明艳著
																	</div>
																	<div class="callnum">索书号：B561.59/43</div>
																	<div class="book-author">邓明艳著</div>
																	<div class="publish-year">北京 中央民族大学出版社
																		2023
																	</div>
																</a></div>
																<div class="swiper-slide"><a
																		href="http://newbooks.lib.pku.edu.cn/xxtbcountclick.jsp?jmptype=4&isbn=9787302611165&newbookid=411346"
																		target="_blank">
																	<div class="cover"><img alt="book cover image"
																	                        class="img-responsive"
																	                        data-src="/static/picture/5909977-fm.jpg!cckb_b"
																	                        height="auto"
																	                        src="https://www.lib.pku.edu.cn/portal/sites/all/modules/lazyloader/image_placeholder.gif"
																	                        typeof="foaf:Image"
																	                        width="100%"/>
																		<noscript><img alt="book cover image"
																		               class="img-responsive"
																		               height="auto"
																		               src="/static/picture/5909977-fm.jpg!cckb_b"
																		               typeof="foaf:Image"
																		               width="100%"/>
																		</noscript>
																	</div>
																	<div class="newbook-title">数字治理 / 主编张鸿</div>
																	<div class="callnum">索书号：D035-0/73</div>
																	<div class="book-author">主编张鸿</div>
																	<div class="publish-year">北京 清华大学出版社 2023
																	</div>
																</a></div>
																<div class="swiper-slide"><a
																		href="http://newbooks.lib.pku.edu.cn/xxtbcountclick.jsp?jmptype=4&isbn=9787522813035&newbookid=428901"
																		target="_blank">
																	<div class="cover"><img alt="book cover image"
																	                        class="img-responsive"
																	                        data-src="/static/picture/5996367-fm.jpg!cckb_b"
																	                        height="auto"
																	                        src="https://www.lib.pku.edu.cn/portal/sites/all/modules/lazyloader/image_placeholder.gif"
																	                        typeof="foaf:Image"
																	                        width="100%"/>
																		<noscript><img alt="book cover image"
																		               class="img-responsive"
																		               height="auto"
																		               src="/static/picture/5996367-fm.jpg!cckb_b"
																		               typeof="foaf:Image"
																		               width="100%"/>
																		</noscript>
																	</div>
																	<div class="newbook-title">近代中国铁路制度与功能的演进
																		: 基于中央与地方的关系 / …
																	</div>
																	<div class="callnum">索书号：F532.9/18a</div>
																	<div class="book-author">马陵合著</div>
																	<div class="publish-year">北京 社会科学文献出版社
																		2023
																	</div>
																</a></div>
																<div class="swiper-slide"><a
																		href="http://newbooks.lib.pku.edu.cn/xxtbcountclick.jsp?jmptype=4&isbn=&newbookid=429566"
																		target="_blank">
																	<div class="cover"><img alt="book cover image"
																	                        class="img-responsive"
																	                        data-src="/static/picture/xstjkb.jpg"
																	                        height="auto"
																	                        src="https://www.lib.pku.edu.cn/portal/sites/all/modules/lazyloader/image_placeholder.gif"
																	                        typeof="foaf:Image"
																	                        width="100%"/>
																		<noscript><img alt="book cover image"
																		               class="img-responsive"
																		               height="auto"
																		               src="/static/picture/xstjkb.jpg"
																		               typeof="foaf:Image"
																		               width="100%"/>
																		</noscript>
																	</div>
																	<div class="newbook-title">向里面飞 / 沙克著</div>
																	<div class="callnum">索书号：I227.1/285a</div>
																	<div class="book-author">沙克著</div>
																	<div class="publish-year">南京 江苏凤凰文艺出版社
																		2023
																	</div>
																</a></div>
																<div class="swiper-slide"><a
																		href="http://newbooks.lib.pku.edu.cn/xxtbcountclick.jsp?jmptype=4&isbn=9787122413321&newbookid=416730"
																		target="_blank">
																	<div class="cover"><img alt="book cover image"
																	                        class="img-responsive"
																	                        data-src="/static/picture/5915952-fm.jpg!cckb_b"
																	                        height="auto"
																	                        src="https://www.lib.pku.edu.cn/portal/sites/all/modules/lazyloader/image_placeholder.gif"
																	                        typeof="foaf:Image"
																	                        width="100%"/>
																		<noscript><img alt="book cover image"
																		               class="img-responsive"
																		               height="auto"
																		               src="/static/picture/5915952-fm.jpg!cckb_b"
																		               typeof="foaf:Image"
																		               width="100%"/>
																		</noscript>
																	</div>
																	<div class="newbook-title">现代液压气动系统 :
																		结构原理·使用维护·故障诊断 / 张利…
																	</div>
																	<div class="callnum">索书号：TH137/29</div>
																	<div class="book-author">张利平编著</div>
																	<div class="publish-year">北京 化学工业出版社 2023
																	</div>
																</a></div>
																<div class="swiper-slide"><a
																		href="http://newbooks.lib.pku.edu.cn/xxtbcountclick.jsp?jmptype=4&isbn=9787203125303&newbookid=427581"
																		target="_blank">
																	<div class="cover"><img alt="book cover image"
																	                        class="img-responsive"
																	                        data-src="/static/picture/xstjkb.jpg"
																	                        height="auto"
																	                        src="https://www.lib.pku.edu.cn/portal/sites/all/modules/lazyloader/image_placeholder.gif"
																	                        typeof="foaf:Image"
																	                        width="100%"/>
																		<noscript><img alt="book cover image"
																		               class="img-responsive"
																		               height="auto"
																		               src="/static/picture/xstjkb.jpg"
																		               typeof="foaf:Image"
																		               width="100%"/>
																		</noscript>
																	</div>
																	<div class="newbook-title">狷庐散笔 / 邓文宽著</div>
																	<div class="callnum">索书号：I267/6227</div>
																	<div class="book-author">邓文宽著</div>
																	<div class="publish-year">太原 山西人民出版社 2023
																	</div>
																</a></div>
																<div class="swiper-slide"><a
																		href="http://newbooks.lib.pku.edu.cn/xxtbcountclick.jsp?jmptype=4&isbn=9787513177337&newbookid=428349"
																		target="_blank">
																	<div class="cover"><img alt="book cover image"
																	                        class="img-responsive"
																	                        data-src="/static/picture/5967212-fm.jpg!cckb_b"
																	                        height="auto"
																	                        src="https://www.lib.pku.edu.cn/portal/sites/all/modules/lazyloader/image_placeholder.gif"
																	                        typeof="foaf:Image"
																	                        width="100%"/>
																		<noscript><img alt="book cover image"
																		               class="img-responsive"
																		               height="auto"
																		               src="/static/picture/5967212-fm.jpg!cckb_b"
																		               typeof="foaf:Image"
																		               width="100%"/>
																		</noscript>
																	</div>
																	<div class="newbook-title">教育要配合实践 : 车向忱教育文选
																		/ 车向忱著 ; 车红选…
																	</div>
																	<div class="callnum">索书号：G4-53/151</div>
																	<div class="book-author">车向忱著 ; 车红选编</div>
																	<div class="publish-year">北京 开明出版社 2023</div>
																</a></div>
																<div class="swiper-slide"><a
																		href="http://newbooks.lib.pku.edu.cn/xxtbcountclick.jsp?jmptype=4&isbn=9787559467829&newbookid=414582"
																		target="_blank">
																	<div class="cover"><img alt="book cover image"
																	                        class="img-responsive"
																	                        data-src="/static/picture/5919357-fm.jpg!cckb_b"
																	                        height="auto"
																	                        src="https://www.lib.pku.edu.cn/portal/sites/all/modules/lazyloader/image_placeholder.gif"
																	                        typeof="foaf:Image"
																	                        width="100%"/>
																		<noscript><img alt="book cover image"
																		               class="img-responsive"
																		               height="auto"
																		               src="/static/picture/5919357-fm.jpg!cckb_b"
																		               typeof="foaf:Image"
																		               width="100%"/>
																		</noscript>
																	</div>
																	<div class="newbook-title">河图 / 常芳著</div>
																	<div class="callnum">索书号：I247.57/1408a</div>
																	<div class="book-author">常芳著</div>
																	<div class="publish-year">南京 江苏凤凰文艺出版社
																		2023
																	</div>
																</a></div>
																<div class="swiper-slide"><a
																		href="http://newbooks.lib.pku.edu.cn/xxtbcountclick.jsp?jmptype=4&isbn=9787100216722&newbookid=415283"
																		target="_blank">
																	<div class="cover"><img alt="book cover image"
																	                        class="img-responsive"
																	                        data-src="/static/picture/xstjkb.jpg"
																	                        height="auto"
																	                        src="https://www.lib.pku.edu.cn/portal/sites/all/modules/lazyloader/image_placeholder.gif"
																	                        typeof="foaf:Image"
																	                        width="100%"/>
																		<noscript><img alt="book cover image"
																		               class="img-responsive"
																		               height="auto"
																		               src="/static/picture/xstjkb.jpg"
																		               typeof="foaf:Image"
																		               width="100%"/>
																		</noscript>
																	</div>
																	<div class="newbook-title">明清以來閩方言文獻集成.
																		第二輯.
																		卷七 / 馬重奇主編
																	</div>
																	<div class="callnum">索书号：H177/8b:2:7</div>
																	<div class="book-author">馬重奇主編</div>
																	<div class="publish-year">北京 商务印书馆 2023</div>
																</a></div>
															</c:if>
														</div>
														<!-- Add Pagination -->
														<c:if test="${recommendedBooksVos.size()>=7}">
															<div class="swiper-button-next"></div>
															<div class="swiper-button-prev"></div>
														</c:if>
													
													</div>
													
													<div class="view-more-newbooks">
														<a href="<c:url value="/fw/morenewbook"/>" target="_blank">浏览全部图书<span
																class="glyphicon glyphicon-circle-arrow-right"><span></a>
													</div>
													
													<script>
                                                        var newbooksSwiper = new Swiper('.newbooks-swiper-container', {
                                                            slidesPerView: 6,
                                                            spaceBetween: 52,
                                                            // init: false,
                                                            navigation: {
                                                                nextEl: '.swiper-button-next',
                                                                prevEl: '.swiper-button-prev',
                                                            },
                                                            breakpoints: {
                                                                1200: {
                                                                    slidesPerView: 5,
                                                                    spaceBetween: 40,
                                                                },
                                                                992: {
                                                                    slidesPerView: 4,
                                                                    spaceBetween: 40,
                                                                },
                                                                768: {
                                                                    slidesPerView: 3,
                                                                    spaceBetween: 30,
                                                                },
                                                                640: {
                                                                    slidesPerView: 2,
                                                                    spaceBetween: 20,
                                                                },
                                                                320: {
                                                                    slidesPerView: 1,
                                                                    spaceBetween: 10,
                                                                }
                                                            },
                                                            on: {
                                                                slideChange: function () {
                                                                    var images = jQuery(".newbooks-swiper-container img[data-src]");
                                                                    images.map(function (i, v) {
                                                                        var that = jQuery(v)
                                                                        that.attr('src', that.attr('data-src')).removeAttr('data-src');
                                                                        that.load(function () {
                                                                            that.siblings('img.lazyloader-icon').remove();
                                                                        });
                                                                    })
                                                                }
                                                            }
                                                        });
													</script>
												</section>
											</div>
										</div>
									</div>
								</div>
							
							
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="panel-block" id="front-bottom">
				<div class="container">
					<div class="row" id="front-bottom">
						<div class="col-lg-12">
						</div>
					</div>
				</div>
			</div>
			<script src="/static/js/scrollmagic.js" type="text/javascript">
			</script>
			<script src="/static/js/tweenmax.min.js" type="text/javascript">
			</script>
			<script src="/static/js/scrolltoplugin.min.js" type="text/javascript">
			</script>
			<script type="text/javascript">
                // Init controller
                var controller = new ScrollMagic.Controller({
                    globalSceneOptions: {
                        //duration: 600, //jQuery('div.panel-block')[1].height(),
                        triggerHook: .025,
                        reverse: true
                    }
                });


                /*
                object to hold href values of links inside our nav with
                the class '.anchor-nav'

                scene_object = {
                '[scene-name]' : {
                '[target-scene-id]' : '[anchor-href-value]'
                }
                }
                */
                var scenes = {
                    'top': {
                        'navbar': 'anchor1'
                    },
                    'page2': {
                        'front-news': 'anchor2'
                    },
                    'page3': {
                        'front-service': 'anchor3'
                    },
                    'page4': {
                        'front-resource': 'anchor4'
                    },
                    'page5': {
                        'front-special': 'anchor5'
                    },
                    'page6': {
                        'front-scholarly': 'anchor6'
                    },
                    'page7': {
                        'front-events': 'anchor7'
                    },
                    'page8': {
                        'front-branches': 'anchor8'
                    },
                    'page9': {
                        'front-recommendation': 'anchor9'
                    }
                }

                for (var key in scenes) {
                    // skip loop if the property is from prototype
                    if (!scenes.hasOwnProperty(key)) continue;

                    var obj = scenes[key];

                    for (var prop in obj) {
                        // skip loop if the property is from prototype
                        if (!obj.hasOwnProperty(prop)) continue;

                        new ScrollMagic.Scene({
                            triggerElement: '#' + prop,
                            duration: jQuery("#" + prop).height()
                        })
                            .setClassToggle('#' + obj[prop], 'active')
                            .addTo(controller);
                    }
                }


                // Change behaviour of controller
                // to animate scroll instead of jump
                controller.scrollTo(function (target) {

                    TweenMax.to(window, 0.5, {
                        scrollTo: {
                            y: target,
                            autoKill: true // Allow scroll position to change outside itself
                        },
                        ease: Cubic.easeInOut
                    });

                });


                // Bind scroll to anchor links using Vanilla JavaScript
                var anchor_nav = document.querySelector('.anchor-nav');

                anchor_nav.addEventListener('click', function (e) {
                    var target = e.target,
                        id = target.getAttribute('href');

                    if (id !== null) {
                        if (id.length > 0) {
                            e.preventDefault();
                            controller.scrollTo(id);
                            /*
                            if (window.history && window.history.pushState) {
                            history.pushState("", document.title, id);
                            }*/
                        }
                    }
                });


                // 首页右侧翻页器在第一屏不显示 xuqb 2018-04-03
                function showHideAnchorNav() {
                    if (jQuery("nav.anchor-nav").offset().top > jQuery("#front-service").offset().top) {
                        jQuery("nav.anchor-nav").css("visibility", "visible");
                        jQuery("#custom-global-bottom-edge-label-ask").css("visibility", "visible");
                        jQuery("#custom-global-bottom-edge-navbar").css("visibility", "visible");
                    } else {
                        jQuery("nav.anchor-nav").css("visibility", "hidden");
                        jQuery("#custom-global-bottom-edge-label-ask").css("visibility", "hidden");
                        jQuery("#custom-global-bottom-edge-navbar").css("visibility", "hidden");
                    }
                }

                showHideAnchorNav();
                jQuery(window).on("scroll", showHideAnchorNav);


                // 首页右侧翻页器文字提示的显示/隐藏
                function showHideAnchorNavItem() {
                    var anchorTip = jQuery(this).children(".anchor-tip");
                    if (anchorTip.css("display") == "none")
                        anchorTip.fadeIn("normal"); // 淡入
                    else
                        anchorTip.fadeOut("normal"); // 淡出
                }

                jQuery("nav.anchor-nav a").on("mouseenter", showHideAnchorNavItem); // 不用 mouseover
                jQuery("nav.anchor-nav a").on("mouseleave", showHideAnchorNavItem); // 不用 mouseout

                /*
                * Bind scroll to anchor links using jQuery

                $(document).on("click", "a[href^=#]", function(e) {
                var id = $(this).attr("href");

                if($(id).length > 0) {
                e.preventDefault();

                // trigger scroll
                controller.scrollTo(id);

                // If supported by the browser we can also update the URL
                if (window.history && window.history.pushState) {
                history.pushState("", document.title, id);
                }
                }

                });

                */
			</script>
		
		</section>
	</div>
</div>
<div class="region region-page-bottom">
	<noscript>
		<style media="all" type="text/css">
            img[data-src] {
                display: none !important;
            }
		</style>
	</noscript>
</div>
<script> (function ($) {
    Drupal.behaviors.lazyloader = {
        attach: function (context, settings) {
            $("img[data-src]").lazyloader({
                distance: 0,
                icon: "/static/images/loader-1.gif"
            });
        }
    };
}(jQuery));</script>
<script src="/static/js/bootstrap.js"></script>
<div style="display:none;">
	<script src=" /static/js/h.js" type="text/javascript"></script>
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
							<a href="/portal/cn/zxt/dianhua" style="cursor: help;">咨询台</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 自定义区块结束 -->
	</section>
</div>
</body>
</html>
