<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.*,java.io.*,java.util.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Images</title>
</head>
<body>
<%
	int id =  Integer.parseInt(request.getParameter("imgid"));
	try{      
    	Class.forName("com.mysql.jdbc.Driver").newInstance();
    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Significant_Permission","root","root");      
    	Statement st=con.createStatement();
    	String strQuery = "select pic from mpln_server where id='"+id+"'" ;
// 		String strQuery = "select imagew from image where id=+id ORDER BY ";
    	ResultSet rs = st.executeQuery(strQuery);
	Blob b=null;
byte[] imgdata=null;
    	if(rs.next()){
	b= rs.getBlob(1);
imgdata=b.getBytes(1,(int)b.length());	
    	}
response.setContentType("image/gif");
OutputStream o = response.getOutputStream();
o.write(imgdata);
o.flush();
o.close();
		
	}catch (Exception e){
		e.printStackTrace();
	}
%>

</body>
</html>