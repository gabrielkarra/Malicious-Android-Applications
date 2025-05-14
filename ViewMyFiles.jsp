<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View My Files</title>
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
.style4 {color: #0066FF}
.style7 {
	color: #666666;
	font-weight: bold;
}
.style8 {font-size: 14px}
.style9 {color: #3300FF}
.style10 {color: #666666}
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
        <h1 class="style9">View My Files </h1>
        <p class="style9">&nbsp;</p>
        <div class="clr"></div>
        <div class="post_content">
       <table width="300" border="1" cellpadding="0" cellspacing="0">
       <tr>
       <td><span class="style4 style8"><strong>Image</strong></span></td>
       <td><span class="style4 style8"><strong>OwnerName</strong></span></td>
       <td><span class="style8 style4"><strong>FileName</strong></span></td>
       <td><span class="style4 style8"><strong>Title</strong></span></td>
       <td><span class="style4 style8"><strong>Uses</strong></span></td>
       <td width="100"><span class="style4 style8"><strong>Description</strong></span></td>
       <td><span class="style4 style8"><strong>MAC</strong></span></td>
       <td><span class="style4 style8"><strong>SK</strong></span></td>
       <td><span class="style4 style8"><strong>Date</strong></span></td>
       </tr> 
              
<%
              	String s = request.getParameter("t42");
              	String s1 = "", s2 = "", fname = "", s4 = "", s5 = "", s6 = "", s7 = "", s8, s9 = "", s10, s11 = "", s12, s13;
              	int i = 0, j = 0, k = 0, count = 0, count1 = 0;
              	double l1, l2, l3 = 0;
              	String decryptedValue = "", decryptedValue1 = "", decryptedValue2 = "";
              	try {

              		String user = (String) application.getAttribute("uename");
              		String query = "select * from mpln_server where ownername='"+user+"' ";
              		Statement st = connection.createStatement();
              		ResultSet rs = st.executeQuery(query);

              		while (rs.next()) {
              			i = rs.getInt(1);
              			s2 = rs.getString(2);
              			fname = rs.getString(7);
              			s4 = rs.getString(4);
              			s5 = rs.getString(5);//title
              			s6 = rs.getString(6);//uses
              			s7 = rs.getString(8);// desc
              			s8 = rs.getString(9); //mac
              			s9 = rs.getString(10); //sk
              			s10 = rs.getString(12);//dt

						
              			decryptedValue = new String(Base64.decode(s5.getBytes()));
         				decryptedValue1 = new String(Base64.decode(s6.getBytes()));
         				decryptedValue2 = new String(Base64.decode(s7.getBytes()));

              		%>	
    <tr>
	<td>
		<div align="center"><input name="image" type="image" src="imagesdoc.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit"></div>
		</td>
		<td height="29">
		<div align="center"><%=s2%></div>
		</td>
		<td height="29">
		<div align="center"><%=fname%></div>
		</td>
		<td>
		<div align="center"><%=decryptedValue%></div>
		</td>
		<td>
		<div align="center"><%=decryptedValue1%></div>
		</td>
			<td><div align="center"><textarea rows="10" cols="10" readonly="readonly"> <%=decryptedValue2%></textarea></div>
			
		</td>
				<td>
		<div align="center"><%=s8%></div>
		</td>
	

		
		<td>
		<div align="center"><%=s9%></div>
		</td>
		<td>
		<div align="center"><%=s10%></div>
		</td>
		
	</tr>
               <%
							} 
								

							} catch (Exception e) {
								e.printStackTrace();
								out.print(e.getMessage());
							}
						%>
					 
       </table>
       
       <h3><a href="RemoteUserMain.jsp">Back</a></h3>
        </div>
        <div class="clr"></div>
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
