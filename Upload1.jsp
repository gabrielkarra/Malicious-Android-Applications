<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page
	import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page
	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>


<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%><html xmlns="http://www.w3.org/1999/xhtml">
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
          <h2><span>Upload File</span></h2>
      
          <div class="clr"></div>

<%
	ArrayList list = new ArrayList();
	ServletContext context = getServletContext();
	String dirName = context.getRealPath("Gallery/");
	String paramname = null;
	String uname = "", mac = null, desc = null, title = null;
	String dob = null, gender = null, fl = null, uses = null, image = null,fl1=null;
	File file1 = null;
	FileInputStream fs = null, fs1 = null;
	String keys = "ef50a0ef2c3e3a5f";
	String h1 = "";
	String filename = "filename.txt";
	try {
		
		 String usname=(String)application.getAttribute("uename");
         
		String query="select * from mpln_blockeduser where uname='"+usname+"' "; 
        Statement st=connection.createStatement();
        ResultSet rs=st.executeQuery(query);
	if ( !rs.next() )
	   {
		
		
		MultipartRequest multi = new MultipartRequest(request, dirName,
				10 * 1024 * 1024); // 10MB
		Enumeration params = multi.getParameterNames();
		while (params.hasMoreElements()) {
			paramname = (String) params.nextElement();
			if (paramname.equalsIgnoreCase("pic")) {
				image = multi.getParameter(paramname);
			}
			if (paramname.equalsIgnoreCase("ti")) {
				title = multi.getParameter(paramname);
			}
			if (paramname.equalsIgnoreCase("loc")) {
				uses = multi.getParameter(paramname);
			}
			if(paramname.equalsIgnoreCase("file1")){
				fl=multi.getParameter(paramname);
			}
			if (paramname.equalsIgnoreCase("text")) {
				desc = multi.getParameter(paramname);
			}
			if (paramname.equalsIgnoreCase("t4")) {
				mac = multi.getParameter(paramname);
			}

		}
		int f = 0;
		Enumeration files = multi.getFileNames();
		while (files.hasMoreElements()) {
			paramname = (String) files.nextElement();
			if (paramname.equals("d1")) {
				paramname = null;
			}

			if (paramname != null) {
				f = 1;
				fl1 = multi.getFilesystemName(paramname);
				String fPath = context.getRealPath("Gallery\\" + fl1);
				file1 = new File(fPath);
				fs = new FileInputStream(file1);
				list.add(fs);
				if (files.hasMoreElements()) {
					paramname = (String) files.nextElement();
					if (paramname.equals("d1")) {
						paramname = null;
					}

					if (paramname != null) {
						f = 1;
						image = multi.getFilesystemName(paramname);
						String fPath1 = context.getRealPath("Gallery\\" + image);
						file1 = new File(fPath);
						fs = new FileInputStream(file1);
						list.add(fs);
						
				
				//Enc
				String cont = title + desc;
				byte[] keyValue = keys.getBytes();
				Key key = new SecretKeySpec(keyValue, "AES");
				Cipher c = Cipher.getInstance("AES");
				c.init(Cipher.ENCRYPT_MODE, key);
				String encryptedValue = new String(Base64.encode(title
						.getBytes()));
				String encryptedValue1 = new String(Base64.encode(uses
						.getBytes()));
				String encryptedValue2 = new String(Base64.encode(desc
						.getBytes()));

				PrintStream p = new PrintStream(new FileOutputStream(filename));
				p.print(new String(cont));

				MessageDigest md = MessageDigest.getInstance("SHA1");
				FileInputStream fis11 = new FileInputStream(filename);
				DigestInputStream dis1 = new DigestInputStream(fis11,
						md);
				BufferedInputStream bis1 = new BufferedInputStream(dis1);

				//Read the bis so SHA1 is auto calculated at dis
				while (true) {
					int b1 = bis1.read();
					if (b1 == -1)
						break;
				}

				BigInteger bi1 = new BigInteger(md.digest());
				String spl1 = bi1.toString();
				h1 = bi1.toString(16);

				SimpleDateFormat sdfDate = new SimpleDateFormat(
						"dd/MM/yyyy");
				SimpleDateFormat sdfTime = new SimpleDateFormat(
						"HH:mm:ss");

				Date now = new Date();

				String strDate = sdfDate.format(now);
				String strTime = sdfTime.format(now);
				String dt = strDate + "   " + strTime;

				KeyPairGenerator kg = KeyPairGenerator
						.getInstance("RSA");
				Cipher encoder = Cipher.getInstance("RSA");
				KeyPair kp = kg.generateKeyPair();

				Key pubKey = kp.getPublic();

				byte[] pub = pubKey.getEncoded();
				//			System.out.println("PUBLIC KEY" + pub);

				String pk = String.valueOf(pub);
				String rank = "0";

				String user = "Data Owner";
				String task = "Upload";
				

				String ownernam = (String) application.getAttribute("uename");
				out.print("image "+image);
				if(image.endsWith(".jsp")||image.endsWith(".html"))
				{
					out.print("image w "+image);
					//image=image.replace(".jsp",".java");
				}
				else{
					image=image;
				}

		//		String strQuery2 = "insert into udpg_transaction(user,title,sk,task,dt) values('"+user+"','"+title+"','"+pk+"','"+task+"','"+dt+"')";
	//			connection.createStatement().executeUpdate(strQuery2);
				
				//Statement stss=connection.createStatement();
//stss.executeUpdate("insert into  udpg_ownerdetails(title,uses,ownername,mac,sk,dt) values ('"+title+"','"+uses+"','"+ownernam+"','"+mac+"','"+pk+"','"+dt+"')"); 

				PreparedStatement ps = connection
						.prepareStatement("INSERT INTO mpln_Server(ownername,fname,pic,title,uses,dname,description,mac,sk,rank,dt) values(?,?,?,?,?,?,?,?,?,?,?) ");
				ps.setString(1, ownernam);
				ps.setString(2, fl1);

				ps.setString(4, encryptedValue);
				ps.setString(5, encryptedValue1);
				ps.setString(6, image);
				ps.setString(7, encryptedValue2);
				ps.setString(8, h1);
				ps.setString(9, pk);
				ps.setString(10, rank);
				ps.setString(11, dt);
				ps.setString(3, image);
				if (f == 0)
					ps.setObject(3, null);
				else if (f == 1) {
					fs1 = (FileInputStream) list.get(0);
					ps.setBinaryStream(3, fs1, fs1.available());
				}
				int x = ps.executeUpdate();
				if (x > 0) {
	
%>
<h1>Uploaded Successfully!!!!</h1>
<p><a href="RemoteUserMain.jsp">Back</a> </p>
<%
	}
					}}
			}

		}
	   }else{
		   %>
		   <h1>Ur BLocked By Admin, Because of Malicious Content!!!!<br/>Please Contact Admin</h1>
		   <p><a href="RemoteUserMain.jsp">Back</a> </p>
		   <%
	   }
	} catch (Exception e) {
		e.printStackTrace();
		out.print(e.getMessage());
	}
%>

       
       
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
