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
<form name="Delete" action="message_remove_2.jsp" method="POST">
<div class="container mt-5">
<h1 class="fw-bolder mb-5" style="margin-left:480px">會員留言板</h1>
	<div class="row">
		<div class="col-3"></div>
			<div class="col-5" >
				
                            
				<table  class="table table-hover">
					<tr>
						<td width="30%">選擇</td><td >用戶名</td><td width="25%">標題</td><td>內容</td><td>編號</td>
    				
			</div>
		<div class="col-4"></div>
	</div>
</div>
<%
   
	
try
{
  Connection con = sqlBean.getConnectionFromODBC();
  Statement stmt=con.createStatement();
  ResultSet rs=stmt.executeQuery("select * from message");
  while(rs.next())
  {
    out.print("<tr>");
	out.print("<td>");
	out.print("<input type=checkbox name=delete value='"+rs.getString("id")+"'");
	out.print("</td>");
	out.print("<td>"+rs.getString("userid")+"</td>");
	out.print("<td>"+rs.getString("title")+"</td>");
	out.print("<td>"+rs.getString("container")+"</td>");
	out.print("<td>"+rs.getString("id")+"</td>");

	
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