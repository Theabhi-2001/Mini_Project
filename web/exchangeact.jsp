<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@include file="connect.jsp" %>%>
<%@ page session="true" %>

<html>
<head>

</head>

<body>

<%
    String a = request.getParameter("username");
    String b = request.getParameter("mobile");
    String c = request.getParameter("prescription");
    String d = request.getParameter("address");
    String e = request.getParameter("sheets");
    try{
        PreparedStatement pst2 = connection.prepareStatement("insert into exchange values(?,?,?,?,?)");
        pst2.setString(1,a);
	pst2.setString(2,b);
        pst2.setString(3,c);
        pst2.setString(4,d);
        pst2.setString(5,e);
         pst2.executeUpdate();
         
         response.sendRedirect("order.jsp?m6=success");
         
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

</div>
</body>
</html>