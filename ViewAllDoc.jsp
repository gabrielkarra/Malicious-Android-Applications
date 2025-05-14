<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@include file="connect.jsp" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%><html xmlns="http://www.w3.org/1999/xhtml">
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<head>
<title>View All Documents</title>
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
        <div class="article">
          <h2><span>All User Files </span></h2>
      
          <div class="clr"></div>
          <div class="post_content">
          <br /><br /><br /><br />
          <table width="750" border="1" align="center">
  <tr>

   	<td width="33" bgcolor="#FF0000" ><div align="center" class="style2 style1"><span class="style3"><b>User Name</b> </span></div></td>
   	<td width="33" bgcolor="#FF0000" ><div align="center" class="style2 style1"><span class="style3"><b>File Name</b> </span></div></td>
   	<td width="100" bgcolor="#FF0000" ><div align="center" class="style2 style1"><span class="style3"><b>Picture</b> </span></div></td>
   	<td width="24" bgcolor="#FF0000"><div align="center" class="style2 style1"><span class="style3"><b>Title</b></span></div></td>
   	<td width="29" bgcolor="#FF0000"><div align="center" class="style2 style1"><span class="style3"><b>Uses</b> </span></div></td>
   	   	<td width="68" bgcolor="#FF0000"><div align="center" class="style2 style1"><span class="style3"><b>Description </b></span></div></td>
   	<td width="102" bgcolor="#FF0000"><div align="center" class="style2 style1"><span class="style3"><b>Description</b></span></div></td>
  	<td width="36" bgcolor="#FF0000"><div align="center" class="style2 style1"><span class="style3"><b>MAC</b> </span></div></td>
   	<td width="57" bgcolor="#FF0000"><div align="center" class="style2 style1"><span class="style3"><b>SK</b> </span></div></td>
   	<td width="59" bgcolor="#FF0000"><div align="center" class="style2 style1"><span class="style3"><b>Rank</b> </span></div></td>
   	<td width="139" bgcolor="#FF0000"><div align="center" class="style2 style1"><span class="style3"><b>Date</b> </span></div></td>
  </tr>

	<%

	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13,s14;
	int i=0,j=0,k=0;
	String decryptedValue="",decryptedValue1="",decryptedValue2="";

      	try 
	{
        String uname=(String)application.getAttribute("uename");
          
      		
      		 
      		String status="Accepted";
      		String query="select * from mpln_server "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		
        	j=rs.getInt(1);
			s2=rs.getString(2);
			s3=rs.getString(3);
			s5=rs.getString(5);
			s6=rs.getString(6);
			s7=rs.getString(7);
			s8=rs.getString(8);
			s9=rs.getString(9);
			s10=rs.getString(10);
			s11=rs.getString(11);
			s12=rs.getString(12);
			decryptedValue = new String(Base64
						.decode(s5.getBytes()));
				decryptedValue1 = new String(Base64.decode(s6
						.getBytes()));
				decryptedValue2 = new String(Base64.decode(s8
						.getBytes()));
			%><tr>

		<td>
		<div align="center"><%=s2%></div>		</td>
		<td>
		<div align="center"><%=s3%></div>		</td>
		<td>
		<div align="center"><input name="image" type="image" src="imagesdoc.jsp?imgid=<%=j%>" width="100" height="100" alt="Submit"></div>		</td>
		<td>
		<div align="center"><%=decryptedValue%></div>		</td>
		<td>
		<div align="center"><%=decryptedValue1%></div>		</td>
		<td>
		<div align="center"><%=s7%></div>		</td>
		<td>
		<div align="center"><textarea rows="10" cols="10" readonly="readonly"> <%=decryptedValue2%></textarea></div>		</td>
		
		<td>
		<div align="center"><%=s9%></div>		</td>
		<td>
		<div align="center"><%=s10%></div>		</td>
<td>
		<div align="center"><%=s11%></div>		</td>
		<td>
		<div align="center"><%=s12%></div>		</td>
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
