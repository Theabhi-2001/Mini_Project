 
<%@ include file="clientheader.jsp"%>
<%
           if (request.getParameter("msg1") != null) {%>
       <script>alert('File Succefully Uploaded');</script>
       <%}
        
       %>
                            
    <center><p><font size="6" color="black" > Upload File Here</p></center>

<form class="news-letter" action="Upload" method="post" enctype="multipart/form-data">
					<center> 
                        <form name="f2" action="Upload" method="post" enctype="multipart/form-data"style="margin-right:  50px">
                           <center>
<table align="center">
    
    
        <tr>
              <td>
                  
                  <tr>
              <td>
                  
               <td><strong><font size="3" color="black">File Name:</font></strong></td>
        
                <td><input type="text" name="fname" id="fname1" placeholder=FileName required style="height:30px; width:200px"> </input></td>
            
              </td>
        </tr>
        
       <tr>
              <td>
                <td><strong><font size="3" color="black">Project Name : </font></strong></td>
               <td><input type="text" name="projectname" id="projectname1" placeholder= ProjectName required style="height:30px; width:200px"></input></td> 
              </td>
        </tr>
         <tr>
              <td>
                  
               <td><strong><font size="3" color="black">Company Name:</font></strong></td>
        
                <td><input type="text" name="companyname" id="companyname1" placeholder=CompanyName required style="height:30px; width:200px"> </input></td>
            
              </td>
        </tr>
        
       <tr>
              <td>
                <td><strong><font size="3" color="black">Budget : </font></strong></td>
               <td><input type="text" name="budget" id="budget1" placeholder= Budget required style="height:30px; width:200px"></input></td> 
              </td>
        </tr>
        <tr>
              <td>
                <td><strong><font size="3" color="black">Resource : </font></strong></td>
               <td><input type="text" name="resource" id="resource1" placeholder= Resource required style="height:30px; width:200px"></input></td> 
              </td>
        </tr>
        <tr>
              <td>
                  <td><strong><font size="3" color="black">File Browse : </font></strong></td>
       <td> <input  type="file"  name="file" required style="height:30px; width:200px"></input></td>
        </td>
        </tr> 
        
         <tr>
              <td>
        
                  <td><br><input type="submit" value="Upload" style="height:30px; width:60px" />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <input type="reset" value="Reset" style="height:30px; width:50px" /></td>
                   </td>
          </tr>
          </table>
                  </form> 
                    </center>
    <br>
    </div>
		<!---End-wrap---->
		<!---start-footer---->
		<div class="footer">
			
		</div>
		<!---End-footer---->
	</body>
</html>