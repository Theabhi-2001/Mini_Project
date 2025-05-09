<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Medical Store</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
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
            	<div class="content_left_section_title">Categories</div>
		<div class="content_left_section_content">
                    <ul>
                    	<li><a href="adminhome.jsp">Home</a></li>
                        <li><a href="viewusers.jsp">View Users</a></li>
                        <li><a href="vieworders.jsp">View Orders</a></li>
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
               <center><font  color="black" size="5">Users Details</font></p></center>
            <br><br>
    <%@page import="java.sql.*"%>
    <%@ page session="true" %>
    <%@ include file="connect.jsp" %>

    <%
        try {
        PreparedStatement ps = connection.prepareStatement("select * from user");
        ResultSet rs1 = ps.executeQuery();

    %>
    <center> <table border="2" width="80%">

                <tr style="background-color: graytext">
                <th><font color="black">prescription</th>
                <th><font color="black">Status</th>
                <th><font color="black">Activate</th>
                <th><font color="black">Deactivate</th>

            </tr>

            <%                while (rs1.next()) {
            %>

    <tr>
         <th><font color="black"><%=rs1.getString(9)%></th>
         <th><font color="black"><%=rs1.getString(10)%></th>
         <th><a href="activate.jsp?username=<%=rs1.getString("username")%>">Activate</a></th>
         <th><a href="deactivate.jsp?username=<%=rs1.getString("username")%>">Deactivate</a></th>
         </tr>
            <%
                }
                } catch (Exception e) {
                    e.printStackTrace();
                }

            %>
        </table>
    </center><br><br>
        <center>
        <input type="button" onclick="history.go(-1);" value="Back">
        </input></center>
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