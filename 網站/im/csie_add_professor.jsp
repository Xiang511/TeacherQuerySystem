<html>
  <head>
     <%@ page contentType="text/html;charset=utf-8" 
              import="java.sql.*, java.text.SimpleDateFormat" %>
               <link href="css/styles.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    			
  </head>
  <body>
    <%
      String id=request.getParameter("id");
      String depr=request.getParameter("depr");
      String name=request.getParameter("name");
      String office=request.getParameter("office");
      String ext=request.getParameter("ext");
      String email=request.getParameter("email");
  

      //設定日期格式
     

      try{
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
        Connection con=DriverManager.getConnection(
                       "jdbc:sqlserver://localhost:1433;database=COISAT",
                       "demo","demo");
        PreparedStatement pst = con.prepareStatement(
                       "INSERT INTO Professor VALUES (?,?,?,?,?,?)" );             
        pst.setString(1, id);
        pst.setString(2, depr);
        pst.setString(3, name);
        pst.setString(4, office);
        pst.setString(5, ext);
        pst.setString(6, email);  


        //執行
        if (pst.executeUpdate()==1)
           
        //清除資料
           pst.close();
           con.close();
      }catch(Exception e){
           out.println(e.toString() );
      }
  %>
  
  <%
      String expertiseid=request.getParameter("expertiseid");
      String expertise=request.getParameter("expertise");
 
  

      //設定日期格式
     

      try{
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
        Connection con=DriverManager.getConnection(
                       "jdbc:sqlserver://localhost:1433;database=COISAT",
                       "demo","demo");
        PreparedStatement pst = con.prepareStatement(
                       "INSERT INTO Expertise VALUES (?,?)" );             
        pst.setString(1, expertiseid);
        pst.setString(2, expertise);
     


        //執行
        if (pst.executeUpdate()==1)
           
        //清除資料
           pst.close();
           con.close();
      }catch(Exception e){
           out.println(e.toString() );
      }
  %>
  
  <%
     
  

      //設定日期格式
     

      try{
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
        Connection con=DriverManager.getConnection(
                       "jdbc:sqlserver://localhost:1433;database=COISAT",
                       "demo","demo");
        PreparedStatement pst = con.prepareStatement(
                       "INSERT INTO PE VALUES (?,?)" );             
        pst.setString(1, id);
        pst.setString(2, expertiseid);
     


        //執行
        if (pst.executeUpdate()==1)
           
        //清除資料
           pst.close();
           con.close();
      }catch(Exception e){
           out.println(e.toString() );
      }
  %>
  
  
  
  
  
  
  
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
<%

try{
  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
  Connection con= DriverManager.getConnection(
    "jdbc:sqlserver://localhost:1433;database=COISAT","demo","demo");

  Statement st = con.createStatement();

  String sql= "select Professor.ProfessorName,Professor.Room,Professor.Ext,Professor.[E-mail],Department.DepartmentName  from Professor,Department where Department.DepartmentID= Professor.DepartmentID and Professor.DepartmentID='4'";
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
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    			<link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet" />
    			<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    			
    	<script>
        	toastr.options = {
            "closeButton": true,
            "debug": false,
            "newestOnTop": false,
            "progressBar": true,
            "positionClass": "toast-top-right",
            "preventDuplicates": false,
            "onclick": null,
            "showDuration": "300",
            "hideDuration": "1000",
            "timeOut": "5000",
            "extendedTimeOut": "1000",
            "showEasing": "swing",
            "hideEasing": "linear",
            "showMethod": "fadeIn",
            "hideMethod": "fadeOut"
        	}
		</script>
  <script>
        toastr.success('資料新增完成', '成功')
    </script>
  </body>
</html>
