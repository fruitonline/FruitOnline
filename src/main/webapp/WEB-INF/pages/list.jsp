<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户信息一览</title>
</head>
<body>
<table>
<c:if test="${!empty pageInfo.list}">
<tr>
<td>ID</td>
<td>航空公司</td>
<td>航线数量</td>
</tr>
<c:forEach items="${pageInfo.list}" var="user">
<tr>
<td>${user.id }</td>
<td>${user.airline }</td>
<td>${user.num }</td>
</tr>
</c:forEach>
</c:if>
</table>
<div>
<c:if test="${pageInfo.hasPreviousPage}">
<a href="selectAll?pn=${pageInfo.prePage}">上一页</a>
</c:if>
<c:forEach items="${pageInfo.navigatepageNums}" var ="pageNum">
<a href="selectAll?pn=${pageNum}">${pageNum}</a>
</c:forEach>
<c:if test="${pageInfo.hasNextPage}">
<a href="selectAll?pn=${pageInfo.nextPage}">下一页</a>
</c:if>
</div>

</body>
</html>