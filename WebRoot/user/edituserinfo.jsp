<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta property="wb:webmaster" content="69e23ac12c635da9">
		<title>对角巷【学生二手交易平台】</title>
		<meta name="Keywords" content="对角巷">
		<meta name="Description" content="对角巷">
		<link rel="stylesheet" href="css/styles.css">
		<script>var _selectwidth = 280,_sedwidth = 265;</script>
		<script src="js/jquery-1.js" type="text/javascript"></script>
		<script src="js/test_kevin.js" type="text/javascript"></script>
		<script src="js/test_ajax.js" type="text/javascript"></script>
		<link rel="stylesheet" href="css/ifnewlogin.css">
		<link rel="stylesheet" href="css/top.css">
		<script src="js/form_check.js" type="text/javascript" ></script>

  </head>
  
   <body style="width: 100%; height: 100%">
    <jsp:include page="../log_reg.jsp" flush="true"></jsp:include>
    <div id="con">
    	<jsp:include page="../head.jsp" flush="true"></jsp:include>
    	<jsp:include page="editwrap.jsp" flush="true"></jsp:include>
    </div>
    <jsp:include page="../foot.jsp" flush="true"></jsp:include>
  </body>
</html>
