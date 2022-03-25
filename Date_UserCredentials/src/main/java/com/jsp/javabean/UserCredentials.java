package com.jsp.javabean;

public class UserCredentials implements java.io.Serializable {
	private String userName = null;
	private String password = null;

	public UserCredentials() {
	}

	public String getuserName() {
		return userName;
	}

	public String getpassword() {
		return password;
	}

	public void setuserName(String userName) {
		this.userName = userName;
	}

	public void setpassword(String password) {
		this.password = password;
	}

}
