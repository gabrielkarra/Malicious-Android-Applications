<title>Authentication Page</title>
<%@ include file="connect.jsp"%>
<%@ page import="java.util.Date"%>
<%
   	String name=request.getParameter("userid");      
   	String pass=request.getParameter("pass");
	String cname=request.getParameter("cname");
    try{
			application.setAttribute("onname",name);
			
			String sql="SELECT * FROM mpln_admin where name='"+name+"' and pass='"+pass+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			String utype="";
			if(rs.next()){
				
								response.sendRedirect("AdminMain.jsp");
				
			}
			else
			{
				response.sendRedirect("wronglogin.html");
			}
		
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>