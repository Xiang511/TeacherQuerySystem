<html>
<link href="css/styles.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<%@ page contentType="text/html;charset=utf-8" import="java.sql.*" %>

<style>
       .container {background:#FFFFFF ;opacity:0.9;}
</style>

<body background="">
<div class="container mt-5">
	<div class="row">
		<div class="col-12"></div>
			<div class="col-12" >
			
				<table  class="table table-striped table-hover" >
					<tr><th>教授名稱</th><th>辦公室</th><th>Ext</th><th>Email</th><th>系級</th>
    				
			</div>
		<div class="col-12"></div>
	</div>
</div>
</body>
<%

try{
  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
  Connection con= DriverManager.getConnection(
    "jdbc:sqlserver://localhost:1433;database=COISAT","demo","demo");

  Statement st = con.createStatement();

  String sql= "select Professor.ProfessorName,Professor.Room,Professor.Ext,Professor.[E-mail],Department.DepartmentName  from Professor,Department where Department.DepartmentID= Professor.DepartmentID and Professor.DepartmentID='1'";
  ResultSet rs = st.executeQuery(sql);

  while (rs.next()) {
    out.println("<tr><td>" + rs.getString(1)+"</td>"); 
    out.println("<td>" + rs.getString(2)+"</td>");
    out.println("<td>" + rs.getString(3)+"</td>");
    out.println("<td>" + rs.getString(4)+"</td>");
    out.println("<td>" + rs.getString(5)+"</td>");
  }

  rs.close();
  st.close();
  con.close();
}catch(Exception e){out.println("資料庫連節發生問題："+e.toString() );}

%>
</html>