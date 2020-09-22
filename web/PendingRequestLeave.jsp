<jsp:include page="WEB-INF/CommenLayouts/Header.jsp"></jsp:include>
<!--Model box-->
 <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-animate-bottom w3-card-4">
        <header class="w3-container w3-text-white" style="background-image: linear-gradient(#4f5357, #5d6368);"> 
        <span onclick="document.getElementById('id01').style.display='none'" 
        class="w3-button w3-display-topright w3-xlarge">&times;</span>
        <h2>Reason</h2>
      </header>
      <div class="w3-container">
        <p>Cannot accept the leave due to a board meeting to be held on that day. All the members are compulsory to attend the meeting.</p>
        
      </div>
        <footer class="w3-container w3-light-grey"><br>
            <form action="#"><input type="submit" value="Submit" class="w3-button w3-round-xxlarge w3-green w3-hover-pale-green w3-right"></form><br><br><br>
      </footer>
    </div>
  </div>
<!--model box end-->
    <header class="w3-container" style="height: 60px;">
      <h2 class="w3-center">Pending Requests</h2>
    </header>
 <form class="w3-container w3-light-grey" >
 <div class="w3-row-padding">
    
    <div class="w3-row w3-section w3-third">
        <table class="w3-table-all w3-hoverable w3-reponsive">
            <thead>
              <tr class="w3-light-grey">
                <th>ID</th>
                <th>Employee Name</th>
                <th>Requested Date</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Type</th>
                <th>Reason</th>
                <th>Remaining</th>
                <th></th>
                <th></th>
              </tr>
            </thead>
            <tr>
              <td>102345</td>
              <td>Smith Perera</td>
              <td>2020.12.20</td>
              <td>2020.12.22</td>
              <td>2020.12.23</td>
              <td>Standard</td>
              <td>Function</td>
              <td>15</td>
              <td>
                  <form action="#"><input type="submit" value="Accept" class="w3-button w3-round-xxlarge w3-green w3-hover-pale-green"></form>
              </td>
              <td>
                  <form action="#"><input type="submit" value="Decline" class="w3-button w3-round-xxlarge w3-red w3-hover-pale-red" onclick="document.getElementById('id01').style.display='block'"></form>
              </td>
            </tr>
           <tr>
              <td>102345</td>
              <td>Smith Perera</td>
              <td>2020.12.20</td>
              <td>2020.12.22</td>
              <td>2020.12.23</td>
              <td>Standard</td>
              <td>Function</td>
              <td>15</td>
              <td>
                  <form action="#"><input type="submit" value="Accept" class="w3-button w3-round-xxlarge w3-green w3-hover-pale-green"></form>
              </td>
              <td>
                  <form action="#"><input type="submit" value="Decline" class="w3-button w3-round-xxlarge w3-red w3-hover-pale-red"></form>
              </td>
            </tr>
            <tr>
              <td>102345</td>
              <td>Smith Perera</td>
              <td>2020.12.20</td>
              <td>2020.12.22</td>
              <td>2020.12.23</td>
              <td>Standard</td>
              <td>Function</td>
              <td>15</td>
              <td>
                  <form action="#"><input type="submit" value="Accept" class="w3-button w3-round-xxlarge w3-green w3-hover-pale-green"></form>
              </td>
              <td>
                  <form action="#"><input type="submit" value="Decline" class="w3-button w3-round-xxlarge w3-red w3-hover-pale-red"></form>
              </td>
            </tr>
          </table>
    </div>
    
 </div>
    
    
    

    
    
    </form>
    
<jsp:include page="WEB-INF/CommenLayouts/Footer.jsp"></jsp:include>