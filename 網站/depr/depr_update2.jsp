<%@ page pageEncoding="Big5"  contentType="text/html;charset=big5"%>
<%@ page import="util.tools.*,java.sql.*"%>
<% 
request.setCharacterEncoding("big5") ;
String  DepartmentID = request.getParameter("DepartmentID") ;
String DepartmentName = request.getParameter("DepartmentName") ;



SimpleODBCBeanEX odbcbean = new SimpleODBCBeanEX("userDSN");
String sql = "select * from Department WHERE DepartmentID='" + DepartmentID + "'" ;
ResultSet rs = odbcbean.doSelect(sql) ;
//System.out.println("sql 1 ->" + sql );
if(rs!=null && rs.next()){
	
	 sql = "update Department set DepartmentName='" +DepartmentName + "' where DepartmentID='"+ DepartmentID + "'" ;
			   
	
	//System.out.println("sql 2 ->" + sql ) ;	
	
	odbcbean.doUpdate(sql) ;
	
	
	
}
	odbcbean.close();
	//response.sendRedirect("csie_professer_update1.jsp") ;
%>
<html>
<meta http-equiv="refresh" content="0;url=depr_update1.jsp">
<head>
<body background="A001.JPG" topmargin=16 marginheight=16>
</head>
<body>
<script>
	alert("��s����!");
</script>
</body>
</html>
