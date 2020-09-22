<jsp:include page="WEB-INF/CommenLayouts/Header.jsp"></jsp:include>

 
    <header class="w3-container " style="height: 60px;">
      <h2 class="w3-center">Add Leave</h2>
    </header>
 <form class="w3-container w3-light-grey" >
 <div class="w3-row-padding">
    <div class="w3-row w3-section w3-third"> 
    </div>
    <div class="w3-row w3-section w3-third">
         <div class="w3-col" style="width:100px;"><h6>Type</h6></div>
        <div class="w3-rest">
         <select class="w3-select w3-border" name="option">
            <option value="" disabled selected>Choose Leave Type</option>
            <option value="1">Medical</option>
            <option value="2">Standard</option>
            <option value="3">Short Leave</option>
            <option value="4">Maternity</option>
         </select>
        </div>
    </div>
    <div class="w3-row w3-section w3-third">
    </div>
 </div>
    <div class="w3-row-padding">
    <div class="w3-row w3-section w3-third"> 
    </div>
    <div class="w3-row w3-section w3-third">
         <div class="w3-col" style="width:100px;"><h6>Start Date</h6></div>
        <div class="w3-rest">
        <input class="w3-border" type="date" id="sdate" name="sdate">
        </div>
    </div>
    <div class="w3-row w3-section w3-third">
    </div>
 </div>
    <div class="w3-row-padding">
    <div class="w3-row w3-section w3-third"> 
    </div>
    <div class="w3-row w3-section w3-third">
         <div class="w3-col" style="width:100px;"><h6>End Date</h6></div>
        <div class="w3-rest">
        <input class="w3-border" type="date" id="edate" name="edate">
        </div>
    </div>
    <div class="w3-row w3-section w3-third">
    </div>
 </div>
     <div class="w3-row-padding">
    <div class="w3-row w3-section w3-third"> 
    </div>
    <div class="w3-row w3-section w3-third">
         <div class="w3-col" style="width:100px;"><h6>Reason</h6></div>
        <div class="w3-rest">
        <textarea id="w3review" name="w3review" rows="4" cols="50">
        </textarea>
        </div>
    </div>
    <div class="w3-row w3-section w3-third">
    </div>
 </div>
      <div class="w3-row-padding">
    <div class="w3-row w3-section w3-half"> 
    </div>
    <div class="w3-row w3-section w3-third">
        <input type="submit" value="submit">
    </div>
    <div class="w3-row w3-section w3-half">
    </div>
 </div>

    
    
    </form>
    
<jsp:include page="WEB-INF/CommenLayouts/Footer.jsp"></jsp:include>