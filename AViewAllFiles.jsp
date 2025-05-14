<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@page import="org.json.simple.JSONObject"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>

<%

	JSONObject obj=new JSONObject();
	String  s77=null,s2=null, s3=null,s4=null,s5=null,s6=null,s66=null,s8=null,s9=null,s10=null,cid=null;
	String s1=null;
	String s7=null;
	int i=0;
	int k=0;

      	try 
	{

String decryptedValue1=null;
String decryptedValue2=null;
String decryptedValue0=null;

	   

	   ArrayList al = new ArrayList();

           
				String query="select * from mpln_server "; 
		           Statement st = connection.createStatement();
		           ResultSet rs=st.executeQuery(query);
		        
			while ( rs.next() )
			   {
				
				s2=rs.getString(2);//Owner Name
				s3=rs.getString(5);//Doc Title
				s4=rs.getString(6);//Uses
				s5=rs.getString(7);//doc name
				s6=rs.getString(8);// desc
				s7=rs.getString(11);// rank
				s8=rs.getString(12);// Up DT
				
				
							String keys = "ef50a0ef2c3e3a5f";
							byte[] keyValue = keys.getBytes();
							Key key = new SecretKeySpec(keyValue, "AES");
							Cipher c = Cipher.getInstance("AES");
							c.init(Cipher.DECRYPT_MODE, key);
							
             				
							decryptedValue0 = new String(Base64.decode(s3.getBytes()));
							decryptedValue1 = new String(Base64.decode(s4.getBytes()));
							decryptedValue2 = new String(Base64.decode(s6.getBytes()));
				
				          String dec=decryptedValue2.toLowerCase();
				
				
				

		s66="Owner Name="+s2+","+"Doc Title="+decryptedValue0+"***"+"Doc Uses="+decryptedValue1+"***"+"Doc Name="+s5+"***"+"Doc Rank="+s7+"***"+"Doc Date and Time="+s8+"***";
          		     al.add(s66);


				
 			
				}
	
	  obj.put("FDetails",al);
		
   	  out.print(obj);
    	
		}
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>



