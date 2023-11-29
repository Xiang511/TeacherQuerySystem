<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="nav.css">
<title>Insert title here</title>
<%request.setCharacterEncoding("UTF-8"); %>
</head>
<body>
<div class="left">
	<img alt="" src="isu.gif" width="250px" height=70px>
	<div style="position:absolute; top:0; left:0; ">
		<table style="margin:75px ; margin-left:-1px">
			<tr>
	 			<td>&thinsp; <img  alt="" src="exit.png" width="17px" height="17px" style="margin-top:2px"></td>
	 			<%String csie = request.getParameter("csie"); %>
	 			<td><a href=demoFrameset.html ; style="text-decoration: none; color:red"}>登出:&thinsp;</a> </td>
       			<td>
       			<%=request.getParameter("csie")%>
       			</td>
		</table>
	</div>
</div>
</body>
</html>