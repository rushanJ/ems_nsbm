<%@page import="Been.Deductions"%>
<%@page import="java.sql.ResultSet"%>
<jsp:include page="WEB-INF/CommenLayouts/Header.jsp"></jsp:include>
     <div class="w3-container">
<div class="w3-card-4">
  <div class="w3-container w3-black">
    <h2>Deduction</h2>
  </div>
  <form class="w3-container w3-card-4 w3-light-grey" action="DeductionServlet" method="POST">
  <p><label>Add New Deduction</label>
  <input class="w3-input w3-border" name="name" type="text"></p>
  
    
    <button class="w3-btn w3-black">Add</button></p>
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
Deductions deduction = new Deductions();
resultSet = deduction.getDeductions();
  
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