<%@page import="javax.swing.text.Style"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%request.setCharacterEncoding("UTF-8"); %>
   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
   <html>
   <head>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>留言板</title>
  <style>
   		.container {background:#EEEEEE ;opacity:0.9;}
  </style>
  </head>
 <body background="">

  
  <%! String str= ""; %>
  <%
  String bt = new String( request.getParameter("biaoti").getBytes("ISO-8859-1"));
  String nr = new String( request.getParameter("neirong").getBytes("ISO-8859-1"));
  String xm = new String( request.getParameter("name").getBytes("ISO-8859-1"));
  
  Date date = new Date();
  SimpleDateFormat da = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  String time = da.format(date);
  
  if(bt.isEmpty()){
      str += "<br>標&nbsp;&nbsp;題：無標題" + "<br>內&nbsp;&nbsp;容：" + nr + "<br>發布者：" + xm + "<br>發布時間：" + time + "<hr>";
  }else{
      str += "<br>標&nbsp;&nbsp;題：" + bt + "<br>內&nbsp;&nbsp;容：" + nr + "<br>發布者：" + xm + "<br>發布時間：" + time + "<hr>";
  }
  %>
  
  
   <main class="flex-shrink-0">
            <!-- Navigation-->
            
            <!-- Page content-->
            <section class="py-5">
                <div class="container px-0">
                    <!-- Contact form-->
                    <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
                        <div class="text-center mb-5">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-envelope"></i></div>
                            <h1 class="fw-bolder">會員留言板</h1>
                            <p class="lead fw-normal text-muted mb-0"></p>
                        </div>
                        <div class="row gx-5 justify-content-center">
                            <div class="col-lg-8 col-xl-6">
                               
                                
                                    <!-- Name input-->
                                    <div class="form-floating mb-3">
                                        <%= str %>
                                    </div>
                                    
                                    
                                    <!-- Phone number input-->
                                    <div class="form-floating mb-3">
                                        
                                    </div>
                                    <!-- Message input-->
                                    
                                 
                                    
                                    <div class="d-grid">
                                    <a class="btn btn-primary btn-lg" id="submitButton" type="submit" href="http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/message.html" role="button">返回</a>
                                    </div>
                                		
                            </div>
                        </div>
                    </div>
                    <!-- Contact cards-->
                   
                </div>
            </section>
        </main>
  
  </body>
  </html>