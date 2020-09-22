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
public class Loan {


    /**
     * @return the Name
     */
    public String getName() {
        return name;
    }

    /**
     * @param Name the Name to set
     */
    public void setName(String Name) {
        this.name = Name;
    }
    
     Statement st;
     ResultSet rs= null ;
    private String name;
    
public boolean lone() throws JSONException{
        ConnectToDb();        
        System.out.println(name);
    String query = "INSERT INTO `allowance` (`id`, `name`) VALUES (NULL, '"+name+"');";
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
     public ResultSet getLone() throws JSONException{
         
        ConnectToDb();        
        System.out.println(" Executing query ");
        String query = "SELECT * FROM `lone`;";
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

    public boolean newLoan() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
