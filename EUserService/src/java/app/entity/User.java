/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.entity;

/**
 *
 * @author duc
 */
public class User {
    int userID;
    String username;

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public User(String username, String name, String password, int role) {
        this.username = username;
        this.name = name;
        this.password = password;
        this.role = role;
    }

    public User() {
    }

    public User(int userID, String username, String name, String password, int role) {
        this.userID = userID;
        this.username = username;
        this.name = name;
        this.password = password;
        this.role = role;
    }
    String name;
    String password;
    int role;
}
