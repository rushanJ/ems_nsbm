<jsp:include page="WEB-INF/CommenLayouts/Header.jsp"></jsp:include>
<form class="w3-container w3-card-4 w3-light-grey" style="margin: 20px;">
 <div class="w3-card-4" style="width:100%; padding: 10px;">
    <header class="w3-container w3-black" style="height: 60px;">
      <h2 class="w3-center">Pay Slip</h2>
    </header>
 
 <div class="w3-row w3-section w3-right">
    <div class="w3-row w3-section w3-half">
        <div class="w3-col" style="width:100px"><h6>ID  </h6></div>
        <div class="w3-rest">
          <input class="w3-input w3-border" style="width: 50%;" name="id" type="text" placeholder="ID">
        </div>
    </div>
    <div class="w3-row w3-section w3-half">
         <div class="w3-col" style="width:100px"><h6>Month  </h6></div>
        <div class="w3-rest">
        <input class="w3-input w3-border" style="width: 50%;" name="date" type="text" placeholder="Month / Year">
        </div>
    </div>
    <div  class="w3-row w3-section w3-half">
        <div class="w3-col" style="width:100px"><h6>Name  </h6></div>
        <div class="w3-rest">
        <input class="w3-input w3-border" style="width: 50%;" name="name" type="text" placeholder="Name">
        </div>
    </div>
    
    <div class="w3-row w3-section w3-half">
        <div class="w3-col" style="width:100px"><h6>Department  </h6></div>
        <div class="w3-rest">
         <input class="w3-input w3-border" style="width: 50%;" name="department" type="text" placeholder="Department">
        </div>
    </div>
    <div class="w3-row w3-section w3-half">
        <div class="w3-col" style="width:100px"><h6>Worked Days  </h6></div>
        <div class="w3-rest">
        <input class="w3-input w3-border" style="width: 50%;" name="Worked Days" type="text" placeholder="Worked Days">
        </div>
    </div>
    <div class="w3-row w3-section w3-half">
        <div class="w3-col" style="width:100px"><h6>Account No  </h6></div>
        <div class="w3-rest">
        <input class="w3-input w3-border" style="width: 50%;" name="account_no" type="text" placeholder="Account Number">
        </div>
    </div>
    

    <div class="w3-container">
            <table class="w3-table-all">
              <tr>
                <td>Basic Salary</td>
                <td class="w3-right-align"><input class="w3-input w3-border" name="basic" type="text" placeholder="+ Basic Salary"></td>
              </tr>
              <tr>
                 <td>Allowance</td>
                <td class="w3-left-align">
                    <div class="w3-container">
                    <ol class="w3-ul w3-card-5">
                      <li class="w3-display-container">Car <span onclick="this.parentElement.style.display='none'" class="w3-button w3-transparent w3-display-right">&times;</span></li>
                      <li class="w3-display-container">Car <span onclick="this.parentElement.style.display='none'" class="w3-button w3-transparent w3-display-right">&times;</span></li>
                      <li class="w3-display-container">Add Allowance</li>
                    </ol>
                  </div>
                </td>
                    </td>
              </tr>
              <tr>
                 <td>Deduction</td>
                     <td class="w3-left-align">
                    <div class="w3-container">
                    <ol class="w3-ul w3-card-5">
                      <li class="w3-display-container">Car <span onclick="this.parentElement.style.display='none'" class="w3-button w3-transparent w3-display-right">&times;</span></li>
                      <li class="w3-display-container">Car <span onclick="this.parentElement.style.display='none'" class="w3-button w3-transparent w3-display-right">&times;</span></li>
                      <li class="w3-display-container">Add Deduction</li>
                    </ol>
                  </div>
                </td>
              </tr>
              <tr>
                 <td>Loan</td>
                     <td class="w3-left-align">
                    <div class="w3-container">
                    <ol class="w3-ul w3-card-5">
                      <li class="w3-display-container">Car <span onclick="this.parentElement.style.display='none'" class="w3-button w3-transparent w3-display-right">&times;</span></li>
                      <li class="w3-display-container">Car <span onclick="this.parentElement.style.display='none'" class="w3-button w3-transparent w3-display-right">&times;</span></li>
                      </ol>
                  </div>
                </td>
              </tr>
            </table>
          </div>
      <table class="w3-table-all">
        <tr>
            <td><input class="w3-input w3-border" style="margin: 20px;" name="netsal" type="text" placeholder="Net Salary"> </td>  
            <td><button class="w3-button w3-black w3-right-align w3-right" style="margin: 20px;">Conform</button></td>
        </tr>
</form>
    
    
  </br>
    </form>
    
<jsp:include page="WEB-INF/CommenLayouts/Footer.jsp"></jsp:include>