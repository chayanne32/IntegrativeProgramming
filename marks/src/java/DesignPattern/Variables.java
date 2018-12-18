/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DesignPattern;

import java.sql.*;

/**
 *
 * @author Libanan
 */
public class Variables {
    //FOR DB CONNECTION
    public Connection conn;
    public String link = "jdbc:mysql://localhost:3306/marks";
    public String user = "root";
    public String pass = "";
    
    //FOR SESSION
    public String id;
    public String name;
    
    //FOR QUERY
    public String qry;
    
    //FOR STUDENT AND INSTRUCTOR VARIABLES
    public String id_number;
    public String password;
    public String fname;
    public String mname;
    public String lname;
    public String degree;//instructor
    public String course;//student
    public String year;//student
    
    
    //FOR ADDING CLASSES
    public String subject;
    public String schedule;
    
    //FOR ADDING SUBJECTS
    public String course_code;
    public String description;
    public String units;
    
    //FOR FULLNAME
    public String fullname;
    
    //FOR Grading System
    public String class_id;
    public String type;
    public String percent;
    
    //FOR SCORES
    public String perfectscore;
    public String actualscore;
            
    
}
