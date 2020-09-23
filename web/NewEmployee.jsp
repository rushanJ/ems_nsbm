
<%@page import="Been.ResultSetToJsonMapper"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Been.Allowance"%>
<jsp:include page="WEB-INF/CommenLayouts/Header.jsp"></jsp:include>
     <div class="w3-container">
<div class="w3-card-4">
  <div class="w3-container w3-black">
    <h2>New Employee</h2>
  </div>
  <form class="w3-container w3-card-4 w3-light-grey"  action="EmployeeServlet" method="POST" >
  <p><label>nic</label>
  <input class="w3-input w3-border" name="nic" type="text"></p>
  
   <p><label>epfNo</label>
  <input class="w3-input w3-border" name="epfNo" type="text"></p>
   
    <p><label>etfNo</label>
  <input class="w3-input w3-border" name="etfNo" type="text"></p>
    
     <p><label>name</label>
  <input class="w3-input w3-border" name="name" type="text"></p>
     
      <p><label>address</label>
  <input class="w3-input w3-border" name="address" type="text"></p>
      
       <p><label>bank</label>
  <input class="w3-input w3-border" name="bank" type="text"></p>
       
        <p><label>bankAccount</label>
  <input class="w3-input w3-border" name="bankAccount" type="text"></p>
        
         <p><label>contactNo</label>
  <input class="w3-input w3-border" name="contactNo" type="text"></p>
         
          <p><label>title</label>
  <input class="w3-input w3-border" name="title" type="text"></p>
          
           <p><label>basic	</label>
  <input class="w3-input w3-border" name="basic" type="text"></p>
            <p><label>department</label>
  <input class="w3-input w3-border" name="department" type="text"></p>
             <p><label>manager</label>
  <input class="w3-input w3-border" name="manager" type="text"></p>
             
               <p><label>email</label>
  <input class="w3-input w3-border" name="email" type="text"></p>
               
                 <p><label>password</label>
  <input class="w3-input w3-border" name="password" type="text"></p>
                 
                 <p><label>role</label>
  <input class="w3-input w3-border" name="role" type="text"></p>
             
  
    
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
Allowance allowance = new Allowance();
resultSet = allowance.getAllowances();
  
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