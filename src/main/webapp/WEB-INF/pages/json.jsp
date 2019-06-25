<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>json学习</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.3.js"></script>
<script type="text/javascript">
	function getList(){
		$.ajax({
			type : "post",
			url : "json",
			data : {},
			success : function(data) {
			//[{"age":0,"id":0,"name":"张三","password":"123"},{"age":0,"id":0,"name":"李四","password":"456"},{"age":0,"id":0,"name":"王五","password":"789"}]
				for(var i=0;i<data.length;i++){
					var tr = document.createElement("tr");
					var td1 = document.createElement("td");
					td1.innerText = data[i].name;
					tr.appendChild(td1);
					var td2 = document.createElement("td");
					td2.innerText = data[i].password;
					tr.appendChild(td2);
					document.getElementById("tbl").appendChild(tr);
				}
			}
		});
	}
</script>
</head>
<body>
	<form>
		<input type="button" value="取得List" onclick="getList()"><br>
		<table id="tbl">
		<tr>
		<td>用户名</td>
		<td>密码</td>
		</tr>
		</table>
	</form>
</body>
</html>