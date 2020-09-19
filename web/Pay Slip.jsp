<<<<<<< HEAD
<jsp:include page="WEB-INF/CommenLayouts/Header.jsp"></jsp:include>
<form class="w3-container w3-card-4 w3-light-grey" style="margin: 20px;">
 <div class="w3-card-4" style="width:100%; padding: 10px;">
    <header class="w3-container w3-black" style="height: 60px;">
      <h2 class="w3-center">Pay Slip</h2>
    </header>
 </div>
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
 </div>

    <div class="w3-container">
            <table class="w3-table-all">
              <tr>
                <td>Basic Salary</td>
                <td class="w3-right-align"><input class="w3-input w3-border" name="basic" type="text" placeholder="+ Basic Salary"></td>
              </tr>
              <tr>
                 <td>Allowance</td>
                <td class="w3-right-align"><input class="w3-input w3-border" name="allowance" type="text" placeholder="+ Allowance"></td>
              </tr>
              <tr>
                 <td>Deduction</td>
                <td class="w3-right-align"><input class="w3-input w3-border" name="deduction" type="text" placeholder="- Deduction"></td>
              </tr>
              <tr>
                 <td>Loan</td>
                <td class="w3-right-align"><input class="w3-input w3-border" name="loan" type="text" placeholder="- Loan"></td>
              </tr>
            </table>
          </div>
      <table class="w3-table-all" style="margin: 20px;" >
        <tr>
            <td><input class="w3-input w3-border"  style="margin: 10px;" name="netsal" type="text" placeholder="Net Salary"> </td>  
            <td><button class="w3-button w3-black w3-right" style="margin: 10px;">NET SALARY</button></td>
        </tr>
      </table>
</form>
    
    
  </br>
    </form>
    
=======
<jsp:include page="WEB-INF/CommenLayouts/Header.jsp"></jsp:include>
<form class="w3-container w3-card-4 w3-light-grey">
    <h2>Pay Slip</h2>
  Name:
  <input class="w3-input w3-border" name="last" type="text"></p>
  
  
    
    
  </br>
  

  </form>
    
>>>>>>> e333c8f203f01785992c71343de524933f5eb13b
<jsp:include page="WEB-INF/CommenLayouts/Footer.jsp"></jsp:include>