/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author duc
 */
public class User {
    int id;
    String username;

    public int getId() {
        return id;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", username=" + username + ", name=" + name + ", pass=" + pass + ", role=" + role + '}';
    }

    public void setId(int id) {
        this.id = id;
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

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }
    String name;

    public User(int id, String username, String name, String pass, int role) {
        this.id = id;
        this.username = username;
        this.name = name;
        this.pass = pass;
        this.role = role;
    }
    String pass;

    public User(String username, String name, String pass, int role) {
        this.username = username;
        this.name = name;
        this.pass = pass;
        this.role = role;
    }

    public User() {
    }
    int role;
}
