<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@include file="connect.jsp" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search File</title>
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
.style3 {color: #FF0000; font-weight: bold; }
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
        <div class="article">
          <h2><span>Search Friends</span></h2>
      
          <div class="clr"></div>
          <div class="post_content">
          <%String us=request.getParameter("t1");%>
<form name="form1" method="post" action="SearchFile.jsp">
  <table cellpadding="5" border="0">
    <tr>
      <td><span class="style3">Enter the User Name:</span></td>
      <td><input type="text" name="t1" placeholder="username"></td>
    </tr>
    <tr>
      <td></td>
      <td><input type="submit" name="Submit" value="Search"></td>
    </tr>
  </table>
</form>
<table cellpadding="20" border="1" align="center">
<%     	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0;
  	try{
%>
	<tr>
    	<td><div align="center"><span class="style1">Profile Photo</span></div></td>
      	<td><div align="center"><span class="style1">User Name</span></div></td>
	</tr>
<%	
     	String uname=(String)application.getAttribute("uename");
      	//String us=request.getParameter("t1");
       	SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		Date now = new Date();
		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt = strDate + "   " + strTime;
      	if(us.equalsIgnoreCase("null")){
      		out.println("Enter username"); 
      	}else{      		
      		String query1="INSERT INTO mpln_search VALUES('"+uname+"','"+us+"','"+dt+"')"; 
            Statement st1=connection.createStatement();
           	st1.executeUpdate(query1);
      		
           	String query="SELECT * FROM mpln_user WHERE name LIKE '%"+us+"%'"; 
           	Statement st=connection.createStatement();
           	ResultSet rs=st.executeQuery(query);
			
           	while(rs.next()){
				i=rs.getInt(1);
				s2=rs.getString(2);
				s4=rs.getString(4);
				s5=rs.getString(5);
				s6=rs.getString(6);
				s7=rs.getString(7);
				%><tr>
						<td><div align="center"><input  name="image" type="image" src="images.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit"></div></td>
						<td><div align="center"><%=s2%></div></td>
				 </tr>      
				 <tr>
				 		<td></td>  
						<td><div align="center"><a href="search3.jsp?uid=<%=i%>">View Details</a></div></td>
				</tr>
				<%
			}
      	}
		connection.close();
        }catch(Exception e){
			//out.println(e.getMessage());
        }
%>
</table>
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
            <li><a href="SearchFile.jsp">Search Friend</a></li>
            <li><a href="ViewMyHistory.jsp">View My Search History</a></li>
            
            <li><a href="index.html">Log Out</a></li>
     
          </ul>
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
