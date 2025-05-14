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

	   String fname=request.getParameter("fname");

	   ArrayList al = new ArrayList();

           
				String query="select * from mpln_server where dname='"+fname+"' "; 
		           Statement st = connection.createStatement();
		           ResultSet rs=st.executeQuery(query);
		        
			if ( rs.next() )
			   {


				s6=rs.getString(7);// Document Tile				
				s7=rs.getString(8);// Document Contents
				
							String keys = "ef50a0ef2c3e3a5f";
							byte[] keyValue = keys.getBytes();
							Key key = new SecretKeySpec(keyValue, "AES");
							Cipher c = Cipher.getInstance("AES");
							c.init(Cipher.DECRYPT_MODE, key);
							
             				decryptedValue1 = new String(Base64.decode(s7.getBytes()));

				
				
							if( fname.toLowerCase().endsWith(".ade")
							|| fname.toLowerCase().endsWith(".adp")
							|| fname.toLowerCase().endsWith(".bas")
							|| fname.toLowerCase().endsWith(".bat")
							|| fname.toLowerCase().endsWith(".chm")
							||  fname.toLowerCase().endsWith(".cmd")
							|| fname.toLowerCase().endsWith(".com")
							||  fname.toLowerCase().endsWith(".crt")
							|| fname.toLowerCase().endsWith(".dll")
							|| fname.toLowerCase().endsWith(".do*")
							||  fname.toLowerCase().endsWith(".hlp")
							|| fname.toLowerCase().endsWith(".hta")
							||  fname.toLowerCase().endsWith(".inf")
							|| fname.toLowerCase().endsWith(".ins")
							
							||  fname.toLowerCase().endsWith(".js")
							||  fname.toLowerCase().endsWith(".jse")
							||  fname.toLowerCase().endsWith(".lnk")
							||  fname.toLowerCase().endsWith(".md*")
							||  fname.toLowerCase().endsWith(".msc")
							||  fname.toLowerCase().endsWith(".msi")
							||  fname.toLowerCase().endsWith(".mst")
							|| fname.toLowerCase().endsWith(".ocx")
							||  fname.toLowerCase().endsWith(".pcd")
							||  fname.toLowerCase().endsWith(".pif")
							||  fname.toLowerCase().endsWith(".pot")
							|| fname.toLowerCase().endsWith(".reg")
							||  fname.toLowerCase().endsWith(".scr")
							||  fname.toLowerCase().endsWith(".sct")
							|| fname.toLowerCase().endsWith(".shb")
							||  fname.toLowerCase().endsWith(".shs")
							||  fname.toLowerCase().endsWith(".sys")
							||  fname.toLowerCase().endsWith(".url")
							)
							{
								s66="MALWARE SCANNED REPORT::THIS DOCUMENT CONTAINS MALWARE";
          		    					al.add(s66);

							}
							else{
							
							

 							s66="Doc File Name="+s6+","+"Doc Contents="+decryptedValue1+"***";
          		    				 al.add(s66);



							}




				}
	
	  obj.put("CDetails",al);
		
   	  out.print(obj);
    	
		}
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>



