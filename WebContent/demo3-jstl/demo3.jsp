<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>JSTL常用标签:forEach</h1>
<h3>遍历数组</h3>
<%
	String[] arrs = {"李旭华","李冠希","董阳阳"};
	pageContext.setAttribute("arrs", arrs);
	
%>
<c:forEach var="i" items="${ arrs }">
	${ i }
</c:forEach>

<h3>遍历List集合</h3>
<%
	List list = new ArrayList();
	list.add("李旭华");
	list.add("李冠希");
	list.add("董阳阳");
	pageContext.setAttribute("list", list);
%>
<c:forEach var="i" items="${ list }">
	${ i }
</c:forEach>
<h3>遍历Map集合</h3>
<%
	Map<String,String> map = new HashMap<String,String>();
	map.put("aaa","李旭华");
	map.put("bbb","李冠希");
	map.put("ccc","董阳阳");
	pageContext.setAttribute("map", map);
%>
<c:forEach var="entry" items="${ map }">
	${ entry.key }-${ entry.value }
</c:forEach>

<h3>遍历从1到10</h3>
<c:forEach var="i" begin="1" end="10" step="2">
	${ i }
</c:forEach>

<h3>遍历从100到300</h3>
<c:forEach var="i" begin="100" end="300" step="5" varStatus="status">
	<c:if test="${ status.count % 3 == 0 }">
		<font color="red">${ i }</font>
	</c:if>
	<c:if test="${ status.count % 3 != 0 }">
		${ i }
	</c:if>
</c:forEach>
</body>
</html>