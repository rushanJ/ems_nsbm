/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Been;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import org.json.JSONException;

/**
 *
 * @author rusha
 */
public class Leave {

    /**
     * @return the type
     */
    public String getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * @return the requestedDate
     */
    public String getRequestedDate() {
        return requestedDate;
    }

    /**
     * @param requestedDate the requestedDate to set
     */
    public void setRequestedDate(String requestedDate) {
        this.requestedDate = requestedDate;
    }

    /**
     * @return the startDate
     */
    public String getStartDate() {
        return startDate;
    }

    /**
     * @param startDate the startDate to set
     */
    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    /**
     * @return the endDate
     */
    public String getEndDate() {
        return endDate;
    }

    /**
     * @param endDate the endDate to set
     */
    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * @return the remark
     */
    public String getRemark() {
        return remark;
    }

    /**
     * @param remark the remark to set
     */
    public void setRemark(String remark) {
        this.remark = remark;
    }

    /**
     * @return the employee
     */
    public String getEmployee() {
        return employee;
    }

    /**
     * @param employee the employee to set
     */
    public void setEmployee(String employee) {
        this.employee = employee;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }
    Statement st;
     ResultSet rs= null ;
    private String name;
    private String type;
    private String requestedDate;
    private String startDate;
    private String endDate;
    private String status;
    private String remark;
    private String employee;
    
    
    
    
    public boolean newLeave() throws JSONException{
        ConnectToDb();        
        System.out.println(name);
    String query = "INSERT INTO `empleave`(`id`, `type`, `startDate`, `endDate`, `status`, `remark`, `employee`) VALUES ('','"+getType()+"','"+getStartDate()+"','"+getEndDate()+"','"+getStatus()+"','"+getRemark()+"','"+getEmployee()+"')";
        System.out.println(query);
    try{
       System.out.println(" On Process ");
             st.executeUpdate(query);
             return true;
        } catch(SQLException ex){
           System.out.println(" Error Insertong ");
//           java.util.logging.Logger.getLogger(Employee.class.getName()).log(Level.SEVERE, null, ex);
          return false; 
       }       
    }
    
    public ResultSet getLeave() throws JSONException{
         
        ConnectToDb();        
        System.out.println(" Executing query ");
        String query = "SELECT * FROM `empleave`;";
         System.out.println(query);
        try{
            System.out.println(" On Process ");
             rs = st.executeQuery(query);
//             rs.next();
//             ResultSetToJsonMapper jsonMaper= new ResultSetToJsonMapper();
//            System.out.println(jsonMaper.mapResultSet(rs));
        System.out.println(rs);
             return rs;
        } catch(SQLException ex){
            System.out.println(" Error Insertong ");
           java.util.logging.Logger.getLogger(Employee.class.getName()).log(Level.SEVERE, null, ex);
            return rs; 
        }       
    }
    public ResultSet getLeaveById(String id) throws JSONException{
         
        ConnectToDb();        
        System.out.println(" Executing query ");
        String query = "SELECT * FROM `empleave` WHERE `employee`='"+id+"';";
         System.out.println(query);
        try{
            System.out.println(" On Process ");
             rs = st.executeQuery(query);
//             rs.next();
//             ResultSetToJsonMapper jsonMaper= new ResultSetToJsonMapper();
//            System.out.println(jsonMaper.mapResultSet(rs));
        System.out.println(rs);
             return rs;
        } catch(SQLException ex){
            System.out.println(" Error Insertong ");
           java.util.logging.Logger.getLogger(Employee.class.getName()).log(Level.SEVERE, null, ex);
            return rs; 
        }       
    }
    
    public ResultSet getWaitingLeave(String id) throws JSONException{
         
        ConnectToDb();        
        System.out.println(" Executing query ");
        String query = "SELECT * FROM `empleave` WHERE `status`='WAITING';";
         System.out.println(query);
        try{
            System.out.println(" On Process ");
             rs = st.executeQuery(query);
//             rs.next();
//             ResultSetToJsonMapper jsonMaper= new ResultSetToJsonMapper();
//            System.out.println(jsonMaper.mapResultSet(rs));
        System.out.println(rs);
             return rs;
        } catch(SQLException ex){
            System.out.println(" Error Insertong ");
           java.util.logging.Logger.getLogger(Employee.class.getName()).log(Level.SEVERE, null, ex);
            return rs; 
        }       
    }
    
    
    public void ConnectToDb() {
        Config config =new Config();
        try {
            System.out.println(" DB 1 ");
            Class.forName(config.getDriver());
            Connection con = DriverManager.getConnection(config.getUrl(),config.getUserName(),config.getPassword());
            System.out.println(" DB connected ");
          st=con.createStatement();
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(" DB connection error ");
            java.util.logging.Logger.getLogger(Employee.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
