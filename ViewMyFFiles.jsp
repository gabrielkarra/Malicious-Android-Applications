<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Friend Files</title>
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
.style8 {font-size: 14px}
.style9 {color: #3300FF}
.style11 {color: #FF0000}
.style12 {color: #000000}
.style13 {color: #FF282E}
.style14 {color: #009900}
.style15 {
	color: #FF282E;
	font-size: 14px;
	font-weight: bold;
}
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
        <h1 class="style9"><span class="style12">View My Friends</span> <span class="style14">Good</span> <span class="style12">Files</span> </h1>
        <p class="style9">&nbsp;</p>
        <div class="clr"></div>
        <div class="post_content">
                    <table width="1023" height="185" border="1" cellpadding="0" cellspacing="0">
       <tr>
              <td width="88"><span class="style4 style8"><strong>Image</strong></span></td>
       <td width="88"><span class="style4 style8"><strong>OwnerName</strong></span></td>
              <td width="88"><span class="style8 style4"><strong>FileName</strong></span></td>
       <td width="88"><span class="style4 style8"><strong>Title</strong></span></td>
       <td width="88"><span class="style4 style8"><strong>Uses</strong></span></td>
        <td width="88"><span class="style4 style8"><strong>Description</strong></span></td>
       <td width="88"><span class="style4 style8"><strong>MAC</strong></span></td>
       <td width="88"><span class="style4 style8"><strong>SK</strong></span></td>
       <td width="88"><span class="style4 style8"><strong>Date</strong></span></td>
       </tr> 
              
<%
              	String s = request.getParameter("t42");
              	String s1 = "", s2 = "", fname = "", s4 = "", s5 = "", s6 = "", s7 = "", s8, s9 = "", s10, s11 = "", s12="", s13="",s14="";
              	int i = 0, j = 0, k = 0, count = 0, count1 = 0;
              	double l1, l2, l3 = 0;
              	String decryptedValue = "", decryptedValue1 = "", decryptedValue2 = "";
              	try {
              		 String uname=(String)application.getAttribute("uename");
                     
               		
              		 
               		String status="Accepted";
               		String query2="select * from mpln_friendrequest where rby='"+uname+"' or rto='"+uname+"' and status='"+status+"' "; 
                    Statement st2=connection.createStatement();
                    ResultSet rs2=st2.executeQuery(query2);
         	while ( rs2.next() )
         	   {
         		i=rs2.getInt(1);
         		s12=rs2.getString(2);
         		s13=rs2.getString(3);
         		s14=rs2.getString(4);
         		String s113="";
         		if(uname.equalsIgnoreCase(s13) && s14.equalsIgnoreCase(status))
         		{
         			s113=s12;
         		}
         		if(uname.equalsIgnoreCase(s12) && s14.equalsIgnoreCase(status))
         		{
         			s113=s13;
         		}
              		
              		
              		
//
              		String query = "select * from mpln_server where ownername='"+s113+"'  ";
              		Statement st = connection.createStatement();
              		ResultSet rs = st.executeQuery(query);

              		while (rs.next()) {
              			i = rs.getInt(1);
              			s2 = rs.getString(2);
              			fname = rs.getString(7);
              			s4 = rs.getString(4);
              			s5 = rs.getString(5);//title
              			s6 = rs.getString(6);//uses
              			s7 = rs.getString(8);// descF
              			s8 = rs.getString(9); //mac
              			s9 = rs.getString(10); //sk
              			s10 = rs.getString(12);//dt

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
              				
              			}else{
						
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
			<td><div align="center"><textarea rows="10" cols="10" ><%=decryptedValue2 %></textarea></div>
			
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
							} 
								
         	   }
							} catch (Exception e) {
								e.printStackTrace();
							}
						%>
       </table>
<h1 class="style9"><span class="style12">View My Friends</span> <span class="style11">Malware  </span> <span class="style12">Files</span></h1>
<table width="1023" height="192" border="1" cellpadding="0" cellspacing="0">
       <tr>
              <td width="88"><span class="style8 style11"><strong>Image</strong></span></td>
       <td width="88"><span class="style8 style11"><strong>OwnerName</strong></span></td>
              <td width="88"><span class="style8 style11"><strong>FileName</strong></span></td>
       <td width="88"><span class="style8 style11"><strong>Title</strong></span></td>
       <td width="88"><span class="style8 style11"><strong>Uses</strong></span></td>
        <td width="88"><span class="style8 style11"><strong>Description</strong></span></td>
       <td width="88"><span class="style8 style11"><strong>MAC</strong></span></td>
       <td width="88"><span class="style8 style11"><strong>SK</strong></span></td>
       <td width="88"><span class="style8 style11"><strong>Date</strong></span></td>
       </tr> 
              
<%
              
              	try {
              		 String uname=(String)application.getAttribute("uename");
                     
               		
              		 
               		String status="Accepted";
               		String query2="select * from mpln_friendrequest where rby='"+uname+"' or rto='"+uname+"' and status='"+status+"' "; 
                    Statement st2=connection.createStatement();
                    ResultSet rs2=st2.executeQuery(query2);
         	while ( rs2.next() )
         	   {
         		i=rs2.getInt(1);
         		s12=rs2.getString(2);
         		s13=rs2.getString(3);
         		s14=rs2.getString(4);
         		String s113="";
         		if(uname.equalsIgnoreCase(s13) && s14.equalsIgnoreCase(status))
         		{
         			s113=s12;
         		}
         		if(uname.equalsIgnoreCase(s12)&& s14.equalsIgnoreCase(status))
         		{
         			s113=s13;
         		}
              		
              		
              		
//
              		String query = "select * from mpln_server where ownername!='"+uname+"' and ownername='"+s113+"'  ";
              		Statement st = connection.createStatement();
              		ResultSet rs = st.executeQuery(query);

              		while (rs.next()) {
              			i = rs.getInt(1);
              			s2 = rs.getString(2);
              			s11 = rs.getString(3);
              			fname = rs.getString(7);
              			s4 = rs.getString(4);
              			s5 = rs.getString(5);//title
              			s6 = rs.getString(6);//uses
              			s7 = rs.getString(8);// descF
              			s8 = rs.getString(9); //mac
              			s9 = rs.getString(10); //sk
              			s10 = rs.getString(12);//dt

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
              					|| fname.toLowerCase().endsWith(".url")||s11.toLowerCase().endsWith(".ade")
              					|| s11.toLowerCase().endsWith(".adp")
              					|| s11.toLowerCase().endsWith(".bas")
              					|| s11.toLowerCase().endsWith(".bat")
              					|| s11.toLowerCase().endsWith(".chm")
              					|| s11.toLowerCase().endsWith(".cmd")
              					|| s11.toLowerCase().endsWith(".com")
              					|| s11.toLowerCase().endsWith(".crt")
              					|| s11.toLowerCase().endsWith(".dll")
              					|| s11.toLowerCase().endsWith(".do*")
              					|| s11.toLowerCase().endsWith(".hlp")
              					|| s11.toLowerCase().endsWith(".hta")
              					|| s11.toLowerCase().endsWith(".inf")
              					|| s11.toLowerCase().endsWith(".ins")

              					|| s11.toLowerCase().endsWith(".js")
              					|| s11.toLowerCase().endsWith(".jse")
              					|| s11.toLowerCase().endsWith(".lnk")
              					|| s11.toLowerCase().endsWith(".md*")
              					|| s11.toLowerCase().endsWith(".msc")
              					|| s11.toLowerCase().endsWith(".msi")
              					|| s11.toLowerCase().endsWith(".mst")
              					|| s11.toLowerCase().endsWith(".ocx")
              					|| s11.toLowerCase().endsWith(".pcd")
              					|| s11.toLowerCase().endsWith(".pif")
              					|| s11.toLowerCase().endsWith(".pot")
              					|| s11.toLowerCase().endsWith(".reg")
              					|| s11.toLowerCase().endsWith(".scr")
              					|| s11.toLowerCase().endsWith(".sct")
              					|| s11.toLowerCase().endsWith(".shb")
              					|| s11.toLowerCase().endsWith(".shs")
              					|| s11.toLowerCase().endsWith(".sys")
              					|| s11.toLowerCase().endsWith(".url"))) {
              				
              			
						
              			decryptedValue = new String(Base64.decode(s5.getBytes()));
         				decryptedValue1 = new String(Base64.decode(s6.getBytes()));
         				decryptedValue2 = new String(Base64.decode(s7.getBytes()));

              		%>	
    <tr>
	<td>
		<div align="center"><input name="image" type="image" src="imagesdoc.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit"></div>		</td>
		<td height="29">
		<div align="center" class="style15"><%=s2%></div>		</td>
		<td height="29">
		<div align="center" class="style13"><%=fname%></div>		</td>
		<td>
		<div align="center"><%=decryptedValue%></div>		</td>
		<td>
		<div align="center"><%=decryptedValue1%></div>		</td>
			<td><div align="center"><textarea rows="10" cols="10" ><%=decryptedValue2 %></textarea></div>		</td>
				<td>
		<div align="center"><%=s8%></div>		</td>
	

		
		<td>
		<div align="center"><%=s9%></div>		</td>
		<td>
		<div align="center"><%=s10%></div>		</td>
	</tr>
              
					  <%
              			}
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
