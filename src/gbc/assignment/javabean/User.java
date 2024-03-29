package gbc.assignment.javabean;

import java.io.Serializable;

public class User implements Serializable{
	private static final long serialVersionUID = 1L;
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String role;
    
    public User() {
    	 firstName = "";
    	 lastName = "";
    	 email = "";
    	 password = "";
    	 role = "";
    	 
    	 }

    	 public User(String firstName, String lastName, String email,String password) {
    	 this.firstName = firstName;
    	 this.lastName = lastName;
    	 this.email = email;
    	 this.password = password;
    	 this.role = "client";
    	 }
    
	public String getRole() {
		return role;
	}
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

    
}
