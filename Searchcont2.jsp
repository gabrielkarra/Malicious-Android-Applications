<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>

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
          <h2><span>Search Contents</span></h2>
      
          <div class="clr"></div>
          <div class="post_content">
               <table width="300" border="1">
       <tr>
		<td><span class="style4">Profile Pic</span></td>
       <td><span class="style4">OwnerName</span></td>
              <td><span class="style4">FileName</span></td>
       <td><span class="style4">Title</span></td>
       <td><span class="style4">Uses</span></td>
          <td><span class="style4">Description File Name</span></td>
       <td><span class="style4">Description Content</span></td>
       <td><span class="style4">MAC</span></td>
       <td><span class="style4">SK</span></td>
       <td><span class="style4">Date</span></td>
       </tr> 
<%
 	int s = Integer.parseInt(request.getParameter("id"));

 	String s1 = "", s2 = "", s3 = "", s4 = "", s5 = "", s6 = "", s7 = "", s8, s9 = "", s10, s11 = "", s12, s13;
 	int i = 0, j = 0, k = 0, count = 0, count1 = 0;
 	double l1, l2, l3 = 0;
 	String decryptedValue = "", decryptedValue1 = "", decryptedValue2 = "";
 	try {
 		SimpleDateFormat sdf = new SimpleDateFormat(
 				"dd/MM/yyyy HH:mm:SS");
 		Date d = new Date();
 		String dt = sdf.format(d);

 		String user = (String) application.getAttribute("uename");

 		String query = "select * from mpln_server where id='" + s
 				+ "' and ownername!='" + user + "'";
 		Statement st = connection.createStatement();
 		ResultSet rs = st.executeQuery(query);

 		while (rs.next()) {
 			i = rs.getInt(1);
 			s2 = rs.getString(2);
 			s3 = rs.getString(3);

 			s4 = rs.getString(4);
 			s5 = rs.getString(5);
 			s6 = rs.getString(6);
 			s7 = rs.getString(7);
 			s8 = rs.getString(8);
 			s9 = rs.getString(9);
 			s10 = rs.getString(10);
 			j = rs.getInt(11);
 			s12 = rs.getString(12);
 			
 			j=j+1;
 			String query12="update mpln_server set rank="+j+" where id="+s+" "; 
 			Statement st12=connection.createStatement();
 			 st12.executeUpdate(query12);

 			String query1 = "select * from mpln_friendrequest where rby='"
 					+ user
 					+ "' and rto='"
 					+ s2
 					+ "' and status='Accepted' ";
 			Statement st1 = connection.createStatement();
 			ResultSet rs1 = st1.executeQuery(query1);

 			if (rs1.next()) {
 				decryptedValue = new String(Base64
 						.decode(s5.getBytes()));
 				decryptedValue1 = new String(Base64.decode(s6
 						.getBytes()));
 				decryptedValue2 = new String(Base64.decode(s8
 						.getBytes()));

 				//	RequestDispatcher rd=response.sendRedirect("Comment1.jsp");
 				//rd.forward(request,response);
 %>
	<tr>

		<td>
		<div align="center"><input name="image" type="image" src="imagesdoc.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit"></div>
		</td>
		<td height="29">
		<div align="center"><%=s2%></div>
		</td>
		<td height="29">
		<div align="center"><%=s3%></div>
		</td>
		<td>
		<div align="center"><%=decryptedValue%></div>
		</td>
		<td>
		<div align="center"><%=decryptedValue1%></div>
		</td>
			<td>
			<div align="center"><%=s7%></div>
		</td>
				<td>
		<div align="center"><textarea rows="10" cols="10"><%=decryptedValue2%></textarea></div>
		</td>
	

		
		<td>
		<div align="center"><%=s9%></div>
		</td>
		<td>
		<div align="center"><%=s10%></div>
		</td>
		<td>
		<div align="center"><%=s12%></div>
		</td>

	</tr>
	<%
		} else {
	%>
			<tr>

				<td>
				<div align="center"><input name="image" type="image" src="imagesI.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit"></div>
				</td>
				<td height="29">
				<div align="center"><%=s2%></div>
				</td>
				<td height="29">
				<div align="center"><%=s3%></div>
				</td>
				<td>
				<div align="center"><%=s5%></div>
				</td>
				<td>
				<div align="center"><%=s6%></div>
				</td>
					<td>
					<div align="center"><%=s7%></div>
				</td>
						<td>
				<div align="center"><textarea rows="10" cols="10" readonly="readonly"><%=s8%></textarea></div>
				</td>
			

				
				<td>
				<div align="center">Ur Not Friend</div>
				</td>
				<td>
				<div align="center">Ur Not Friend</div>
				</td>
				<td>
				<div align="center"><%=s12%></div>
				</td>

			</tr>
			<%
				}

					}

				} catch (Exception e) {
					e.printStackTrace();
				}
			%>
</table>
</form>
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
