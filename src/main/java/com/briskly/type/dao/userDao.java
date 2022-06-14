package com.briskly.type.dao;
import com.briskly.type.entities.user;
import java.sql.*;
public class userDao
{
    private Connection con;

    public userDao(Connection con)
    {
        this.con = con;
    }
    
    
    //method to insert user to data base:
     public boolean saveUser(user user)
     {
         boolean f=false;
         try 
         {          
             //user -->Database
             
             String query="insert into user(Username,Email,Password,Verify_password) values (?,?,?,?)";
             PreparedStatement pstmt=this.con.prepareStatement(query);
             pstmt.setString(1,user.getUsername());
             pstmt.setString(2,user.getEmail());
             pstmt.setString(3,user.getPassword());
             pstmt.setString(4,user.getVerifyPassword());
             pstmt.executeUpdate();
             f=true;
         } catch (Exception e) 
         {
             e.printStackTrace();
         }
         return f;
     }
     
     //get user by email and password
      public user getUserByEmailAndPassword(String email,String password)
      {
          user user=null;
          try
          {
           String query="select * from user where email=? and password=?";
           PreparedStatement pstmt=con.prepareStatement(query);
           pstmt.setString(1,email);
           pstmt.setString(2,password);
           ResultSet set=pstmt.executeQuery();
           if(set.next())
           {
               user=new user();
               String name=set.getString("Username");
               user.setUsername(name);
               user.setID(set.getInt("ID"));
               user.setEmail(set.getString("Email"));
               user.setPassword(set.getString("Password"));
           }
          } catch (Exception e)
          {
              e.printStackTrace();
          }
          return user;
      }
}
