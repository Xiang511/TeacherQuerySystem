<%@ page pageEncoding="Big5"  contentType="text/html;charset=big5"%>
<%@ page import="util.tools.*,java.sql.*"%>
<% 
request.setCharacterEncoding("big5") ;
String ProfessorID = request.getParameter("ProfessorID") ;
String DepartmentID = request.getParameter("DepartmentID") ;
String ProfessorName = request.getParameter("ProfessorName") ;
String Room = request.getParameter("Room") ;
String Ext = request.getParameter("Ext") ;
String Email = request.getParameter("Email") ;


SimpleODBCBeanEX odbcbean = new SimpleODBCBeanEX("userDSN");
String sql = "select * from Professor WHERE ProfessorID='" + ProfessorID + "'" ;
ResultSet rs = odbcbean.doSelect(sql) ;
//System.out.println("sql 1 ->" + sql );
if(rs!=null && rs.next()){
	
	 sql = "update Professor set ProfessorName='" +ProfessorName + "' , Room='" + Room + "' , Ext='" + Ext +"', [E-mail]='" + Email +"' where ProfessorID='" 
			   + ProfessorID + "'" ;
			   
	
	//System.out.println("sql 2 ->" + sql ) ;	
	
	odbcbean.doUpdate(sql) ;
	
	
	
}
	odbcbean.close();
	//response.sendRedirect("int_professor_update1.jsp") ;
%>
<html>
<meta http-equiv="refresh" content="0;url=int_professor_update1.jsp">
<head>
<body background="A001.JPG" topmargin=16 marginheight=16>
</head>
<body>
<script>
	alert("更新完成!");
</script>
</body>
</html>
