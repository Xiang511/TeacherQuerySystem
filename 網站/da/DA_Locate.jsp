<%@ page pageEncoding="Big5"  contentType="text/html;charset=big5"%>
<%@ page import="util.tools.*,mybean.*,java.sql.*"%>

<%
String productid = request.getParameter("productid") ;
String name = request.getParameter("name") ;
SimpleODBCBeanEX odbcbean = new SimpleODBCBeanEX("sp");
ResultSet rs = odbcbean.doSelect("select * from DA") ;

RsBean as = new RsBean();

%>

<html>
<head>
<link href="css/styles.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<body background="A001.JPG" topmargin=16 marginheight=16>
<title>PartLocate</title>
<meta http-equiv="Content-Type" content="text/html; charset=Big5"/>
<script>
	function go(){
		//alert("go go go !");
		document.form1.submit();
	}
</script>
</head>
<body>
<p align="center">　</p>
<p align="center">
<form name="form1" method="post" action="DA_Locate.jsp">
<select size="1" name="productid" onChange="go();">
	<option value="" selected >查詢系助資料</option>
	<%while(rs!=null && rs.next()){%>
		<option value=<%=rs.getString("DAID").trim()%>><%=rs.getString("DAName").trim()%></option>
	<%}%>
</select>

</form>
</p>
<hr>
<p align="center">　</p>
<p align="center">　

<tr>
   
 </tr>

	<%if(productid!=null && !productid.trim().equals("")){
		rs = odbcbean.doSelect("select DA.DAName as 系助名稱___,DA.DepartmentID as 系級___,DA.Room as 辦公室___,DA.Ext as 分機___,DA.[E-mail] as Email from DA where DA.DAID='" + productid + "'") ;
		as.setRs(rs);
	%>
	
  <tr><%=as.getRsString()%></tr>
  	<%
  		} 
  		  		  		
  	  else{ //end of if%>
  <tr>
  
  </tr>	
	<%}%>
</table>
</p>
</body>
</html>

