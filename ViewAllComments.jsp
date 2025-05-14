<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@include file="connect.jsp" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@page import="java.util.Date"%><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Malware Propagation in Large-Scale Networks</title>
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
.style12 {color: #75A3A6}
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
          <span>
          <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
          </span>
          <input name="button_search" src="images/search.gif" class="button_search" type="image" />
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
          <h2><span>Comments</span></h2>
      
          <div class="clr"></div>
          <div class="post_content">
          <br /><br /><br /><br />
   


<%
	String s1 = "", s2 = "", s3 = "", s4 = "", s5 = "", s6 = "", s7 = "", s8, s9 = "", s10, s11 = "", s12 = "", s13 = "", s14 = "", s15 = "", s16 = "";
	int i = 0, j = 0, k = 0;

	try {

		int id = Integer.parseInt(request.getParameter("id"));
		int rank = Integer.parseInt(request.getParameter("rank"));
		
		String fn = request.getParameter("fn");
		String title = request.getParameter("title");
		String query1 = "select * from mpln_comment where id='" + id + "' ";
		Statement st1 = connection.createStatement();
		
		ResultSet rs1 = st1.executeQuery(query1);

			if (rs1.next()) {
		
				j = rs1.getInt(1);
				s12 = rs1.getString(2);
  				s13 = rs1.getString(3);
			%>
			 <table  border="1" align="left">
			<tr>
					<td width="140" height="32"><div align="center" class="style1 style3 style11"><b>File</b> </div></td>	
					<td colspan="2"><div align="center"><input  name="image" type="image" src="imagesdoc.jsp?imgid=<%=j%>" width="100" height="100" alt="Submit"></div></td>
			  </tr>
			  <tr>
			   <td width="178"><div align="center" class="style1 style3 style11"><b>FileName</b> </div></td>
				<td><div align="center" class="style9"><%=s12%></div></td>
				<td width="178"><div align="center" class="style1 style3 style11"><b>Rank</b> </div></td>
				
			</tr>
				<tr>
			  	<td width="178"><div align="center" class="style1 style3 style11"><b>Title</b> </div></td>
				<td><div align="center" class="style9"><%=title%></div></td>
				<td><div align="center" class="style9"><%=rank%></div></td>
				</tr>
					<tr>
			  	<td width="178"><div align="center" class="style1 style3 style11"><b>Comment</b> </div></td>
			  	<td width="178"><div align="center" class="style1 style3 style11"><b>Commented By</b> </div></td>
			  	<td width="178"><div align="center" class="style1 style3 style11"><b>Date</b> </div></td>
			  	</tr>
			  <%
			  	String query2 = "select * from mpln_comment where id='" + j
			  					+ "' ";
			  			Statement st2 = connection.createStatement();
			  			ResultSet rs2 = st2.executeQuery(query2);
			  			while (rs2.next()) {

			  				
			  				s14 = rs2.getString(4);
			  				s15 = rs2.getString(5);
			  				s16 = rs2.getString(6);
			  %>
			  
			<tr>
				<td><div align="center" class="style9"><%=s14%></div></td>
			  	
				<td><div align="center" class="style9 style12"><%=s15%></div></td>				
				

				<td><div align="center" class="style9"><%=s16%></div></td>				
			   </tr>					
	
			 <%
			 	}
			 %>
			   
			 

 

<%
      			  	}else{
      			  		%>
      			  	<table  border="1" align="left">
      				<tr>
      						<td width="140" height="32"><div align="center" class="style1 style3 style11"><b>File</b> </div></td>	
      						<td colspan="2"><div align="center"><input  name="image" type="image" src="imagesdoc.jsp?imgid=<%=id%>" width="100" height="100" alt="Submit"></div></td>
      				  </tr>
      				  <tr>
      				   <td width="178"><div align="center" class="style1 style3 style11"><b>FileName</b> </div></td>
      					<td><div align="center" class="style9"><%=fn%></div></td>
      					<td width="178"><div align="center" class="style1 style3 style11"><b>Rank</b> </div></td>
      					
      				</tr>
      					<tr>
      				  	<td width="178"><div align="center" class="style1 style3 style11"><b>Title</b> </div></td>
      					<td><div align="center" class="style9"><%=title%></div></td>
      					<td><div align="center" class="style9"><%=rank%></div></td>
      					</tr>
      						<tr>
      				  	<td width="178"><div align="center" class="style1 style3 style11"><b>Comment</b> </div></td>
      				  	<td width="178"><div align="center" class="style1 style3 style11"><b>Commented By</b> </div></td>
      				  	<td width="178"><div align="center" class="style1 style3 style11"><b>Date</b> </div></td>
      				  	</tr>
      				  	<tr>
				<td><div align="center" class="style9">No Comments</div></td>
			  	
				<td><div align="center" class="style9 style12">No COmments</div></td>				
				

				<td><div align="center" class="style9">No Comments</div></td>				
			   </tr>	
      			  		<%
      			  	}

      			  		connection.close();
      			  	} catch (Exception e) {
      			  		e.printStackTrace();
      			  	}
      			  %>
</table>
         </p>
         <p><br />
             <br />
           <br />
           <br />
           </p>
         <p>&nbsp;</p>
         <p>&nbsp;</p>
         <p>&nbsp;</p>
         <p>&nbsp;</p>
        
          </div>
        
          </div>
		   
          <div class="clr"></div>
                  <p><br />
                  <a href="AdminMain.jsp">Back</a>
           
          </p>
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
	<li><a href="ViewFriendRequest.jsp">View Friend Request /
	Responses</a></li>
	<li><a href="ViewBlockedUser.jsp">View Blocked Users</a></li>
	<li><a href="index.html">Log Out</a></li>

</ul>
</div>
</div>
</div>

      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
   
  </div>
</div>
<div align=center></div>
</body>
</html>
