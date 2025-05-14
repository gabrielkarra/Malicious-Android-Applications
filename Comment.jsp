<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Comment</title>
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
.style11 {color: #FFFF00; font-weight: bold; }
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
        <h1>Comment !!!</h1>
        <div class="clr"></div>
        <div class="post_content">
              
<%
              	int s = Integer.parseInt(request.getParameter("id"));
              	String s1 = "", s2 = "", fname = "", s4 = "", s5 = "", s6 = "", s7 = "", s8, s9 = "", s10, s11 = "", s12, s13;
              	int i = 0, j = 0, k = 0, count = 0, count1 = 0;
              	double l1, l2, l3 = 0;
              	String decryptedValue = "", decryptedValue1 = "", decryptedValue2 = "";
              	try {

              		String user = (String) application.getAttribute("uename");
              		String query = "select * from mpln_server where id='"+s+"'";
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
              %>
              <br/>
<form id="form1" name="form1" method="post" action="Comment1.jsp">
<table width="598" border="0" align="center">
<tr>
		<td bgcolor="#FF0000"><span class="style11">Id :- </span></td>
		<td><input name="t4" type="text" id="t4" size="50" value="<%=i %>"
			readonly="readonly" /></td>
	</tr>

	<tr>
		<td bgcolor="#FF0000" class="style11">FileName :-</td>
		<td><input required="required" name="t42" type="text" id="t42"
			size="50" value="<%=fname %>"/></td>
	</tr>
	<tr>
		<td bgcolor="#FF0000" class="style11">Title :-</td>
		<td><input required="required" name="title" type="text" id="title"
			size="50" value="<%=s5 %>"/></td>
	</tr>

	<tr>
		<td bgcolor="#FF0000"><span class="style11">Comment :-</span></td>
		<td><textarea name="text" id="textarea" cols="30" rows="10"></textarea></td>
	</tr>
	

	<tr>
		<td>
		<div align="right"></div>		</td>
		<td><input type="submit" name="Submit" value="Comment" /></td>
	</tr>
</table>
</form>

<%
	}

	} catch (Exception e) {
		e.printStackTrace();
	}
%>
       
       
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
