<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@include file="connect.jsp" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Get Malacious</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-900.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style5 {font-size: 18px; color: #EEA317; font-weight: bold; font-family: "Courier New", Courier, monospace; }
.style7 {font-size: 14px}
.style8 {font-family: Arial, Helvetica, sans-serif; font-size: 14px; }
.style9 {
	font-family: "Courier New", Courier, monospace;
	color: #FF4E44;
	font-size: 18px;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html">SUBSTANTIAL AUTHORIZATION RECOGNITION IN MACHINE LEARNING-DRIVEN DETECTION OF MALICIOUS ANDROID APPLICATIONS</a></h1>
      </div>
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="#">
        </form>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="Admin.html"><span>Admin</span></a></li>
          <li ><a href="RemoteUser.html">Remote User</a></li>

          <li><a href="about.html"><span>About Us</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="935" height="307" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="935" height="307" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="935" height="307" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
        <div class="article">
          <h2><span>All User Files </span></h2>
      
          <div class="clr"></div>
          <div class="post_content">
          <br /><br /><br /><br />
   <table width="450" border="0" align="center">
  <tr>  </tr>

<%

	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13,s14;
	int i=0,j=0,k=0;

      	try 
	{
        String uname=request.getParameter("uname");
          
      		
      		 

	
		
		String query1="select * from mpln_user where name='"+uname+"' "; 
        Statement st1=connection.createStatement();
        ResultSet rs1=st1.executeQuery(query1);
        while ( rs1.next() )
 	   {
        	j=rs1.getInt(1);
			s2=rs1.getString(2);
			s4=rs1.getString(4);
			s5=rs1.getString(5);
			s6=rs1.getString(6);
			s7=rs1.getString(7);
			s8=rs1.getString(8);
			s9=rs1.getString(9);
			s10=rs1.getString(10);
			%><tr>
					<td colspan="2" ><div align="center" class="style7"> 
					<input  name="image" type="image" src="imagess.jsp?imgid=<%=j%>" width="150" height="100" alt="Submit"></div></td>
					</tr>
					<tr>
					 <td> <div align="center" class="style5">User Name </div></td>
					<td><div align="center" class="style8"><%=s2%></div></td>
					</tr>
					<tr>
					 <td ><div align="center" class="style5">Email </div></td>
					<td><div align="center" class="style8"><%=s4%></div></td>
					</tr>
					<tr>
					 <td ><div align="center" class="style5">Mobile</div></td>
					<td><div align="center" class="style8"><%=s5%></div></td>
					</tr>
					<tr>
					 <td ><div align="center" class="style5">Address </div></td>
					<td><div align="center" class="style8"><%=s6%></div></td>
					</tr>
					<tr>
					<td ><div align="center" class="style5">DOB</div></td>
					<td><div align="center" class="style8"><%=s7%></div></td>
					</tr>
					<tr>
					<td ><div align="center" class="style5">Gender </div></td>
					<td><div align="center" class="style8"><%=s8%></div></td>
					</tr>
					<tr>
					 <td ><div align="center" class="style5">Location </div></td>
					<td><div align="center" class="style8"><%=s10%></div></td>
			</tr>			
			 <tr>
			 <td><div align="center" class="style5">Block the Malicious USer </div></td>
			 <td align="center">
			 <a href="GetMaliciousUser2.jsp?id=<%=j%>&uname=<%=s2%>" class="style9">Block User</a>			 </td>
			 
			 </tr>
			

 

<%
 	   }
	   
	  
           connection.close();
          }catch(Exception e)
          {
           
          }
%>
</table>       
     
         </p>
<br /><br /><br />
	<a href="AdminMain.jsp">Back</a>
        
        
        
          </div>
          <div class="clr"></div>
        </div>
        
    </div>

      <div class="clr"></div>
  </div>
</div>
<div class="fbg"></div>
  <div class="footer">
   
  </div>
</div>
<div align=center></div>
</body>
</html>
