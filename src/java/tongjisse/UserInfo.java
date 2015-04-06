/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tongjisse;

/**
 *
 * @author Liu
 * 本类用于储存用户信息
 * 
 */
public class UserInfo {
     private String name;
    private String password;
    public UserInfo(){
        name="";
        password="";
    }
    public String getName(){
        return name;
    }
    public void setName(String name) throws Exception {
        this.name = new String(name.getBytes("ISO-8859-1"),"UTF-8");
    }
    public String getPassword(){
        return password;
    }
    public void setPassword(String password) throws Exception {
        this.password = new String(name.getBytes("ISO-8859-1"),"UTF-8");
    }
}
