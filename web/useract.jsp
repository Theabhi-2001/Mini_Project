<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>
        <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
       
        try{

        String user=null;
        Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from user where username= '"+username+"' and password='"+password+"' and status = 'Activated'");
        if(rs.next())
        {
        user = rs.getString(2);
        session.setAttribute("username",username);
        System.out.println("User:"+user);

        response.sendRedirect("userhome.jsp?m1=success");
        }
        else 
        {
        response.sendRedirect("user.jsp?m2=LoginFail");
        }
        }
        catch(Exception e)
        {
        System.out.println("Error in useract"+e.getMessage());
        }
        %>