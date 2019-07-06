<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/echarts.min.js"></script>

<title>饼图例子</title>
</head>
<body>

	<div id="mainChart" style="width: 600px; height: 400px;"></div>

	<script type="text/javascript">
			//使用ajax加载数据 
			$.ajax({
				method : 'post',
				url : 'pie',
				dataType : 'json',
				success : function(data) {//data格式:[{name:nameValue,value:valueVal},...] 
					initChat(data);
				}
			});
			function initChat(data) {
				var myChart = echarts.init(document.getElementById('mainChart'));
				option = {
						backgroundColor: '#cccccc',
			        	color:["#D53A35","#296294"],
						title : {
							text : '用户性别聚合分析',
							x : 'center'
					},
					tooltip : {
						trigger : 'item',
						formatter : "{a} <br/>{b} : {c} ({d}%)"
					},
					legend : {
						orient : 'vertical',
						left : 'left',
						data : formatData(data).xAxData
					},
					series : [ {
						name : '男女数量',
						type : 'pie',
						radius : '55%',
						center : [ '50%', '60%' ],
						color:['#297ca3','#c35b3b'],
						data : formatData(data).serData,
						itemStyle : {
							emphasis : {
								shadowBlur : 10,
								shadowOffsetX : 0,
								shadowColor : 'rgba(0, 0, 0, 0.5)'
							}
						}
					} ]
				};	
				myChart.setOption(option, true);
			};
			function formatData(data) {
				var xAxData = [];
				var serData = [];

				for (var i = 0; i < data.length; i++) {
					xAxData.push(data[i].name || "");
					serData.push({
						name : data[i].name,
						value : data[i].value || 0
					});
				}

				return {
					xAxData : xAxData,
					serData : serData
				};
			};
		</script>
</body>
</html>
