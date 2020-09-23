<%-- 
    Document   : Department.jsp
    Created on : Sep 22, 2020, 8:30:16 PM
    Author     : BAWANTHI
--%>

<<<<<<< HEAD
<%@page import="Been.ResultSetToJsonMapper"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Been.Department"%>
<jsp:include page="WEB-INF/CommenLayouts/Header.jsp"></jsp:include>
     <div class="w3-container">
<div class="w3-card-4">
  <div class="w3-container w3-black">
    <h2>New Department</h2>
  </div>
  <form class="w3-container w3-card-4 w3-light-grey"  action="DepartmentServlet" method="POST" >
  <p><label>Add New Department</label>
  <input class="w3-input w3-border" name="name" type="text"></p>
  
    
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
Department department = new Department();
resultSet = department.getDepartments();
  
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
=======
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Department page</title>
    </head>
    
        
                   
        <h1> Department Directory </h1>
        <div id ="basic">
            
            <form action =" department.jsp"method ="get "name="search form "id ="searchform"
            <input name ="secrchtext"id="search text"</>
                <input type="button "values="search"id=searchBtn"><?input>&nbsp:
                <a href ="adddepartment.jsp">Add departments</a>
                </form>
                </div>
               <div  id ="basic">
               <tableid ="result -table ">
               <thread>
               <tr>
               <th>Department Id</th>
               <th>Department Name</th>
               <th>Location</th>
               
               
                
            
        </div>
    
</html>
>>>>>>> 23e89d0f46b4f691be33897a51c91cc3fe7c81f8
