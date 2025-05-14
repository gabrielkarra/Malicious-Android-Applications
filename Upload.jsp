<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Upload</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-900.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>

 <script language="javascript" type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file1").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}

</script>
 
 <style type="text/css">
<!--
.style1 {color: #FFFF00}
.style3 {color: #FFFF00; font-weight: bold; }
.style4 {font-weight: bold}
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
      <div class="mainbar">
        <div class="article">
          <h2><span>Upload File</span></h2>
      
          <div class="clr"></div>
       <form id="form1" name="form1" method="post" action="Upload1.jsp" enctype="multipart/form-data">
<table width="598" border="1" align="center">
	
<tr>
		<td width="286" bgcolor="#FF0000"><span class="style1 style4"><strong>Select Doc Image:- </strong></span></td>
		<td width="356"><input required="required" type="file" name="pic"
			id="file"/></td>
	</tr>
	<tr>
		<td bgcolor="#FF0000" class="style1 style4"><strong>Title :-</strong></td>
		<td><input required="required" name="ti" type="text" id="t42"
			size="50" /></td>
	</tr>
	<tr>
		<td bgcolor="#FF0000" class="style1 style4"><strong>Uses :-</strong></td>
		<td><input required="required" name="loc" type="text" id="loc"
			size="50" /></td>
	</tr>
	
	
		<tr>
		<td width="286" bgcolor="#FF0000"><span class="style1 style4"><strong>Select Description File :- </strong></span></td>
		<td width="356"><input required="required" type="file" name="file1" id="file1" onchange="loadFileAsText()" /></td>
	</tr>
	<tr>
		<td bgcolor="#FF0000"><span class="style3">Description :-</span></td>
		<td><textarea name="text" id="textarea" cols="50" rows="15"></textarea></td>
	</tr>
	<tr>
		<td bgcolor="#FF0000"><span class="style1"><strong>MAC :- </strong></span></td>
		<td><input name="t4" type="text" id="t4" size="50" value=""
			readonly="readonly" /></td>
	</tr>

	<tr>
		<td>
		<div align="right"></div>		</td>
		<td><input type="submit" name="Submit" value="Encrypt" /></td>
	</tr>
</table>
</form>
       
       
          <div class="clr"></div>
        </div>
      
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Remote User Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="Upload.jsp">Upload</a></li>
            <li><a href="SearchFile.jsp">Search</a></li>
            <li><a href="ViewMyHistory.jsp">View My Search History</a></li>
            <li><a href="SendFriendRequest.jsp">Send Friend Request </a></li>
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
