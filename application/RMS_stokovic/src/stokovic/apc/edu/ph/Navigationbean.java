package sparks;
import javax.faces.bean.ManagedBean;

@ManagedBean
public class Navigationbean {

	public String manage() {
		return "Managerecord";
	}
	
	public String add() {
		return "Add";
	}
	
	
	public String edit() {
		return "Edit";
	}
	
	
	public String delete() {
		return "Delete";
	}
	
	
	public String Login() {
		return "Login";
	}
	public String submit() {
		return "Studenttable";
	}
	public String home() {
		return "Mainpage";
	}
	public String kokey() {
		return "Schedule";
	}
	
	public String addsched() {
		return "Addschedule";
	}
	public String sched() {
		return "Schedule";
	}
	
}
