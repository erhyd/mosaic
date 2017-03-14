<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>
<title>list.jsp</title>
</head>
<body>

<table class="animated bounceInLeft table table-striped">
<tr>
	<th>DeptNo</th>
	<th>Dname</th>
	<th>Loc</th>
</tr>

<c:forEach var="dept" items="${list}">
<tr>
	<td>${dept.deptno}</td> 
	<td>${dept.dname}</td> 
	<td>${dept.loc}</td>
</tr>
</c:forEach>
</table>

</body>
</html>