<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>
<%@page import="auction.Mail"%>
        <%
    //    String user = request.getParameter("username");
        String email = request.getParameter("email");
      //  String password = request.getParameter("password");
        String msg ="Order Rejected";
        String a = request.getParameter("username");
        String b = request.getParameter("mobile");
       // String c = request.getParameter("email");
        String d = request.getParameter("address");
       // String e = request.getParameter("sheets");
        String status = "conformed";
        try{
        
        Connection connection=Dbconnection.getConnection();
        Statement st = connection.createStatement();
        PreparedStatement pst2 = connection.prepareStatement("insert into orders values(?,?,?,?,?,?)");
        pst2.setString(1,a);
	pst2.setString(2,b);
        pst2.setString(3,email);
        pst2.setString(4,d);
        pst2.setString(5,d);
        pst2.setString(6,status);
        
        pst2.executeUpdate();
        
         
         Mail t= new Mail();
         t.secretMail(msg, email, email);
           response.sendRedirect("vieworders.jsp?m7=Failed");
        
            }
            catch(Exception ex)
        {
        System.out.println("Error in emplogact"+ex.getMessage());
        }
        %>