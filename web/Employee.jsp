<%-- 
    Document   : Employee.jsp
    Created on : Sep 22, 2020, 8:29:43 PM
    Author     : BAWANTHI
--%>

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
