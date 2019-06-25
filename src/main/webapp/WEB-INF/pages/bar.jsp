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
	<title>柱状图例子</title>
</head>
<body>
        <div id="mainChart" style="width: 600px;height:400px;">
         	
         </div>
<script type="text/javascript">
	//使用ajax加载数据 
	$.ajax({
		method : 'post',
		url : 'bar',
		dataType : 'json',
		success : function(data) {//data格式:[{name:nameValue,value:valueVal},...] 
			initChat(data);
		}
	});
	function initChat(data) {
		var dom = document.getElementById("mainChart");
		var myChart = echarts.init(dom);
		
		// 初始 option
		option = {
		    title: {
		        text: '用户消费预测',
	        	textStyle: {
		            color: '#000'
		        }
		    },
		    backgroundColor: '#ccc',
		    textStyle: {
	            color: '#000',
	        },
		    tooltip: {},
		    legend: {
		        data:['消费额'],
		        textStyle: {
		            color: '#000'
		        }
		    },
		    xAxis: {
		        data: formatData(data).xAxData,
			    axisLabel:{  
	                interval:0,//横轴信息全部显示  
	                rotate:-30,//-30度角倾斜显示  
	           } 
		    
		    },
		    yAxis: {},
		    series: [{
		        name: '消费额',
		        type: 'bar',
		        data: formatData(data).serData
		    }]
		};
		
		if (option && typeof option === "object") {
		    myChart.setOption(option, true);
		}
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