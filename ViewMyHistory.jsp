<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@include file="connect.jsp" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View My History</title>
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
.style1 {color: #FFFF00}
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
          <li><a href="Admin.html"><span>Admin</span></a></li>
          <li class="active"><a href="RemoteUser.html">Remote User</a></li>

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
          <h2><span>View My Search History</span></h2>
      
          <div class="clr"></div>
          <div class="post_content">
          <br /><br /><br /><br />
          <table width="965" border="1" align="left">
  <tr>
   <td width="140" height="32" bgcolor="#FF0000"><div align="center" class="style2 style1"><span class="style3"><b>User Name</b> </span></div></td>
       <td width="178" bgcolor="#FF0000"><div align="center" class="style2 style1"><span class="style3"><b>KeyWord</b> </span></div></td>
    <td width="205" bgcolor="#FF0000"><div align="center" class="style2 style1"><span class="style3"><b>Date & Time</b></span></div></td>
  </tr>

<%

	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
        String uname=(String)application.getAttribute("uename");
          
      		
      		 
      		
      		String query="select * from mpln_search where uname='"+uname+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		s2=rs.getString(1);
		s3=rs.getString(2);
		s4=rs.getString(3);
		
		%>

  <tr>
    <td height="29"><div align="center"><%=s2%></div></td>
    <td><div align="center"><%=s3%></div></td>
    <td><div align="center"><%=s4%></div></td>
  </tr>

<%
	   }
	  
           connection.close();
          }catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
</table>
         </p>
<br /><br /><br />
	<a href="RemoteUserMain.jsp">Back</a>
        
        
        
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
