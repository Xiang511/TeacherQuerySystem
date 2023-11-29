<%@ page contentType="text/html;charset=MS950"  import="java.sql.*,java.util.*"  %>
<jsp:useBean id="sqlBean" scope="session" class="util.tools.SimpleODBCBeanEX"/>
<html>
<head>

<link href="css/styles.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<title>
</title>
<style>
       .container {background:#FFFFFF ;opacity:0.9;}
</style>
</head>
<body>
<%
int count=0;
request.setCharacterEncoding("MS950");

%>
<table border="1" width="100%" id="table1">
<form name="Delete" action="csie_remove_2.jsp" method="POST">
<div class="container mt-5">
	<div class="row">
		<div class="col-12"></div>
			<div class="col-12" >
			
				<table  class="table table-striped table-hover" >
					<tr><th>選擇</th><th>專長ID</th><th>專長名稱</th>
    				</tr>	
			</div>
		<div class="col-12"></div>
	</div>
</div>
<%
   
	
try
{
  Connection con = sqlBean.getConnectionFromODBC();
  Statement stmt=con.createStatement();
  ResultSet rs=stmt.executeQuery("select * from Expertise");
  while(rs.next())
  {
    out.print("<tr>");
	out.print("<td>");
	out.print("<input type=checkbox name=delete value='"+rs.getString("ExpertiseID")+"'");
	out.print("</td>");
	out.print("<td>"+rs.getString("ExpertiseID")+"</td>");
	out.print("<td>"+rs.getString("ExpertiseName")+"</td>");

	
	out.print("</tr>");
}
  rs.close();
  stmt.close();
  con.close();
  }
catch (Exception e)
{
  out.println(e.getMessage());
}
%>
<button class="btn btn-primary btn-lg mx-1" id="submitButton" type="submit" onclick=submit()>確定</button>
<div class="mt-2"></div>
</form>
</body>

</html>