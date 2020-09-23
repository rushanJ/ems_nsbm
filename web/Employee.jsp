
<<<<<<< HEAD
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Employee Directory</h1>
        <div id="basic">
            <form action="employee.jsp"method="get"name=" searchform  "id="searchform   ">
                <input name="searchtext" id ="search text"</>
                <input type="button"values="search"id="searchBtn"></input>&nbsp;
                <a href ="addemployees.jsp">Add more Employees</a>
            </form>
        </div>
        
        <div id ="basic">
            <table id ="result -table"
                   <thread>
                       <tr>
                           <th>User Id</th>
                           <th>Nic</th>
                           <th>Epf No</th>
                           <th>Etf No<th>
                           <th>Name<th>
                           <th>Address Bank</th>
                           <th>Bank Account </th>
                           <th>Contact No</th>
                           <th>Th</th>
                           <th>Basic</th>
                           <th>DEpartment</th>
                           <th>Manager Email</th>
                           <th>Password</th>
                           <th>Role</th>
                       </tr>
                   </thead>
            </table>
                   
                       </div>
                       
                       
                           
                           
                      
                
            
    </body>
</html>
=======
<%@page import="Been.ResultSetToJsonMapper"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Been.Employee"%>
<jsp:include page="WEB-INF/CommenLayouts/Header.jsp"></jsp:include>
     <div class="w3-container">
<div class="w3-card-4">
  <div class="w3-container w3-black">
    <h2>New Allowance</h2>
  </div>
  <form class="w3-container w3-card-4 w3-light-grey"  action="NewEmployee.jsp" method="POST" >
  
  
    
    <input type="submit" class="w3-btn w3-black" value="Add"></p>
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
Employee employee = new Employee();
resultSet = employee.getEmployee();
  
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
>>>>>>> af251587573a4389a19f57f8b9d9fe5b7794c233
