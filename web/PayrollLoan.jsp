
<%@page import="Been.ResultSetToJsonMapper"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Been.PayrollLoan"%>
<jsp:include page="WEB-INF/CommenLayouts/Header.jsp"></jsp:include>
     <div class="w3-container">
<div class="w3-card-4">
  <div class="w3-container w3-black">
    <h2>Payroll Lone</h2>
  </div>
  <form class="w3-container w3-card-4 w3-light-grey"  action="PayrollLoanServlet" method="POST" >
  <p><label>Add New Loan FOR Employee </label>
 <select class="w3-select w3-border" name="employee">
    <option value="" disabled selected>Choose Employee</option>
    <%
try{
ResultSet resultSet = null;
Loan loan = new Loan();
resultSet = loan.getLoan();
  
 //System.out.println(resultSet.getInt("id"));
while(resultSet.next()){
%>
 <option value="<%=resultSet.getInt("id") %>"><%=resultSet.getString("name") %></option>
<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>
    
    <option value="1">Option 1</option>
    <option value="2">Option 2</option>
    <option value="3">Option 3</option>
  </select>
      
  <select class="w3-select w3-border" name="allowance">
    <option value="" disabled selected>Choose Allowance Type</option>
    <option value="1">Option 1</option>
    <option value="2">Option 2</option>
    <option value="3">Option 3</option>
  </select>
  
     <input class="w3-input w3-border w3-light-grey" name="ammount" placeholder= "Ammount" type="text">
     
    <input type="submit" class="w3-btn w3-black" value="Add"></p>
  </br>
  <div class="w3-container">
  <table class="w3-table-all w3-hoverable">
    <thead>
      <tr class="w3-black">
        <th>ID</th>
        <th>Name</th>
           <th>Amount </th>
      </tr>
    </thead>
    <%
try{
ResultSet resultSet = null;
PayrollLoan loan = new PayrollLoan();
resultSet = loan.getLoanOFEmploies();
  
 //System.out.println(resultSet.getInt("id"));
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getInt("id") %></td>
<td><%=resultSet.getString("employee") %></td>
<td><%=resultSet.getString("ammount") %></td>
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