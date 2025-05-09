 <%@page import="java.sql.*"%>
    <%@ page session="true" %>
    <%@ include file="connect.jsp" %>
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
    <%
            String a = request.getParameter("username");
            String b = request.getParameter("mobile");
            String c = request.getParameter("prescription");
            String d = request.getParameter("address");
            String e = request.getParameter("sheets");
            
           PreparedStatement ps = connection.prepareStatement("select * from user where username = '"+a+"'");
        ResultSet rs1 = ps.executeQuery(); 
         
        if(rs1.next())
        
        {}
            
            
            %>
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
	<div id="content_right">
            <div class="right_col_section_w650">
                <center><div class="header_01">Exchange Order Details</div></center>
        <br>
   <div class="clr"></div>
          <center>
         <form action="exchangeact.jsp" method="post" >
       <center><table border="2" width="70%">
       <tr>
       <th style="background-color: grey" width="191" height="43"><font color="black">User Name </th>
       <th width="218"><input id="username" name="username" value="<%=a%>" required="" placeholder="User Name" /></th>
       </tr>
       <tr>
       <th style="background-color: grey" height="43"><font color="black">Mobile</th>
       <th><input id="mobile" name="mobile" required="" value="<%=b%>" placeholder="Mobile "/></th>
       </tr>
       <tr>
       <th style="background-color: grey" height="43"><font color="black"> prescription</th>
       <th><input id="email" name="prescription" required="" value="<%=rs1.getString("prescription")%>" placeholder="Email ID"/></th>
       </tr>
       <tr>
       <th style="background-color: grey" height="65"><font color="black">Address</th>
       <th><input id="address" name="address" required="" value="<%=d%>" placeholder="Address"></input></th>
       </tr>
       <tr>
       <th style="background-color: grey" height="43"><font color="black">No.of Sheets</th>
       <th><input  name="sheets" required="" value="<%=e%>"></input></th>
       </tr>
       </table>
           <br><br>
       <input name="submit" type="submit" value="Exchange" />
        </center></form>
                <div class="cleaner">&nbsp;</div>
            </div>
	<div class="margin_bottom_20">&nbsp;</div>
        </div> <!-- end of content right -->
        
        <div class="cleaner">&nbsp;</div>
	</div> <!-- end of container -->
</div> <!-- end of container -->
</body>
</html>