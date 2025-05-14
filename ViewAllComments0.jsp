<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@include file="connect.jsp" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@page import="java.util.Date"%><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Comments</title>
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
.style1 {font-size: 16px}
.style3 {font-family: Arial, Helvetica, sans-serif}
.style9 {font-size: 14px; font-family: Arial, Helvetica, sans-serif; color: #625B31; }
.style10 {color: #FF0000}
.style11 {color: #0066CC}
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
 <div class="jmainbar">
        <div class="article">
          <h2><span>View Comments </span></h2>
      
          <div class="clr"></div>
          <div class="post_content">
          <br /><br /><br /><br />
    <table  border="0" align="center">


<%

	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11="",s12="",s13="",s14="",s15="",s16="";
	int i=0,j=0,k=0;

      	try 
	{
          
			  String query2="select * from mpln_server  "; 
		        Statement st2=connection.createStatement();
		        ResultSet rs2=st2.executeQuery(query2);
		        while ( rs2.next() )
		 	   {
		        	i=rs2.getInt(1);
		        	
					s12=rs2.getString(2);
					s13=rs2.getString(3);
					s14=rs2.getString(4);
					s15=rs2.getString(5);
					s16=rs2.getString(11);
					String decryptedValue2 = new String(Base64.decode(s15.getBytes()));
			  %>
			  <tr>
			   <td width="178"><div align="center" class="style1 style3 style11"><b>OwnerName</b> </div></td>
				<td><div align="center" class="style9"><%=s12%></div></td>
			</tr>
				<tr>
			  	<td width="178"><div align="center" class="style1 style3 style11"><b>Title</b> </div></td>
				<td><div align="center" class="style9"><a href="ViewAllComments.jsp?id=<%=i%>&rank=<%=s16 %>&fn=<%=s13%>&title=<%=decryptedValue2%>"><%=decryptedValue2%></a></div></td>
				</tr>
				
				<tr>
			  	<td width="178"><div align="center" class="style1 style3 style11"><b>Rank</b> </div></td>
				<td><div align="center" class="style9"><%=s16%></div></td>				
				</tr>					
			 </tr>
			 <tr>
			 <td colspan="2"><span class="style10">*********************************************************************</span></td>
			 </tr>  
			 <%
			 }%>
			

 

<%
 	
	   
	  
           connection.close();
          }catch(Exception e)
          {
           
          }
%>
</table>
         </p>
<br /><br /><br /><br /><br />
	<a href="AdminMain.jsp">Back</a>
        
        </div>
        
        </div>
          <div class="clr"></div>
      </div>
                   <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Admin Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="ViewAllDoc.jsp">View All Document</a></li>
            <li><a href="ViewAllComments0.jsp">View All Comments</a></li>
             <li><a href="GetMaliciousUser.jsp">Get Malicious User Details</a></li>
            <li><a href="ViewUser.jsp">View Users</a></li>
             <li><a href="ViewFriendRequest.jsp">View Friend Request / Responses</a></li>
             <li><a href="ViewBlockedUser.jsp">View Blocked Users</a></li>
            <li><a href="index.html">Log Out</a></li>
     
          </ul>
        </div>
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
