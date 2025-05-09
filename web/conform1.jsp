<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>
<%@page import="auction.Mail1"%>
        <%
        String user = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String msg ="Order Conformed,we will reach you shortly";
        try{
        
        Connection connection=Dbconnection.getConnection();
        Statement st = connection.createStatement();
        PreparedStatement pst2 = connection.prepareStatement("insert into orders values(?,?,?,?)");
        
        pst2.executeUpdate();
        
         
         Mail1 t= new Mail1();
         t.secretMail(msg, email, email);
           response.sendRedirect("adminexchange.jsp?m6=success");
        
            }
            catch(Exception ex)
        {
        System.out.println("Error in emplogact"+ex.getMessage());
        }
        %>