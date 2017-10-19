<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>JSTL的核心标签库</h1>
<c:set var="n1" value="30" scope="page"></c:set>
<c:set var="n2" value="20" scope="page"></c:set>
<c:if test="${ n1 < n2 }">
	n1小于n2
</c:if>

<c:set var="代浩浩"  scope="page"></c:set>
<c:out value="${代浩浩 }" default="傻Ⅹ"></c:out>
</body>
</html>