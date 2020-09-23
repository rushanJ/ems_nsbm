<%@page import="Been.Leave"%>
<%@page import="java.sql.ResultSet"%>
<jsp:include page="WEB-INF/CommenLayouts/Header.jsp"></jsp:include>


    <header class="w3-container" style="height: 60px;">
      <h2 class="w3-center">Dashboard</h2>
    </header>  
 <!--header end-->
 <form class="w3-container w3-light-grey" >
 <div class="w3-row-padding">
     
    <div class="w3-row w3-section">
<!--        <div style="margin:20px;display: inline-block;" id="square"><h5 style="">Medical</h5></div>
        <div style="margin:20px;display: inline-block;" id="square">Standard</div>
        <div style="margin:20px;display: inline-block;" id="square">Short Leave</div>
        <div style="margin:20px;display: inline-block;" id="square">Maternity</div>  -->







        <div class="w3-card-4" style="width:24%;display: inline-block;cursor: pointer;">
            <img src="./img/medical.png" alt="Alps" style="width: 100%;padding: 50px;" class="zoom">
            <footer class="w3-container w3-red w3-center">
            <h5>Medical</h5>
          </footer>
        </div>
        <div class="w3-card-4" style="width:24%;display: inline-block;cursor: pointer;">
          <img src="./img/standard.png" alt="Alps" style="width: 100%;padding: 50px;" class="zoom">
         <footer class="w3-container w3-blue w3-center">
            <h5>Standard</h5>
          </footer>
        </div>
        <div class="w3-card-4" style="width:24%;display: inline-block;cursor: pointer;">
          <img src="./img/shortleave.png" alt="Alps" style="width: 100%;padding: 50px;" class="zoom">
          <footer class="w3-container w3-deep-purple w3-center">
            <h5>Short Leave</h5>
          </footer>
        </div>
        <div class="w3-card-4" style="width:24%;display: inline-block;cursor: pointer;">
          <img src="./img/maternity.png" alt="Alps" style="width: 100%;padding: 50px;" class="zoom">
          <footer class="w3-container w3-pink w3-center">
            <h5>Maternity</h5>
          </footer>
        </div>
    </div>
   
    <div class="w3-row w3-section w3-third">
      
        <a href="AddLeave.jsp" class="w3-bar-item w3-button ">
            <button class="w3-button w3-ripple w3-teal">Add New Leave</button></a>
            
        <a href="PendingRequestLeave.jsp" class="w3-bar-item w3-button ">
            <button class="w3-button w3-ripple w3-teal">Pending Requests</button></a>
    </div>
     
     
 </div>
   
    <div class="w3-row-padding">
    <h3 class="w3-center">Recent Leaves</h3>
    
    <div class="w3-container">
  <table class="w3-table-all w3-hoverable">
    <thead>
      <tr class="w3-black">
                <th>Requested Date</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Type</th>
                <th>Reason</th>
      </tr>
    </thead><%
//allow access only if session exists

String userId = null;
if(session.getAttribute("userId") == null){
	response.sendRedirect("index.html");
}else userId = (String) session.getAttribute("userId");
%>

            <%
try{
ResultSet resultSet = null;
Leave leave = new Leave();
resultSet = leave.getLeaveById(userId);
  
 //System.out.println(resultSet.getInt("id"));
while(resultSet.next()){
%>
<tr>
         
              <td><%=resultSet.getString("requestedDate") %></td>
              <td><%=resultSet.getString("startDate") %></td>
              <td><%=resultSet.getString("endDate") %></td>
              <td><%=resultSet.getString("type") %></td>
              <td><%=resultSet.getString("remark") %></td>
                     </tr>
<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>
           
          </table>
    </div>
         </div>
    </div>
 </div>
  
 
   
 </div>
   
    </form>
    
<jsp:include page="WEB-INF/CommenLayouts/Footer.jsp"></jsp:include>