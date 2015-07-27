package stokovic.apc.edu.ph;

import javax.faces.bean.ManagedBean;

/**
 * Created by student on 7/24/2015.
 */
@ManagedBean

public class StokovicBeans {

    private String username, password, access;
    String a = "admin";

    private String firstname, lastname, newuser, newpass, confirmpass, birthmon, birthday, birthyear, gender;
    private String mobile, address;

    public String getUsername(){
        return(username);
    }

    public void setUsername(String username){
        this.username = username;
    }

    public String getPassword(){
        return(password);
    }

    public void setPassword(String password){
        this.password = password;
    }

    public String getAccess(){
        return(access);
    }

    public void setAccess(String access){
        this.access = access;
    }

    public String login(){
        if(username.equals(a)){
            return "admin.xhtml";
        }else {
            return "student.xhtml";
        }
    }
    public String createAcct(){
        return "register.xhtml";
    }

    public String enterGuest(){
        return "guest.xhtml";
    }

    public String getFirstname(){
        return(firstname);
    }

    public void setFirstname(String firstname){
        this.firstname = firstname;
    }

    public String getLastname(){
        return(lastname);
    }

    public void setLastname(String lastname){
        this.lastname = lastname;
    }

    public String getNewuser(){
        return(newuser);
    }

    public void setNewuser(String newuser){
        this.newuser = newuser;
    }

    public String getNewpass(){
        return(newpass);
    }

    public void setNewpass(String newpass){
        this.newpass = newpass;
    }

    public String getBirthmon(){
        return(birthmon);
    }

    public void setBirthmon(String birthmon){
        this.birthmon = birthmon;
    }

    public String getBirthday(){
        return(birthday);
    }

    public void setBirthday(String birthday){
        this.birthday = birthday;
    }

    public String getBirthyear(){
        return(birthyear);
    }

    public void setBirthyear(String birthyear){
        this.birthyear = birthyear;
    }

}
