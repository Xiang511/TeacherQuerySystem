<%@ page contentType="text/html;charset=MS950"  import="java.sql.*,java.util.*"  %>
<jsp:useBean id="sqlBean" scope="session" class="util.tools.SimpleODBCBeanEX"/>
<%
String[] number=request.getParameterValues("delete");
Connection con = sqlBean.getConnectionFromODBC();
try
{
 
  
   con.setAutoCommit(false);
  Statement stmt=con.createStatement();
   for(int i=0;i<number.length;i++)
   {
        
    //���o�y�k����A�H��JSQL���O
      stmt.executeUpdate("delete from message where userid='"+number[i]+"'");
      stmt.executeUpdate("delete from message where title='"+number[i]+"'");
      stmt.executeUpdate("delete from message where container='"+number[i]+"'");
      stmt.executeUpdate("delete from message where id='"+number[i]+"'");

      
   }
  stmt.close();
  con.commit();
  con.close();
  response.sendRedirect("message_find.jsp");
}
catch (Exception e)
{
  con.rollback();
  out.println(e.getMessage());
}
%>
<body background="A001.JPG" topmargin=16 marginheight=16>