<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@include file="connect.jsp" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Accept Friend</title>
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
          <h2><span>View My Friends And Their Details</span></h2>
      
          <div class="clr"></div>
          <div class="post_content">
          <br /><br /><br /><br />
          <%
          int uid=Integer.parseInt(request.getParameter("id"));
 
 String uname=request.getParameter("uname");
 SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyyy HH:mm:SS");
 Date d=new Date();
 String dt=sdf.format(d);
 String status="Accepted";
 String query1="UPDATE mpln_friendrequest set status='"+status+"' where id='"+uid+"'"; 
 Statement st1=connection.createStatement();
st1.executeUpdate(query1);
 
 %>
     <h2 class="style10">Friend Request <span class="style11"> <%=uname %> </span>Accepted Successsfully</h2>
         </p>
<br /><br /><br />
         </p>
<br /><br /><br />
	<a href="RemoteUserMain.jsp">Back</a>
        
        
        
          </div>
          <div class="clr"></div>
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
