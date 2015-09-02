package sparks;

import javax.faces.application.NavigationHandler;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import java.io.Serializable;

/**
 * Created by jacobcat on 8/28/2015.
 */
@ManagedBean
@SessionScoped
public class Sessionbean implements Serializable {
    // this is where we put all managed bean data
    // if you want to access this from another bean, use the @ManagedProperty attribute to reference this bean

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String loggedUserName;

    public String getLoggedUserName() {
        return loggedUserName;
    }

    public void setLoggedUserName(String loggedUserName) {
        this.loggedUserName = loggedUserName;
    }

    // This method is used for checking that the user has logged in.
    // This will automatically redirect the user to the login page if the session has expired
    public void checkLogin() {
        if(loggedUserName == null || loggedUserName.isEmpty()) {
            NavigationHandler navHandler = FacesContext.getCurrentInstance().getApplication().getNavigationHandler();
            navHandler.handleNavigation(FacesContext.getCurrentInstance(), null, "login?sessexp=true&faces-redirect=true");
        }
    }

    public String logout() {
        FacesContext.getCurrentInstance().getExternalContext().invalidateSession();
        return "login?logout=true&faces-redirect=true";
    }

}
