<!--
此示例下载自 https://echarts.apache.org/examples/zh/editor.html?c=pictorialBar-spirit&lang=js
-->
<%@ page import="com.bai.utils.constants.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN" style="height: 100%">
<head>
	<meta charset="utf-8">
	<title>统计分析</title>
	<link href="<c:url value="<%=Constants.StaticIcon.icon_path%>"/>" rel="shortcut icon"
	      type="image/vnd.microsoft.icon"/>
	<link rel="stylesheet" href="/static/css/bootstrap.min.css">
	<script src="/static/js/jquery-3.2.1.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>
	<script src="/static/js/js.cookie.js"></script>
	<script type="text/javascript" src="https://fastly.jsdelivr.net/npm/echarts@5.4.3/dist/echarts.min.js"></script>
	<style>
        #chart-container, #chart-container2, #chart-container {
            position: relative;
            height: 100vh;
            overflow: hidden;
        }

        .cby {
            position: relative;
            top: 40px;
        }

        .cby div {
            margin: 20px 0 0 0;
        }
	</style>
</head>
<%--/static/img/1583851799.jpg--%>
<body background=""
      style=" background-repeat:no-repeat ;background-size:100% 100%;background-attachment: fixed;">
<c:set value="5" var="current" scope="request"/>
<jsp:include page="common_header_admin.jsp"/>

<div class="cby">
	<div id="chart-container2" style="height: 600px;"></div>
	<div style="display: flex;">
		<div id="chart-container" style="width: 1400px"></div>
		<div id="chart-container3" style="width: 1000px;height: 450px;"></div>
	</div>
</div>

<script type="text/javascript">
    var charts = []

    function first1() {
        var dom = document.getElementById('chart-container');
        var myChart = echarts.init(dom, null, {
            renderer: 'canvas',
            useDirtyRect: false
        });
        var app = {};

        var option;

// prettier-ignore
        const data =
        ${pc}
        const dateList = data.map(function (item) {
            return item[0];
        });
        const valueList = data.map(function (item) {
            return item[1];
        });
        option = {
            // Make gradient line here
            visualMap: [
                {
                    show: false,
                    type: 'continuous',
                    seriesIndex: 0,
                    min: 0,
                    max: 400
                }
            ],
            title: [
                {
                    left: 'center',
                    text: '网站访问量'
                },
            ],
            tooltip: {
                trigger: 'axis'
            },
            xAxis: [
                {
                    data: dateList,
                }
            ],
            yAxis: [
                {},
            ],
            grid: [
                {
                    bottom: '60%'
                },
                {
                    top: '60%'
                }
            ],
            series: [
                {
                    type: 'line',
                    showSymbol: false,
                    data: valueList
                }
            ]
        };


        if (option && typeof option === 'object') {
            myChart.setOption(option);
            charts.push(myChart);
        }

    }

    function first2() {

        var dom = document.getElementById('chart-container2');
        var myChart = echarts.init(dom, null, {
            renderer: 'canvas',
            useDirtyRect: false
        });
        var app = {};

        var option;

        option = {
            legend: {
                top: 'top'
            },
            toolbox: {
                show: true,
                feature: {
                    mark: {show: true},
                    dataView: {show: true, readOnly: false},
                    restore: {show: true},
                    saveAsImage: {show: true}
                }
            },
            series: [
                {
                    name: 'Nightingale Chart',
                    type: 'pie',
                    radius: [50, 250],
                    center: ['50%', '50%'],
                    roseType: 'area',
                    itemStyle: {
                        borderRadius: 8
                    },
                    data: ${nc}
                }
            ]
        };

        if (option && typeof option === 'object') {
            myChart.setOption(option);
            charts.push(myChart);
        }
    }

    function first3() {
        var dom = document.getElementById('chart-container3');
        var myChart = echarts.init(dom, null, {
            renderer: 'canvas',
            useDirtyRect: false
        });
        var app = {};

        var option;

        const spirit = 'image://data:image/png;base64,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';
        const spirit_man = 'image://data:image/png;base64,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';
        var maxData = 2000;
        option = {
            tooltip: {},
            title: {
                show: true,
                text: "性别分布",
                left: '50%'
            },
            xAxis: {
                max: maxData,
                splitLine: {show: false},
                offset: 10,
                axisLine: {
                    lineStyle: {
                        color: '#999'
                    }
                },
                axisLabel: {
                    margin: 10
                }
            },
            yAxis: {
                data: [''],
                inverse: true,
                axisTick: {show: false},
                axisLine: {show: false},
                axisLabel: {

                    color: '#999',
                    fontSize: 20
                }
            },
            grid: {
                top: 'center',
                height: 200,
                left: 70,
                right: 100
            },
            series: [
                {
                    // current data
                    type: 'pictorialBar',
                    symbol: spirit,
                    symbolRepeat: 'false',
                    symbolMargin: '5%',
                    symbolClip: true,
                    symbolSize: 50,
                    symbolBoundingData: maxData,
                    data: [${wowen}],

                    markLine: {
                        symbol: 'none',
                        label: {
                            formatter: 'max: {c}',
                            position: 'start'
                        },
                        lineStyle: {
                            color: 'green',
                            type: 'dotted',
                            opacity: 0.5,
                            width: 2
                        },
                        data: [
                            {
                                type: 'max',
                            }
                        ]
                    },
                    z: 10
                },
                {
                    // full data
                    type: 'pictorialBar',
                    itemStyle: {
                        opacity: 0.5
                    },
                    label: {
                        show: true,
                        formatter: function (params) {
                            return ((params.value / maxData) * 100).toFixed(1) + ' %';
                        },
                        position: 'right',
                        offset: [10, 0],
                        color: 'green',
                        fontSize: 18
                    },
                    animationDuration: 0,
                    symbolRepeat: 'false',
                    symbolMargin: '5%',
                    symbolOffset: ['100%', 0],
                    symbol: spirit_man,
                    symbolSize: 50,
                    symbolBoundingData: maxData,
                    data: [${man}],
                    z: 5
                }
            ]
        }
        if (option && typeof option === 'object') {
            myChart.setOption(option);
            charts.push(myChart);
        }
    }

    window.onload = function () {
        first1()
        first2()
        first3()
    }
    window.onresize = function () {
        for (var i = 0; i < charts.length; i++) {
            charts[i].resize();
        }
    }
</script>
</body>
</html>