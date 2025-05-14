<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@include file="connect.jsp" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search</title>
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
.style3 {color: #FF0000}
.style4 {font-weight: bold}
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
      <div class="mainbar">
        <div class="article style4">
          <h2 class="style3">SUBSTANTIAL AUTHORIZATION RECOGNITION IN MACHINE LEARNING-DRIVEN DETECTION OF MALICIOUS ANDROID APPLICATIONS</h2>
      
          <div class="clr"></div>
          <div class="post_content">
         <%

int us=Integer.parseInt(request.getParameter("uid"));
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9,s10,s11,s12,s13;
	int i=0,j=0;

      	try 
	{
        
           String query="select * from mpln_user where id="+us+""; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	if ( rs.next()==true )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		s7=rs.getString(7);
		j=rs.getInt(9);
		j=j+1;
		
		String query1="update mpln_user set count="+j+" where id="+us+" "; 
        Statement st1=connection.createStatement();
      // st1.executeUpdate(query1);
	   }
%>
</p>
<p align="center">User Details </p>
<table width="342" border="1" align="center">
  <tr>
    <td><div align="center" class="style3"><span class="style3">User Image </span></div></td>
    <td><div align="center" class="style3"><input  name="image" type="image" src="images.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit"></div></td>
  </tr>
  <tr>
    <td><div align="center" class="style3"><span class="style3">User Name</span></div></td>
    <td><div align="center" class="style3"><%=s2%></div></td>
  </tr>
  <tr>
    <td><div align="center" class="style3"><span class="style3">DOB</span></div></td>
    <td><div align="center" class="style3"><%=s7%></div></td>
  </tr>
  <tr>
    <td><div align="center" class="style3"><span class="style3">E-Mail</span></div></td>
    <td><div align="center" class="style3"><%=s4%></div></td>
  </tr>
  <tr>
    <td><div align="center" class="style3"><span class="style3">Mobile</span></div></td>
    <td><div align="center" class="style3"><%=s5%></div></td>
  </tr>
 
  <tr>
    <td><div align="center"><span class="style3"><a href="ViewMyFriends.jsp"> Send Friend Request &nbsp;</a></span></div></td>
    <td><div align="center"><span class="style3"><a href="SendFriendReq.jsp?uid=<%=s2%>"> ADD FRIEND</a></span></div></td>
  </tr>
</table>
  

<%
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Remote User Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="Upload.jsp">Upload</a></li>
            <li><a href="SearchFile.jsp">Search</a></li>
            <li><a href="ViewMyHistory.jsp">View My Search History</a></li>
            <li><a href="SendFriendRequest.jsp">Send Friend Request </a></li>
            <li><a href="index.html">Log Out</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">  </div>
</div>
<div align=center></div>
</body>
</html>
