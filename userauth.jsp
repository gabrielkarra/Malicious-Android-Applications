<title>Authentication Page</title>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>

<%
	String name = request.getParameter("userid");
	String pass = request.getParameter("pass");

	try {
		application.setAttribute("uename", name);
		
		
		String sql1 = "SELECT * FROM mpln_blockeduser where uname='"+name+"' ";
		Statement stmt1 = connection.createStatement();
		ResultSet rs1 = stmt1.executeQuery(sql1);
		
		
		
		if (rs1.next()==true) {
		
		response.sendRedirect("BlockUser.html");
		
		}
		
		
		else if  (rs1.next()!=true) {
		
		String sql = "SELECT * FROM mpln_user where name='" + name
				+ "' and pass='" + pass + "' ";
		Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		
		String utype = "";
		if (rs.next()) {
			int i = rs.getInt(1);

			response.sendRedirect("RemoteUserMain.jsp");

		} else {
			response.sendRedirect("wronglogin.html");
		}
		
		}

	} 
	
	
	catch (Exception e) {
		out.print(e);
		e.printStackTrace();
	}
%>