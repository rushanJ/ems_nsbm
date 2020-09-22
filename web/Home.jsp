<jsp:include page="WEB-INF/CommenLayouts/Header.jsp"></jsp:include>
    
  <div class="w3-container">
  <h2>Allowances</h2>
  
<div class="w3-card-4">
  <div class="w3-container w3-black">
    <h2>New Allowance</h2>
  </div>
  <form class="w3-container" action="/action_page.php">
    <p>      
    <label class="w3-text-black"><b> Name</b></label>
    <input class="w3-input w3-border w3-sand" name="name" type="text"></p>
    <p>
    <button class="w3-btn w3-blaqqck">Add</button></p>
  </form>
    
      <div class="w3-container w3-black">
    <table class="w3-table-all">
    <thead>
      <tr class="w3-black">
        <th>First Name</th>
        <th>Last Name</th>
        <th>Points</th>
      </tr>
    </thead>
    <tr>
      <td>Jill</td>
      <td>Smith</td>
      <td>50</td>
    </tr>
    <tr>
      <td>Eve</td>
      <td>Jackson</td>
      <td>94</td>
    </tr>
    <tr>
      <td>Adam</td>
      <td>Johnson</td>
      <td>67</td>
    </tr>
  </table>
</div>

<jsp:include page="WEB-INF/CommenLayouts/Footer.jsp"></jsp:include>
