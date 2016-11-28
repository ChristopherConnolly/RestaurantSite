package business;

public class Customer {

    private String adminname = "";
    private String userName = "";
    private String password = "";
    
	public Customer(String userName, String password) {
		super();
		this.adminname = adminname;
		this.userName = userName;
		this.password = password;
	}

	public String getAdminname() {
		return adminname;
	}

	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
    

}