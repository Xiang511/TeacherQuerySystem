<%@ page pageEncoding="Big5"  contentType="text/html;charset=big5"%>
<%@ page import="util.tools.*,java.sql.*"%>
<%
String productid = request.getParameter("productid") ;
SimpleODBCBeanEX odbcbean = new SimpleODBCBeanEX("sp");
ResultSet rs = odbcbean.doSelect("select * from DA;") ;
%>
<html>
<head>
<link href="css/styles.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<title>SalesRepUpdate</title>
<meta http-equiv="Content-Type" content="text/html; charset=Big5"/>
<script>
	function go(){
		//alert("go go go !");
		document.form1.submit();
	}
</script>
</head>
<body>
<body background="A001.JPG" topmargin=16 marginheight=16>
<p align="center">
<p align="center">
<form name="form1" method="post" action="DA_update1.jsp">
<select size="1" name="productid" onChange="go();">
	<option value="" selected >請選擇系助</option>
	<%while(rs!=null && rs.next()){%>
		<option value="<%=rs.getString("DAID").trim()%>"><%=rs.getString("DAName").trim()%></option>
	<%}%>
</select>
</form>


<form name="form2" method="post" action="DA_update2.jsp">

<table border="1" width="100%" id="table1">
<form name="Delete" action="DA_remove_2.jsp" method="POST">
<div class="container mt-2">
	<div class="row">
		<div class="col-12"></div>
			<div class="col-12" >
			
				<table  class="table table-striped table-hover" >
					<tr><th>系助ID</th><th>系級ID</th><th>系助名稱</th>
    				<th>辦公室</th><th>分機</th><th>Email</th></tr>	
			</div>
		<div class="col-12"></div>
	</div>
</div>
    
 
	<%if(productid!=null && !productid.trim().equals("")){
		rs = odbcbean.doSelect("select * from DA WHERE DAID='" + productid + "'") ;
		String pkey = "" ;
		while(rs!=null && rs.next()){
			pkey = rs.getString(1);
	%>
  <tr>
  	
  	<input type="hidden" name="DAID" value="<%=pkey%>">
    <td width="16%"><%=pkey%></td>
    <td width="17%" ><%=rs.getString(2)%></td>
    <td width="17%" ><input type="text" name="DAName" size="20" value="<%=rs.getString(3)%>" ></td>
    <td width="17%"><input type="text" name="Room" size="20" value="<%=rs.getString(4)%>" ></td>
    <td width="17%" ><input type="text" name="Ext" size="20" value="<%=rs.getString(5)%>" ></td>
    <td width="17%" ><input type="text" name="Email" size="20" value="<%=rs.getString(6)%>" ></td>
    
    
  </tr>
  	<%
  		}//end of while
  	  }else{//end of if%>
  <tr>
    <td ><font color="red">請先選擇系助</font></td>
    <td></td>
     <td></td>
      <td></td>
       <td></td>
        <td></td>
  </tr>	
	<%}%>
</table>

<button class="btn btn-primary btn- mx-1" id="submitButton" type="submit" name="Submit">修改</button>
<button class="btn btn-primary btn- mx-1" id="submitButton" type="reset" name="B2">重設</button>
</form>
</body>
</html>
<%odbcbean.close();%>
