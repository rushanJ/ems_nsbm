<%@page import="java.sql.ResultSet"%>
<%@page import="Been.PaySlip"%>
<jsp:include page="WEB-INF/CommenLayouts/Header.jsp"></jsp:include>
<div class="w3-container">
<div class="w3-card-4">
  <div class="w3-container w3-black">
    <h2>Pay Slip</h2>
  </div>
    </br>
  <form class="w3-container w3-card-4 w3-light-grey"  action="AllowanceServlet" method="POST" >
  <div class="w3-bar w3-card-4 w3-light-grey w3-padding">
    <input type="text" class="w3-bar-item w3-center  w3-input w3-white w3-mobile" placeholder="Search..">
    <button class="w3-bar-item w3-button w3-black w3-mobile">Go</button>
  </div>
  
  </br>
  <div class="w3-container">
  <table class="w3-table-all w3-hoverable">
    <thead>
      <tr class="w3-black">
        <th>ID</th>
        <th>Name</th>
      </tr>
    </thead>
     <%
try{
ResultSet resultSet = null;
PaySlip paySlip = new PaySlip();
resultSet = paySlip.getPaySlipOFEmployies();
  
 //System.out.println(resultSet.getInt("id"));
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getInt("id") %></td>
<td><%=resultSet.getString("name") %></td>
</tr>
<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>
  </table>
</div>

  </form>
    
      
<jsp:include page="WEB-INF/CommenLayouts/Footer.jsp"></jsp:include>