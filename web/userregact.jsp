<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@include file="connect.jsp" %>%>
<%@ page session="true" %>

<html>
<head>

</head>

<body>

<%
    String id = request.getParameter("id");
    String a = request.getParameter("username");
    String b = request.getParameter("password");
    String c = request.getParameter("email");
    String d = request.getParameter("dob");
    String e = request.getParameter("gender");
    String f = request.getParameter("address");
    String g = request.getParameter("mobile");
    String h = request.getParameter("prescription");
    String status="pending";
    try{
        PreparedStatement pst2 = connection.prepareStatement("insert into user values(?,?,?,?,?,?,?,?,?,?)");
        pst2.setString(1,id);
	pst2.setString(2,a);
        pst2.setString(3,b);
        pst2.setString(4,c);
        pst2.setString(5,d);
        pst2.setString(6,e);
         pst2.setString(7,f);
          pst2.setString(8,g);
           pst2.setString(9,h);
         pst2.setString(10,status);
         pst2.executeUpdate();
         
         response.sendRedirect("user.jsp?msg=success");
         
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

</div>
</body>
</html>