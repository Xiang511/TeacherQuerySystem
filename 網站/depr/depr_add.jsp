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
      String deprID=request.getParameter("deprID");
      String deprname=request.getParameter("deprname");


  

      //設定日期格式
     

      try{
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
        Connection con=DriverManager.getConnection(
                       "jdbc:sqlserver://localhost:1433;database=COISAT",
                       "demo","demo");
        PreparedStatement pst = con.prepareStatement(
                       "INSERT INTO message VALUES (?,?)" );             
        pst.setString(1, deprID);
        pst.setString(2, deprname);
        
        
       
     


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
