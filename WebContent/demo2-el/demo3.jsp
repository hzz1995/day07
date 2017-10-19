<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>EL功能三:操作WEB开发常用的对象</h1>
<!-- 
	pageScope,requestScope,sessionScope,applicationScope - 获取JSP中域中的数据
	param,paramValues 	- 接收参数.
	header,headerValues - 获取请求头信息
	initParam			- 获取全局初始化参数
	cookie				- WEB开发中cookie
	pageContext			- WEB开发中的pageContext.
 -->
<h3>接收请求的参数</h3>
<%= request.getParameter("id") %>
<%= request.getParameter("name") %>
<%= Arrays.toString(request.getParameterValues("hobby")) %>
<hr/>
${ param.id }
${ param.name }
${ paramValues.hobby[0] }
${ paramValues.hobby[1] }

<!-- 
--el常用對象。
與作用： pageScope,requestScope,sessionScope,applicationScope
頭信息：header,headerValues,
獲取參數：param,paramValues
獲取全局屬性：initParam
獲取cookie：cookie
上下文對象：pageContext

 -->
<h3>获取请求头</h3>
<%= request.getHeader("User-Agent") %>
<hr/>
${ header["User-Agent"] }
${header["Accept-Encoding"] }  <br>
<h3>获取全局初始化参数</h3>
${ initParam.username }
<h3>获取Cookie中的值</h3>
${ cookie.history.value }
<h3>获取PageContext中的对象</h3>
IP地址：${ pageContext.request.remoteAddr }
工程路径:${ pageContext.request.contextPath }
</body>
</html>