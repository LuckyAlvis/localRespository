package org.dai.entity;

public class User {
	private int userID;
	private String userName;
	private String userPsd;
	private String userSex;
	private String userPhone;
	public User() {
	}
	public User(int userID, String userName, String userPsd, String userSex, String userPhone) {
		super();
		this.userID = userID;
		this.userName = userName;
		this.userPsd = userPsd;
		this.userSex = userSex;
		this.userPhone = userPhone;
	}
	public User(String userName, String userPsd, String userSex, String userPhone) {
		super();
		this.userName = userName;
		this.userPsd = userPsd;
		this.userSex = userSex;
		this.userPhone = userPhone;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPsd() {
		return userPsd;
	}
	public void setUserPsd(String userPsd) {
		this.userPsd = userPsd;
	}
	public String getUserSex() {
		return userSex;
	}
	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	@Override
	public String toString() {
		return this.userID + "--" + this.userName + "--" + this.userPsd + "--" + this.userSex + "--" + this.userPhone + "\n";
	}
}
