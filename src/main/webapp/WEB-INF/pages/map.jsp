<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="js/jquery-1.11.3.js"></script>
<script type="text/javascript"
	src="js/echarts.min.js"></script>
<script type="text/javascript"
	src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
<title>地图例子</title>
</head>
<body>
	<div id="map" style="width: 600px;height:400px;"></div>

	<script type="text/javascript">
		//使用ajax加载数据 
		$.ajax({
			method : 'post',
			url : 'map',
			dataType : 'json',
			success : function(data) {//data格式:[{name:nameValue,value:valueVal},...] 
				initChat(data);
			}
		});
		function initChat(data) {
			var myChart = echarts.init(document.getElementById('map'));
			var option = {
				title : {
					text : '区域消费聚合分析',
					x : 'center',
					textStyle : {
						color : '#000'
					}
				},
				backgroundColor : '#ccc',
				tooltip : {
					formatter : "{a} <br/>{b} : {c}"
				},
				visualMap : {
					min : 0,
					max : 20000,
					text : [ 'High', 'Low' ],
					realtime : false,
					calculable : true,
					inRange : {
						color : [ '#50a3ba', '#eac736', '#d94e5d' ]
					},
					textStyle : {
						color : '#000'
					}
				},
				geo : {
					map : 'china',
					label : {
						emphasis : {
							show : true
						}
					}
				},
				series : [ {
					type : 'map',
					mapType : 'china',
					coordinateSystem : 'geo',

					itemStyle : {
						normal : {
							label : {
								show : true
							}
						},
						emphasis : {
							label : {
								show : true
							}
						}
					},
					data : data,
					symbolSize : 12,
					label : {
						normal : {
							show : true
						},
						emphasis : {
							show : true
						}
					},
					itemStyle : {
						emphasis : {
							borderColor : '#fff',
							borderWidth : 1
						}
					}
				} ]
			};

			myChart.setOption(option);
			myChart.on('mouseover', function(params) {
				var dataIndex = params.dataIndex;
				console.log(params);
			});
		};
	</script>
</body>
</html>