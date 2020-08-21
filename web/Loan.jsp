<jsp:include page="WEB-INF/CommenLayouts/Header.jsp"></jsp:include>
</br><div class="w3-container" style="margin: 5px;">
<div class="w3-card-4">
  <div class="w3-container w3-black">
   <h2>Loan</h2>
  </div>  
<form class="w3-container w3-card-4 w3-light-grey" style="margin: 20px;">
    <div class="w3-row w3-section w3-half">
        <div class="w3-col" style="width:100px"><h6>ID  </h6></div>
        <div class="w3-rest">
          <input class="w3-input w3-border" style="width: 50%;" name="id" type="text" placeholder="ID">
        </div>
    </div>
    <div class="w3-row w3-section w3-half">
         <div class="w3-col" style="width:100px"><h6>Loan  </h6></div>
        <div class="w3-rest">
        <input class="w3-input w3-border" style="width: 50%;" name="loan" type="text" placeholder="Loan">
        </div>
    </div>
    <div  class="w3-row w3-section w3-half">
        <div class="w3-col" style="width:100px"><h6>Amount  </h6></div>
        <div class="w3-rest">
        <input class="w3-input w3-border" style="width: 50%;" name="amount" type="text" placeholder="Amount">
        </div>
    </div>
    
    <div class="w3-row w3-section w3-half">
        <div class="w3-col" style="width:100px"><h6>Payment Method</h6></div>
        <div class="w3-rest">
            <select name="Type" style="padding: 8px;" id="Type">
             <option value=""></option>
            <option value="Reducing Balance">Reducing Balance</option>
            <option value="Fixed">Equated Monthly Instalment</option>
          </select>
        </div>
        <button class="w3-button w3-black w3-right-align w3-right" style="margin: 20px;">ADD</button>
    </div>
    </br>
  <div class="w3-container">
  <table class="w3-table-all w3-hoverable">
    <thead>
      <tr class="w3-black">
          <th class="w3-center">ID</th>
        <th class="w3-center">Name</th>
        <th class="w3-center">ID</th>
        <th class="w3-center">Name</th>
      </tr>
    </thead>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
  </table>
</div>
</form>      

<jsp:include page="WEB-INF/CommenLayouts/Footer.jsp"></jsp:include>