package sparks;
import javax.faces.bean.ManagedBean;



@ManagedBean
public class Sparksbean {

	private String firstname;
	private String lastname;
	private String middlename;
	private String Address;
	private String country;
	private int Age;
	private String Gender;
	private int Birthdate;
	private String Birthmonth;
	private int Birthyear;
	private String Username;
	private String Password;
	private String contact;
	

	

	public Sparksbean () {
		
	}




	public String getFirstname() {
		return firstname;
	}




	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}




	public String getLastname() {
		return lastname;
	}




	public void setLastname(String lastname) {
		this.lastname = lastname;
	}




	public String getMiddlename() {
		return middlename;
	}




	public void setMiddlename(String middlename) {
		this.middlename = middlename;
	}




	public String getAddress() {
		return Address;
	}




	public void setAddress(String address) {
		Address = address;
	}




	public String getCountry() {
		return country;
	}




	public void setCountry(String country) {
		this.country = country;
	}




	public int getAge() {
		return Age;
	}




	public void setAge(int age) {
		Age = age;
	}




	public String getGender() {
		return Gender;
	}




	public void setGender(String gender) {
		Gender = gender;
	}




	public int getBirthdate() {
		return Birthdate;
	}




	public void setBirthdate(int birthdate) {
		Birthdate = birthdate;
	}




	public String getBirthmonth() {
		return Birthmonth;
	}




	public void setBirthmonth(String birthmonth) {
		Birthmonth = birthmonth;
	}




	public int getBirthyear() {
		return Birthyear;
	}




	public void setBirthyear(int birthyear) {
		Birthyear = birthyear;
	}




	public String getUsername() {
		return Username;
	}




	public void setUsername(String username) {
		Username = username;
	}




	public String getPassword() {
		return Password;
	}




	public void setPassword(String password) {
		Password = password;
	}




	public String getContact() {
		return contact;
	}




	public void setContact(String contact) {
		this.contact = contact;
	}
	public String createaccount() {
		return "Registration";
	}
	
	
	public String mainpage() {
		return "Sparkstrainingfacility";
	}
	

	public String login() {
		return "Login";
	}
	
	public String loginaccount() {
		return "Loginresponse";
	}
	
	public String logoutaccount() {
		return "Logoutresponse";
	}
	public String regresponse() {
		return "Registrationresponse";
	}
	public String add (){
		return "Studentadd";
	}
	public String save (){
		return "Adminpage";
	}
	public String adminpage (){
		return "Adminpage";
	}
}
