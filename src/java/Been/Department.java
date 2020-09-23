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
public class Department {

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
    public Department() {}
    Statement st;
     ResultSet rs= null ;
    private String name;
    
    public boolean newDepartment() throws JSONException{
        ConnectToDb();        
        System.out.println(getName());
    String query = "INSERT INTO `department` (`id`, `name`) VALUES (NULL, '"+getName()+"');";
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
     public ResultSet getDepartments() throws JSONException{
         
        ConnectToDb();        
        System.out.println(" Executing query ");
        String query = "SELECT * FROM `department`;";
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
