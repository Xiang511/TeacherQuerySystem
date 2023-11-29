<%@ page pageEncoding="Big5"  contentType="text/html;charset=big5"%>
<%@ page import="util.tools.*,java.sql.*"%>
<% 
request.setCharacterEncoding("big5") ;
String DAID = request.getParameter("DAID") ;
String DepartmentID = request.getParameter("DepartmentID") ;
String DAName = request.getParameter("DAName") ;
String Room = request.getParameter("Room") ;
String Ext = request.getParameter("Ext") ;
String Email = request.getParameter("Email") ;


SimpleODBCBeanEX odbcbean = new SimpleODBCBeanEX("userDSN");
String sql = "select * from DA WHERE DAID='" + DAID + "'" ;
ResultSet rs = odbcbean.doSelect(sql) ;
//System.out.println("sql 1 ->" + sql );
if(rs!=null && rs.next()){
	
	 sql = "update DA set DAName='" +DAName + "' , Room='" + Room + "' , Ext='" + Ext +"', [E-mail]='" + Email +"'  where DAID='" + DAID + "'" ;
			   
	
	//System.out.println("sql 2 ->" + sql ) ;	
	
	odbcbean.doUpdate(sql) ;
	
	
	
}
	odbcbean.close();
	//response.sendRedirect("DA_update1.jsp") ;
%>
<html>
<meta http-equiv="refresh" content="0;url=DA_update1.jsp">
<head>
<body background="A001.JPG" topmargin=16 marginheight=16>
</head>
<body>
<script>
	alert("更新完成!");
</script>
</body>
</html>
