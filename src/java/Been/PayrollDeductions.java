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
 * @author Sewwandi
 */
public class PayrollDeductions {
    
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
     * @return the allowance
     */
    public String getDeduction() {
        return deduction;
    }

    /**
     * @param deduction the deduction to set
     */
    public void setDeduction(String deduction) {
        this.deduction = deduction;
    }

    /**
     * @return the ammount
     */
    public String getAmmount() {
        return ammount;
    }

    /**
     * @param ammount the ammount to set
     */
    public void setAmmount(String ammount) {
        this.ammount = ammount;
    }
    ResultSet rs= null ;
     Statement st;
    private String employee;
        private String deduction;
        private String ammount;

public boolean newDeductionForEmployee() throws JSONException{
        ConnectToDb();        
        
    String query = "INSERT INTO `employeededuction`(`id`, `employee`, `deduction`, `ammount`) VALUES (NULL, '"+getEmployee()+"', '"+getDeduction()+"', '"+getAmmount()+"');";
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
      public ResultSet getDeductionOFEmploies() throws JSONException{
        ConnectToDb();        
        System.out.println(" Executing query ");
        String query = "SELECT * FROM `employeededuction`;";
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

