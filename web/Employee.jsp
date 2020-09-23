<<<<<<< HEAD

=======
>>>>>>> 23e89d0f46b4f691be33897a51c91cc3fe7c81f8
<%@page import="Been.ResultSetToJsonMapper"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Been.Employee"%>
<jsp:include page="WEB-INF/CommenLayouts/Header.jsp"></jsp:include>
     <div class="w3-container">
<div class="w3-card-4">
  <div class="w3-container w3-black">
    <h2>Employee</h2>
  </div>
  <form class="w3-container w3-card-4 w3-light-grey"  action="NewEmployee.jsp" method="POST" >
  
  
    
    <input type="submit" class="w3-btn w3-black" value="Add"></p>
  </br>
  <div class="w3-container">
  
    <thead>
      <tr class="w3-black">
                           <th>ID</th>
                           <th>NIC</th>
                           <th>EPF No</th>
                           <th>ETF No</th>
                           <th>Title</th>
                           <th>Name<th>
                           <th>Address</th>
                           <th>Bank</th>
                           <th>Bank Account </th>
                           <th>Contact No</th>
                           <th>Basic Salary</th>
                           <th>Department</th>
                           <th>Manager</th>
                           <th>Email</th>
                           <th>Password</th>
                           <th>Role</th>
                           <th>Status</th>
      </tr>
    </thead>
    <%
try{
ResultSet resultSet = null;
Employee employee = new Employee();
resultSet = employee.getEmployee();
  
 //System.out.println(resultSet.getInt("id"));
while(resultSet.next()){
%>

<td><%=resultSet.getInt("id") %></td>
<td><%=resultSet.getString("epfNo") %></td>
<td><%=resultSet.getString("etfNo") %></td>
<td><%=resultSet.getString("title") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("bank") %></td>
<td><%=resultSet.getInt("bankAccount") %></td>
<td><%=resultSet.getInt("contactNo") %></td>
<td><%=resultSet.getInt("basic") %></td>
<td><%=resultSet.getString("department") %></td>
<td><%=resultSet.getInt("manager") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("password") %></td>
<td><%=resultSet.getString("role") %></td>
<td><%=resultSet.getString("Status") %></td>


<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>
  
</div>

  </form>
    
      

<<<<<<< HEAD
<jsp:include page="WEB-INF/CommenLayouts/Footer.jsp"></jsp:include>
=======
<jsp:include page="WEB-INF/CommenLayouts/Footer.jsp"></jsp:include>
>>>>>>> 23e89d0f46b4f691be33897a51c91cc3fe7c81f8
