	<%@ include file="connect.jsp" %>
 	<%
  		
   	try {
		   
		   String val=request.getParameter("val");
			
				String str = "Permitted";
				Statement st1 = connection.createStatement();
				String query1 ="update login set Permission='"+str+"' where username='"+val+"' ";
				st1.executeUpdate (query1);
				connection.close();
				response.sendRedirect("ViewAndroidUser.jsp");  
			
			
	   		
	   		
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		
	%>
