<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Medical Store</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
     <%
        if (request.getParameter("m6") != null) {%>
    <script>alert('Order Success');</script>
    <%}
        if (request.getParameter("m7") != null) {%>
    <script>alert('Rejected');</script> 

    <%}
    %>
<body>
<div id="templatemo_container">
	<div id="templatemo_header">
    	<div id="site_title_section">
        	<div id="site_title">
            	Online Medical Store
            </div>
            <div class="cleaner">&nbsp;</div>
        </div>
        
        <div id="header_section_code">
            <p><font size="6">Online Medical Store</font></p>
        </div>    
      </div> <!-- end of header -->
    
    <div id="templatemo_menu">
        <ul>
            <li><a href="adminhome.jsp" >Home</a></li>
            <li><a href="#" class="current">Admin</a></li>
            <li><a href="#">User</a></li>
        </ul>    	
    </div> <!-- end of menu -->
    
    <div id="templatemo_content">
        
        <div id="content_left">
            
            <div class="margin_bottom_20">&nbsp;</div>
        	<div class="content_left_section">
            	<div class="content_left_section_title">Admin Menu</div>
		<div class="content_left_section_content">
                    <ul>
                    	<li><a href="adminhome.jsp">Home</a></li>
                         <li><a href="addhospitals.jsp">Add Hospitals</a></li>
                        <li><a href="viewusers.jsp">View Users</a></li>
                        <li><a href="vieworders.jsp">View Orders</a></li>
                        <li><a href="adminexchange.jsp">Exchanged Orders</a></li>
                        <li><a href="logout.jsp">Logout</a></li>
                    </ul>
                </div>	
            	<div class="content_left_section_bottom">&nbsp;</div>
            </div>
            <div class="margin_bottom_20">&nbsp;</div>
            <div class="margin_bottom_20">&nbsp;</div>
        </div> <!-- end of content left -->
	<div id="content_right">
            <div class="right_col_section_w650">
                <center><div class="header_01">Order Details</div></center>
        <br>
    <%@page import="java.sql.*"%>
    <%@ page session="true" %>
    <%@ include file="connect.jsp" %>

    <%
        try {
        PreparedStatement ps = connection.prepareStatement("select * from medicine");
        ResultSet rs1 = ps.executeQuery();

    %>
        <center><table border="2" width="100%">
        <tr style="background-color: grey">
        <th><font color="black">User Name</th>
        <th><font color="black">Mobile</th>
        <th><font color="black"> Email ID</th>
      <th><font color="black"> Location</th>
        <th><font color="black">View Prescription</th>

            </tr>

            <%                while (rs1.next()) {
            %>

    <tr>
         <th><font color="black"><%=rs1.getString(1)%></th>
         <th><font color="black"><%=rs1.getString(2)%></th>
         <th><font color="black"><%=rs1.getString(3)%></th>
         <th><font color="black"><%=rs1.getString(4)%></th>
        
         <th><a href="vieworders2.jsp?username=<%=rs1.getString("username")%>&mobile=<%=rs1.getString("mobile")%>&email=<%=rs1.getString("email")%>&address=<%=rs1.getString("address")%>&data=<%=rs1.getString("image")%>">click here</a></th>
         <%--   <th><a href="conform.jsp?username=<%=rs1.getString("username")%>&mobile=<%=rs1.getString("mobile")%>&email=<%=rs1.getString("email")%>&address=<%=rs1.getString("address")%>&sheets=<%=rs1.getString("sheets")%>">Conform Order</a></th>
   

--%></tr>
            <%
                }
                } catch (Exception e) {
                    e.printStackTrace();
                }

            %>
            </table></center>
    </div>

                <div class="cleaner">&nbsp;</div>
            </div>
	<div class="margin_bottom_20">&nbsp;</div>
        </div> <!-- end of content right -->
        
        <div class="cleaner">&nbsp;</div>
	</div> <!-- end of container -->
</div> <!-- end of container -->
</body>
</html>