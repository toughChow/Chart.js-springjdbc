<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>轻实训-Chart.js应用案例</title>

<link rel="stylesheet" href="${ctx}/styles/css/layout.css" type="text/css" media="screen" />
<script src="${ctx}/plugins/jquery.min.js" type="text/javascript"></script>
<script src="${ctx}/plugins/chart/Chart.min.js" type="text/javascript"></script>


<script type="text/javascript">
	var ctx = '${ctx }';

	$(function() {
		$('#main').height($(window).height() - 55);
		$('#sidebar').height($(window).height() - 55);
	});

	// 加载跳转页面
	function loadDetailPage(url) {
		$('#main').load(ctx + url, function(e) {
			$(".alert_error").hide();
			$(".tab_content").hide();
			$(".tab_content:first").show();
			// 表格与图表切换
			$("ul.result-tabs li").click(function() {
				$("ul.result-tabs li").removeClass("active");
				$(this).addClass("active");
				$(".tab_content").hide();
				var activeTab = $(this).find("a").attr("href");
				$(activeTab).fadeIn();
				return false;
			}).first().click();
		});
	}
</script>
</head>
<body>
	<header id="header">
		<hgroup>
			<h1 class="site_title">
				轻实训-Chart.js图表应用案例 （<small><a href="http://chartjs.cn" target="_blank">Chart.js</a> 是一个基于 HTML5 实现的轻量级
					JavaScript 图表库）</small>
			</h1>
		</hgroup>
	</header>
	<div id="content">
		<!-- 左侧菜单区域 -->
		<aside id="sidebar" class="column">
			<h3>曲线图</h3>
			<ul class="toggle">
				<li class=""><a href="javascript:;" onclick="loadDetailPage('/chart/line')">曲线图</a></li>
			</ul>
			<h3>柱状图</h3>
			<ul class="toggle">
				<li class=""><a href="javascript:;" onclick="loadDetailPage('/chart/bar')">柱状图</a></li>
			</ul>
			<h3>雷达图或蛛网图</h3>
			<ul class="toggle">
				<li class=""><a href="javascript:;" onclick="loadDetailPage('/chart/radar')">雷达图或蛛网图</a></li>
			</ul>
			<h3>极地区域图</h3>
			<ul class="toggle">
				<li class=""><a href="javascript:;" onclick="loadDetailPage('/chart/polararea')">极地区域图</a></li>
			</ul>
			<h3>饼图</h3>
			<ul class="toggle">
				<li class=""><a href="javascript:;" onclick="loadDetailPage('/chart/pie')">饼图</a></li>
			</ul>
			<h3>环形图</h3>
			<ul class="toggle">
				<li class=""><a href="javascript:;" onclick="loadDetailPage('/chart/doughnut')">环形图</a></li>
			</ul>
		</aside>
		<!-- 右侧区域 -->
		<section id="main" class="column"></section>
	</div>
</body>
</html>
