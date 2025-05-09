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
    <script>alert('Activated Successfully');</script>
    <%}
        if (request.getParameter("m2") != null) {%>
    <script>alert('Login Failed');</script> 

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
                <center><div class="header_01"><font color="#ef4646">Order Details</font></div></center>
        <br>
    <%@page import="java.sql.*"%>
    <%@ page session="true" %>
    <%@ include file="connect.jsp" %>

    <%
    String username = request.getParameter("username");
    String data = request.getParameter("data");
    String mobile = request.getParameter("mobile");
    String email = request.getParameter("email");
    String address = request.getParameter("address");
    

    %>
        <center><table border="2" width="100%">
        <tr style="background-color: grey">
        <th><font color="black">Prescription</th>
         <th><font color="black">Confirm</th>
         <th><font color="black">Reject</th>

            </tr>

           
    <tr>
        <th><font color="black"><img src="Gallery/<%=data%>" height="200" width="300"></img></th>
         <th><a href="conform.jsp?username=<%=username%>&mobile=<%=mobile%>&email=<%=email%>&address=<%=address%>">Conform Order</a></th>
   <th><a href="reject.jsp?username=<%=username%>&mobile=<%=mobile%>&email=<%=email%>&address=<%=address%>&pres=<%=data%>">Reject Order</a></th>
   

</tr>
           
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