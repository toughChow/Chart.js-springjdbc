<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<div>
	<canvas id="canvas"></canvas>
</div>

<script type="text/javascript">
	// 横轴数据
	var getNames = function() {
		var name = ${arr};
		return name;
	};

	// 纵轴数据
	var getValues = function() {
		var value = ${values};
		return value;
	};

	// 曲线图数据
	var lineChartData = {
		labels : getNames(),
		datasets : [ {
			label : 'Dataset 1',
			backgroundColor : "rgba(220,220,220,0.5)",
			data : getValues()
		} ]

	};

	$(function() {
		// 生成曲线图
		var ctx = document.getElementById("canvas").getContext("2d");
		window.myBar = new Chart(ctx, {
			type : 'line',
			data : lineChartData,
			options : {
				responsive : true,
				legend : {
					position : 'top',
				},
				title : {
					display : true,
					text : 'Our 3 Favorite Datasets'
				}
			}
		});
	});
</script>


