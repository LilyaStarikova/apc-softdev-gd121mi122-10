package sparks;

import javax.faces.bean.ManagedBean;

@ManagedBean

public class Studentadd {

	
	private String firstname;
	private String lastname;
	private String address;
	private String gender;
	private int birthdate;
	private String birthmonth;
	private int birthyear;
	private int age;
	private int studentid;
	private int id;
	
	
	public Studentadd ()
	
	{
	
		
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


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public int getBirthdate() {
		return birthdate;
	}


	public void setBirthdate(int birthdate) {
		this.birthdate = birthdate;
	}


	public String getBirthmonth() {
		return birthmonth;
	}


	public void setBirthmonth(String birthmonth) {
		this.birthmonth = birthmonth;
	}


	public int getBirthyear() {
		return birthyear;
	}


	public void setBirthyear(int birthyear) {
		this.birthyear = birthyear;
	}
	
	public String add() {
		return "Student";
	}
	public String result() {
		return "Studenttable";
	}
	
	public String save ()
	{
		return "Adminpage";
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public int getStudentid() {
		return studentid;
	}


	public void setStudentid(int studentid) {
		this.studentid = studentid;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}
}
