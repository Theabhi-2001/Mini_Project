<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>
<%@page import="auction.Mail1"%>
        <%
        String user = request.getParameter("username");
        String msg ="Exchanged Order Conformed,we will reach you shortly";
        String email=null;
        
        Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from user where username= '"+user+"'");
        if(rs.next())
        {
        email = rs.getString(4);
       }
        
        try{
        Mail1 t= new Mail1();
         t.secretMail(msg, email, email);
         response.sendRedirect("adminexchange.jsp?m6=success");
        
            }
            catch(Exception ex)
        {
        System.out.println("Error in emplogact"+ex.getMessage());
        }
        %>