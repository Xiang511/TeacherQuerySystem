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
        
    //取得語法物件，以輸入SQL指令
      stmt.executeUpdate("delete from DA where DAID='"+number[i]+"'");
      stmt.executeUpdate("delete from DA where DepartmentID='"+number[i]+"'");
      stmt.executeUpdate("delete from DA where DAName='"+number[i]+"'");
      stmt.executeUpdate("delete from DA where Room='"+number[i]+"'");
      stmt.executeUpdate("delete from DA where Ext='"+number[i]+"'");
      stmt.executeUpdate("delete from DA where [E-mail]='"+number[i]+"'");
      
   }
  stmt.close();
  con.commit();
  con.close();
  response.sendRedirect("DA_Find.jsp");
}
catch (Exception e)
{
  con.rollback();
  out.println(e.getMessage());
}
%>
<body background="A001.JPG" topmargin=16 marginheight=16>