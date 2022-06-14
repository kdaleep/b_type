package com.briskly.type.entities;

public class user
{
    private int ID;
    private String Username;
    private String Email;
    private String Password;  
    private String verifyPassword;

    public user(int ID, String Username, String Email, String Password, String verifyPassword)
    {
        this.ID = ID;
        this.Username = Username;
        this.Email = Email;
        this.Password = Password;
        this.verifyPassword = verifyPassword;
    }
    
    public user()
    {
    
    }

    public user(String Username, String Email, String Password, String verifyPassword) {
        this.Username = Username;
        this.Email = Email;
        this.Password = Password;
        this.verifyPassword = verifyPassword;
    }
    
    
    //getter and setters...

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getVerifyPassword() {
        return verifyPassword;
    }

    public void setVerifyPassword(String verifyPassword) {
        this.verifyPassword = verifyPassword;
    }
  
}
