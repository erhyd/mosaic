<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
<!-- 1. animate -->
<link rel="stylesheet" href="/webjars/animate.css/3.5.2/animate.min.css">
<!-- 2. bootstrap -->
<link rel="stylesheet" href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css">
<!-- 3. jquery -->
<script type="text/javascript" src="/webjars/jquery/1.11.1/jquery.min.js"></script>
<!-- 4. bootstrap.js -->
<script type="text/javascript" src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>
<h1>Emp List</h1>
<table class="animated bounceInLeft table table-striped">
<tr>
	<th>Empno</th>
	<th>Ename</th>
	<th>Job</th>
	<th>Mgr</th>
	<th>Hiredate</th>
	<th>Sal</th>
	<th>Deptno</th>
</tr>
<c:forEach var="emp" items="${emps}">
<tr>
	<td>${emp.empno}</td>
	<td>${emp.ename}</td>
	<td>${emp.job}</td>
	<td>${emp.mgr}</td>
	<td>${emp.hiredate}</td>
	<td>${emp.sal}</td>
	<td>${emp.deptno}</td>
</tr>
</c:forEach>
</table>

</body>
</html>