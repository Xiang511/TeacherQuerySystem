<html>
  <head>
     <%@ page contentType="text/html;charset=utf-8" 
              import="java.sql.*, java.text.SimpleDateFormat" %>
  </head>
  <body>
    <%
      String id=request.getParameter("sno");
      String name=request.getParameter("name");
      String addr=request.getParameter("addr");
      String off=request.getParameter("off");
      String ext=request.getParameter("ext");
      String email=request.getParameter("email");

      //設定日期格式
     

      try{
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
        Connection con=DriverManager.getConnection(
                       "jdbc:sqlserver://localhost:1433;database=COISAT",
                       "demo","demo");
        PreparedStatement pst = con.prepareStatement(
                       "INSERT INTO DA VALUES (?,?,?,?,?,?)" );             
        pst.setString(1, id);
        pst.setString(2, name);
        pst.setString(3, addr);
        pst.setString(4, off);  
        pst.setString(5, ext);
        pst.setString(6, email);

        //執行
        if (pst.executeUpdate()==1)
           out.print("資料新增完畢!!");
       
        //清除資料
           pst.close();
           con.close();
      }catch(Exception e){
           out.println(e.toString() );
      }
  %>
  </body>
</html>
