<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
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
.style5 {color: #FF0000}
.style6 {color: #CC0000}
.style7 {
	color: #FF0033;
	font-weight: bold;
}
.style8 {font-size: 14px}
.style9 {color: #FFFF00}
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
        <h1 class="style5">Malicious Content !!! </h1>
        <div class="clr"></div>
        <div class="post_content">
              
<%
              	String s = request.getParameter("t42");
              	String s1 = "", s2 = "", fname = "", s4 = "", s5 = "", s6 = "", s7 = "", s8, s9 = "", s10, s11 = "", s12, s13;
              	int i = 0, j = 0, k = 0, count = 0, count1 = 0;
              	double l1, l2, l3 = 0;
              	String decryptedValue = "", decryptedValue1 = "", decryptedValue2 = "";
              	try {

              		String user = (String) application.getAttribute("uename");
              		String query = "select * from mpln_server ";
              		Statement st = connection.createStatement();
              		ResultSet rs = st.executeQuery(query);
%>
                <table width="919" border="1">
       <tr>
       <td width="100" bgcolor="#FF0000"><div align="center"><span class="style8 style9"><strong>Malicious User Pic</strong></span></div></td>
       <td width="85" bgcolor="#FF0000"><div align="center"><span class="style8 style9"><strong>OwnerName</strong></span></div></td>
              <td width="65" bgcolor="#FF0000"><div align="center"><span class="style8 style9"><strong>FileName</strong></span></div></td>
       <td width="30" bgcolor="#FF0000"><div align="center"><span class="style8 style9"><strong>Title</strong></span></div></td>
       <td width="35" bgcolor="#FF0000"><div align="center"><span class="style8 style9"><strong>Uses</strong></span></div></td>
               <td width="146" bgcolor="#FF0000"><div align="center"><span class="style8 style9"><strong>Malware File </strong></span></div></td>
        <td width="127" bgcolor="#FF0000"><div align="center"><span class="style8 style9"><strong>Description</strong></span></div></td>
       <td width="83" bgcolor="#FF0000"><div align="center"><span class="style8 style9"><strong>MAC</strong></span></div></td>
       <td width="93" bgcolor="#FF0000"><div align="center"><span class="style8 style9"><strong>SK</strong></span></div></td>
       <td width="91" bgcolor="#FF0000"><div align="center"><span class="style9 style8"><strong>Date</strong></span></div></td>
       </tr> 
<%
              		while (rs.next()) {
              			i = rs.getInt(1);
              			s2 = rs.getString(2);
              			fname = rs.getString(3);

              			s4 = rs.getString(4);
              			s5 = rs.getString(5);
              			s6 = rs.getString(6);
              			s7 = rs.getString(7);
              			s8 = rs.getString(8);
              			s9 = rs.getString(9);
              			s10 = rs.getString(10);
              			s11 = rs.getString(11);
              			s12 = rs.getString(12);

              			if (fname.toLowerCase().endsWith(".ade")
              					|| fname.toLowerCase().endsWith(".adp")
              					|| fname.toLowerCase().endsWith(".bas")
              					|| fname.toLowerCase().endsWith(".bat")
              					|| fname.toLowerCase().endsWith(".chm")
              					|| fname.toLowerCase().endsWith(".cmd")
              					|| fname.toLowerCase().endsWith(".com")
              					|| fname.toLowerCase().endsWith(".crt")
              					|| fname.toLowerCase().endsWith(".dll")
              					|| fname.toLowerCase().endsWith(".do*")
              					|| fname.toLowerCase().endsWith(".hlp")
              					|| fname.toLowerCase().endsWith(".hta")
              					|| fname.toLowerCase().endsWith(".inf")
              					|| fname.toLowerCase().endsWith(".ins")

              					|| fname.toLowerCase().endsWith(".js")
              					|| fname.toLowerCase().endsWith(".jse")
              					|| fname.toLowerCase().endsWith(".lnk")
              					|| fname.toLowerCase().endsWith(".md*")
              					|| fname.toLowerCase().endsWith(".msc")
              					|| fname.toLowerCase().endsWith(".msi")
              					|| fname.toLowerCase().endsWith(".mst")
              					|| fname.toLowerCase().endsWith(".ocx")
              					|| fname.toLowerCase().endsWith(".pcd")
              					|| fname.toLowerCase().endsWith(".pif")
              					|| fname.toLowerCase().endsWith(".pot")
              					|| fname.toLowerCase().endsWith(".reg")
              					|| fname.toLowerCase().endsWith(".scr")
              					|| fname.toLowerCase().endsWith(".sct")
              					|| fname.toLowerCase().endsWith(".shb")
              					|| fname.toLowerCase().endsWith(".shs")
              					|| fname.toLowerCase().endsWith(".sys")
              					|| fname.toLowerCase().endsWith(".url")||s7.toLowerCase().endsWith(".ade")
              					|| s7.toLowerCase().endsWith(".adp")
              					|| s7.toLowerCase().endsWith(".bas")
              					|| s7.toLowerCase().endsWith(".bat")
              					|| s7.toLowerCase().endsWith(".chm")
              					|| s7.toLowerCase().endsWith(".cmd")
              					|| s7.toLowerCase().endsWith(".com")
              					|| s7.toLowerCase().endsWith(".crt")
              					|| s7.toLowerCase().endsWith(".dll")
              					|| s7.toLowerCase().endsWith(".do*")
              					|| s7.toLowerCase().endsWith(".hlp")
              					|| s7.toLowerCase().endsWith(".hta")
              					|| s7.toLowerCase().endsWith(".inf")
              					|| s7.toLowerCase().endsWith(".ins")

              					|| s7.toLowerCase().endsWith(".js")
              					|| s7.toLowerCase().endsWith(".jse")
              					|| s7.toLowerCase().endsWith(".lnk")
              					|| s7.toLowerCase().endsWith(".md*")
              					|| s7.toLowerCase().endsWith(".msc")
              					|| s7.toLowerCase().endsWith(".msi")
              					|| s7.toLowerCase().endsWith(".mst")
              					|| s7.toLowerCase().endsWith(".ocx")
              					|| s7.toLowerCase().endsWith(".pcd")
              					|| s7.toLowerCase().endsWith(".pif")
              					|| s7.toLowerCase().endsWith(".pot")
              					|| s7.toLowerCase().endsWith(".reg")
              					|| s7.toLowerCase().endsWith(".scr")
              					|| s7.toLowerCase().endsWith(".sct")
              					|| s7.toLowerCase().endsWith(".shb")
              					|| s7.toLowerCase().endsWith(".shs")
              					|| s7.toLowerCase().endsWith(".sys")
              					|| s7.toLowerCase().endsWith(".url")) {
              %>
              

       	<tr>

		<td><div align="center"><input  name="image" type="image" src="imagessm.jsp?name=<%=s2%>" width="100" height="100" alt="Submit"></div></td>
		<td height="29">
		<div align="center"><%=s2%></div>		</td>
		<td height="29">
		<div align="center" class="style7"><%=fname%></div>		</td>
		<td><span class="style6"></span>
		<div align="center"><%=s5 %></div>		</td>
		<td>
		<div align="center"><%=s6 %></div>		</td>
		<td height="29" width="146">
		<div align="center"><%=s7 %></div>		</td>
<td>
		<div align="center"><textarea rows="8" cols="15" readonly="readonly"><%=s8%></textarea></div>		</td>
		<td>
		<div align="center"><%=s9%></div>		</td>
		<td>
		<div align="center"><%=s10%></div>		</td>
		<td>
		<div align="center"><%=s12%></div>		</td>
	</tr>
              
					  <%
							} 
								}

							} catch (Exception e) {
								e.printStackTrace();
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
