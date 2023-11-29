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
      stmt.executeUpdate("delete from Professor where ProfessorID='"+number[i]+"'");
      stmt.executeUpdate("delete from Professor where DepartmentID='"+number[i]+"'");
      stmt.executeUpdate("delete from Professor where ProfessorName='"+number[i]+"'");
      stmt.executeUpdate("delete from Professor where Room='"+number[i]+"'");
      stmt.executeUpdate("delete from Professor where Ext='"+number[i]+"'");
      stmt.executeUpdate("delete from Professor where [E-mail]='"+number[i]+"'");
      stmt.executeUpdate("delete from Expertise where ExpertiseID in (select ExpertiseID from PE where PE.ExpertiseID=Expertise.ExpertiseID and  PE.ProfessorID ='"+number[i]+"')");
      stmt.executeUpdate("delete from PE where ProfessorID='"+number[i]+"'");
      
   }
  stmt.close();
  con.commit();
  con.close();
  response.sendRedirect("professor_dsa_find.jsp");
}
catch (Exception e)
{
  con.rollback();
  out.println(e.getMessage());
}
%>
<body background="A001.JPG" topmargin=16 marginheight=16>