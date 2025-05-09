<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@include file="connect.jsp" %>%>
<%@ page session="true" %>


<%
    
    String a = request.getParameter("hname");
    String b = request.getParameter("cat");
    String c = request.getParameter("email");
   
    String d = request.getParameter("address");
    String e = request.getParameter("mobile");
   
   
    try{
        PreparedStatement pst2 = connection.prepareStatement("insert into hospitals values(?,?,?,?,?)");
        pst2.setString(1,a);
	pst2.setString(2,b);
        pst2.setString(3,c);
        pst2.setString(4,d);
        pst2.setString(5,e);
       
         pst2.executeUpdate();
         
         response.sendRedirect("addhospitals.jsp?msg=success");
         
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

