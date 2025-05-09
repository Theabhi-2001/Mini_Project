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
        <%
        String username = session.getAttribute("username").toString();
%>
        <ul>
            <li><a href="userhome.jsp" >Home</a></li>
        <li><a href="#" class="current"><%=username%></a></li>
        <li><a href="user.jsp">Logout</a></li>
        </ul>    	
    </div> <!-- end of menu -->
    
    <div id="templatemo_content">
        
        <div id="content_left">
            
            <div class="margin_bottom_20">&nbsp;</div>
        	<div class="content_left_section">
            	<div class="content_left_section_title">User Menu</div>
		<div class="content_left_section_content">
                    <ul>
                    	<li><a href="userhome.jsp">Home</a></li>
                        <li><a href="search.jsp">Search Hospital</a></li>
                        <li><a href="details.jsp">Enter Details</a></li>
                        <li><a href="order.jsp">Conformed Orders</a></li>
                        <li><a href="logout.jsp">Logout</a></li>
                    </ul>
                </div>	
            	<div class="content_left_section_bottom">&nbsp;</div>
            </div>
            <div class="margin_bottom_20">&nbsp;</div>
            <div class="margin_bottom_20">&nbsp;</div>
        </div> <!-- end of content left -->
        <%
            String user = session.getAttribute("username").toString();
        %>
	<div id="content_right">
            <div class="right_col_section_w650">
                <center><div class="header_01">Welcome <%=user%></div></center>
                <br><br><br><br><br><br><br><br><br><br>

                <div class="cleaner">&nbsp;</div>
            </div>
	<div class="margin_bottom_20">&nbsp;</div>
        </div> <!-- end of content right -->
        
        <div class="cleaner">&nbsp;</div>
	</div> <!-- end of container -->
</div> <!-- end of container -->
</body>
</html>