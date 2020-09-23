
<%@page import="Been.ResultSetToJsonMapper"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Been.Attendence"%>
<jsp:include page="WEB-INF/CommenLayouts/Header.jsp"></jsp:include>
     <div class="w3-container">
<div class="w3-card-4">
  <div class="w3-container w3-black">
    <h2>Attendence</h2>
  </div>
  
  </br>
  <div class="w3-container">
  <table class="w3-table-all w3-hoverable">
    <thead>
      <tr class="w3-black">
        <th>ID</th>
        <th>Name</th>
        <th>Date</th>
        <th>In time</th>
        <th>Out Time</th>
      </tr>
    </thead>
    <%
try{
ResultSet resultSet = null;
Attendence allowance = new Attendence();
resultSet = allowance.getAttendence();
  
 //System.out.println(resultSet.getInt("id"));
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getInt("id") %></td>
<td><%=resultSet.getString("employee") %></td>
<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("inTiime") %></td>
<td><%=resultSet.getString("outTime") %></td>


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