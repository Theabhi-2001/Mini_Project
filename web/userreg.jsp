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
        if (request.getParameter("m1") != null) {%>
    <script>alert('Registration Success');</script>
    <%}
        if (request.getParameter("m2") != null) {%>
    <script>alert('Login  Failed');</script> 

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
            <li><a href="index.html" class="current">Home</a></li>
            <li><a href="admin.jsp">Admin</a></li>
            <li><a href="user.jsp">User</a></li>
        </ul>    	
    </div> <!-- end of menu -->
    
    <div id="templatemo_content">
        
        <div id="content_left">
            
            <div class="margin_bottom_20">&nbsp;</div>
        	<div class="content_left_section">
            	<div class="content_left_section_title">Categories</div>
		<div class="content_left_section_content">
                    <ul>
                    	<li><a href="index.html">Home</a></li>
                        <li><a href="admin.jsp">Admin</a></li>
                        <li><a href="user.jsp">User</a></li>
                    </ul>
                </div>	
            	<div class="content_left_section_bottom">&nbsp;</div>
            </div>
            <div class="margin_bottom_20">&nbsp;</div>
            <div class="margin_bottom_20">&nbsp;</div>
        </div> <!-- end of content left -->
	<div id="content_right">
          <div class="right_col_section_w650">
              <center><h2 class="title">User Registration</h2></center></br>
          <div class="clr"></div>
          <center>
         <form action="userregact.jsp" method="post" >
       <center><table border="2" width="70%">
       <tr>
       <th style="background-color: grey" width="191" height="43"><font color="black">User Name </th>
       <th width="218"><input id="username" name="username" required="" placeholder="User Name" /></th>
       </tr>
       <tr>
       <th style="background-color: grey" height="43"><font color="black">Password </th>
       <th width="218"><input type="password" id="password" name="password" required="" placeholder="Password" /></th>
       </tr>
       <tr>
       <th style="background-color: grey" height="43"><font color="black"> Email ID</th>
       <th><input id="email" name="email" required="" placeholder="Email ID"/></th>
       </tr>

       <tr>
       <th style="background-color: grey" height="43"><font color="black">Date Of Birth</th>
       <th><input type="date" name="dob" style="text-align:right" required="" ></th></label>
       </th>
       </tr>
       <tr>
       <th style="background-color: grey" height="43"><font color="black">Select Gender</th>
       <th><select id="s1" name="gender" style="width:170px;" required="">
       <option>--Select--</option>
       <option>MALE</option>
       <option>FEMALE</option>
       </select></th>
       </tr>
       <tr>
       <th style="background-color: grey" height="65"><font color="black">Address</th>
       <th><input id="address" name="address" required="" placeholder="Address"></input></th>
       </tr>
       <tr>
       <th style="background-color: grey" height="43"><font color="black">Mobile</th>
       <th><input id="mobile" name="mobile" required="" placeholder="Mobile "/></th>
       </tr>
       <tr>
       <th style="background-color: grey" height="43"><font color="black">Prescription</th>
       <th><textarea rows="3" cols="20" name="prescription" required="" ></textarea></th>
       </tr>
       </table>
           <br><br>
       <input name="submit" type="submit" value="Register" />
        </center></form>
                <div class="cleaner">&nbsp;</div>
            </div>
        </div> <!-- end of content right -->
        <div class="cleaner">&nbsp;</div>
	</div> <!-- end of container -->
</div> <!-- end of container -->

</body>
</html>