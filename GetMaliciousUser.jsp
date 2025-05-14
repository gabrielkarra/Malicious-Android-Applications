<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@include file="connect.jsp" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@page import="java.util.Date"%><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Malacious User</title>
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
.style1 {color: #FF0000}
.style2 {color: #000000}
.style3 {font-family: "Times New Roman", Times, serif}
.style4 {font-size: 16px}
.style6 {color: #FF0000; font-weight: bold; }
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
        <h2><strong><span class="style2">All</span> <span class="style1">Malware Propagation User</span> <span class="style2">Files</span> </strong></h2>
      
        <div class="clr"></div>
        <div class="post_content">
          <br /><br /><br /><br />
            <table width="910" height="212" border="1" cellpadding="0" cellspacing="0">
       <tr>
       
       <td width="130" bgcolor="#FFFF00"><div align="center" class="style1"><strong><span class="style8 style3 style4">Malicious User Pic</span></strong></div></td>
       <td width="103" bgcolor="#FFFF00"><div align="center" class="style6"><span class="style8 style3 style4">OwnerName</span></div></td>
              <td width="83" bgcolor="#FFFF00"><div align="center" class="style6"><span class="style8 style3 style4">Malware Name</span></div></td>
       <td width="34" bgcolor="#FFFF00"><div align="center" class="style6"><span class="style8 style3 style4">Title</span></div></td>
       <td width="39" bgcolor="#FFFF00"><div align="center" class="style6"><span class="style8 style3 style4">Uses</span></div></td>
        <td width="136" bgcolor="#FFFF00"><div align="center" class="style6"><span class="style8 style3 style4">Description FileName</span></div></td>
           <td width="137" bgcolor="#FFFF00"><div align="center" class="style6"><span class="style8 style3 style4">Description</span></div></td>
       <td width="47" bgcolor="#FFFF00"><div align="center" class="style6"><span class="style8 style3 style4">MAC</span></div></td>
       <td width="27" bgcolor="#FFFF00"><div align="center" class="style6"><span class="style8 style3 style4">SK</span></div></td>
       <td width="152" bgcolor="#FFFF00"><div align="center" class="style6"><span class="style8 style3 style4">Date</span></div></td>
       </tr> 
        <%
              	String s = request.getParameter("t42");
              	String s1 = "", s2 = "", fname = "", s4 = "", s5 = "", s6 = "", s7 = "", s8, s9 = "", s10="", s11 = "", s12, s13;
              	int i = 0, j = 0, k = 0, count = 0, count1 = 0;
              	double l1, l2, l3 = 0;
              	String decryptedValue = "", decryptedValue1 = "", decryptedValue2 = "";
              	try {

              		String user = (String) application.getAttribute("uename");
              		String query = "select * from mpln_server ";
              		Statement st = connection.createStatement();
              		ResultSet rs = st.executeQuery(query);

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
              			if ((fname.toLowerCase().endsWith(".ade")
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
                      					|| s7.toLowerCase().endsWith(".url"))) {
              				 String de=new String(Base64.decode(s8.getBytes()));
              %>
              
           
       	<tr>

<td><div align="center"><input  name="image" type="image" src="imagessm.jsp?name=<%=s2%>" width="100" height="100" alt="Submit"></div></td>
		<td height="29">
		<div align="center"><a href="GetMaliciousUser1.jsp?uname=<%=s2%>"><%=s2%></a></div>		</td>
		<td height="29">
		<div align="center" class="style7"><strong><%=fname%></strong> </div>		</td>
		<td>
		<div align="center"><%=s5 %></div>		</td>
		<td>
		<div align="center"><%=s6 %></div>		</td>
		<td height="29" width="136">
		<div align="center"><%=s7 %></div>		</td>

		<td>
		<div align="center"><textarea rows="10" cols="20"><%=de%></textarea></div>		</td>
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
       
     
         </p>
<br /><br /><br />
	<a href="AdminMain.jsp">Back</a>        </div>
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
