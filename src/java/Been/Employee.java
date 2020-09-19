<<<<<<< HEAD
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
import java.util.logging.Logger;
import org.json.JSONException;

/**
 *
 * @author rusha
 */
public class Employee {

    /**
     * @return the nic
     */
    public String getNic() {
        return nic;
    }

    /**
     * @param nic the nic to set
     */
    public void setNic(String nic) {
        this.nic = nic;
    }

    /**
     * @return the epfNo
     */
    public String getEpfNo() {
        return epfNo;
    }

    /**
     * @param epfNo the epfNo to set
     */
    public void setEpfNo(String epfNo) {
        this.epfNo = epfNo;
    }

    /**
     * @return the etfNo
     */
    public String getEtfNo() {
        return etfNo;
    }

    /**
     * @param etfNo the etfNo to set
     */
    public void setEtfNo(String etfNo) {
        this.etfNo = etfNo;
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

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the bank
     */
    public String getBank() {
        return bank;
    }

    /**
     * @param bank the bank to set
     */
    public void setBank(String bank) {
        this.bank = bank;
    }

    /**
     * @return the bankAccount
     */
    public int getBankAccount() {
        return bankAccount;
    }

    /**
     * @param bankAccount the bankAccount to set
     */
    public void setBankAccount(int bankAccount) {
        this.bankAccount = bankAccount;
    }

    /**
     * @return the contactNo
     */
    public int getContactNo() {
        return contactNo;
    }

    /**
     * @param contactNo the contactNo to set
     */
    public void setContactNo(int contactNo) {
        this.contactNo = contactNo;
    }

    /**
     * @return the gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * @param gender the gender to set
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @return the basic
     */
    public float getBasic() {
        return basic;
    }

    /**
     * @param basic the basic to set
     */
    public void setBasic(float basic) {
        this.basic = basic;
    }

    /**
     * @return the department
     */
    public int getDepartment() {
        return department;
    }

    /**
     * @param department the department to set
     */
    public void setDepartment(int department) {
        this.department = department;
    }

    /**
     * @return the manager
     */
    public int getManager() {
        return manager;
    }

    /**
     * @param manager the manager to set
     */
    public void setManager(int manager) {
        this.manager = manager;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the role
     */
    public String getRole() {
        return role;
    }

    /**
     * @param role the role to set
     */
    public void setRole(String role) {
        this.role = role;
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
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }
    Statement st;
     ResultSet rs ;
    private String nic;
    private String epfNo;
    private String etfNo;
    private String name;
    private String address;
    private String bank;
    private int bankAccount;
    private int contactNo;
    private String gender;
    private String title;
    private float basic;
    private int department;
    private int manager;
    private String email;
    private String password;
    private String role;
    private String status;
    private int id;
    
    public Employee(){
        
    }
    
    public boolean auth() throws JSONException{
        ConnectToDb();        
        System.out.println(" Executing query ");
        String query = "SELECT * FROM `employee` WHERE `email`='"+email+"' AND `password`='"+password+"';";
         System.out.println(query);
        try{
            System.out.println(" On Process ");
             rs = st.executeQuery(query);
             rs.next();
             ResultSetToJsonMapper jsonMaper= new ResultSetToJsonMapper();
            System.out.println(jsonMaper.mapResultSet(rs));
             return true;
        } catch(SQLException ex){
            System.out.println(" Error Insertong ");
           java.util.logging.Logger.getLogger(Employee.class.getName()).log(Level.SEVERE, null, ex);
            return false; 
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
=======
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Been;

/**
 *
 * @author rusha
 */
public class Employee {

    /**
     * @return the nic
     */
    public String getNic() {
        return nic;
    }

    /**
     * @param nic the nic to set
     */
    public void setNic(String nic) {
        this.nic = nic;
    }

    /**
     * @return the epfNo
     */
    public String getEpfNo() {
        return epfNo;
    }

    /**
     * @param epfNo the epfNo to set
     */
    public void setEpfNo(String epfNo) {
        this.epfNo = epfNo;
    }

    /**
     * @return the etfNo
     */
    public String getEtfNo() {
        return etfNo;
    }

    /**
     * @param etfNo the etfNo to set
     */
    public void setEtfNo(String etfNo) {
        this.etfNo = etfNo;
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

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the bank
     */
    public String getBank() {
        return bank;
    }

    /**
     * @param bank the bank to set
     */
    public void setBank(String bank) {
        this.bank = bank;
    }

    /**
     * @return the bankAccount
     */
    public int getBankAccount() {
        return bankAccount;
    }

    /**
     * @param bankAccount the bankAccount to set
     */
    public void setBankAccount(int bankAccount) {
        this.bankAccount = bankAccount;
    }

    /**
     * @return the contactNo
     */
    public int getContactNo() {
        return contactNo;
    }

    /**
     * @param contactNo the contactNo to set
     */
    public void setContactNo(int contactNo) {
        this.contactNo = contactNo;
    }

    /**
     * @return the gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * @param gender the gender to set
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @return the basic
     */
    public float getBasic() {
        return basic;
    }

    /**
     * @param basic the basic to set
     */
    public void setBasic(float basic) {
        this.basic = basic;
    }

    /**
     * @return the department
     */
    public int getDepartment() {
        return department;
    }

    /**
     * @param department the department to set
     */
    public void setDepartment(int department) {
        this.department = department;
    }

    /**
     * @return the manager
     */
    public int getManager() {
        return manager;
    }

    /**
     * @param manager the manager to set
     */
    public void setManager(int manager) {
        this.manager = manager;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the role
     */
    public String getRole() {
        return role;
    }

    /**
     * @param role the role to set
     */
    public void setRole(String role) {
        this.role = role;
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
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }
    
    private String nic;
    private String epfNo;
    private String etfNo;
    private String name;
    private String address;
    private String bank;
    private int bankAccount;
    private int contactNo;
    private String gender;
    private String title;
    private float basic;
    private int department;
    private int manager;
    private String email;
    private String password;
    private String role;
    private String status;
    private int id;
    
    public Employee(){
        
    }
    
    public boolean auth(){
        return true;
    }
    
}
>>>>>>> d1cf4124232cfe7adb6cec43d69d900e7c897fde
