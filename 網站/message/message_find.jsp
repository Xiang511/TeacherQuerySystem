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
<h1 class="fw-bolder mb-5" style="margin-left:480px">會員留言板</h1>
	<div class="row">
		<div class="col-3"></div>
			<div class="col-5" >
				
                            
				<table  class="table table-hover">
					<tr>
						<td width="30%">用戶名</td><td width="25%">標題</td><td>內容</td><td>編號</td>
    				
			</div>
		<div class="col-4"></div>
	</div>
</div>
</body>
<%

try{
  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
  Connection con= DriverManager.getConnection(
    "jdbc:sqlserver://localhost:1433;database=COISAT","demo","demo");

  Statement st = con.createStatement();

  String sql= "select * from message";
  ResultSet rs = st.executeQuery(sql);

  while (rs.next()) {
    out.println("<tr><td >" + rs.getString(1)+"</td>"); 
    out.println("<td>" + rs.getString(2)+"</td>");
    out.println("<td>" + rs.getString(3)+"</td>");
    out.println("<td>" + rs.getString(4)+"</td>");


  }

  rs.close();
  st.close();
  con.close();
}catch(Exception e){out.println("資料庫連節發生問題："+e.toString() );}

%>
</html>