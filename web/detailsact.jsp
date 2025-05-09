<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@include file="connect.jsp" %>%>
<%@ page session="true" %>



<%
    String a = request.getParameter("username");
    String b = request.getParameter("mobile");
    String c = request.getParameter("email");
    String d = request.getParameter("address");
    String e = "aa";
    String f = request.getParameter("image");
    String g = request.getParameter("medicine");
    //String h = request.getParameter("sheets");
    try{
        PreparedStatement pst2 = connection.prepareStatement("insert into medicine values(?,?,?,?,?,?,?)");
        pst2.setString(1,a);
	pst2.setString(2,b);
        pst2.setString(3,c);
        pst2.setString(4,d);
        pst2.setString(5,e);
         pst2.setString(6,f);
        pst2.setString(7,g);
         pst2.executeUpdate();
         
         response.sendRedirect("details.jsp?msg=success");
         
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

</div>
</body>
</html>