package org.dai.entity;

public class Borrow {
	private int borrowID;
	private int bID;
	private int bArticleID;
	private String bName;
	private int oID;
	private String oName;
	private int bDuration;
	private String bTime;

	public Borrow(int borrowID, int bID, int bArticleID, String bName, int oID, String oName, int bDuration,
			String bTime) {
		super();
		this.borrowID = borrowID;
		this.bID = bID;
		this.bArticleID = bArticleID;
		this.bName = bName;
		this.oID = oID;
		this.oName = oName;
		this.bDuration = bDuration;
		this.bTime = bTime;
	}
	public Borrow() {
	}
	public int getBorrowID() {
		return borrowID;
	}
	public void setBorrowID(int borrowID) {
		this.borrowID = borrowID;
	}
	public int getbID() {
		return bID;
	}
	public void setbID(int bID) {
		this.bID = bID;
	}

	public int getbArticleID() {
		return bArticleID;
	}
	public void setbArticleID(int bArticleID) {
		this.bArticleID = bArticleID;
	}

	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	public int getoID() {
		return oID;
	}
	public void setoID(int oID) {
		this.oID = oID;
	}
	public String getoName() {
		return oName;
	}
	public void setoName(String oName) {
		this.oName = oName;
	}
	public int getbDuration() {
		return bDuration;
	}
	public void setbDuration(int bDuration) {
		this.bDuration = bDuration;
	}
	public String getbTime() {
		return bTime;
	}
	public void setbTime(String bTime) {
		this.bTime = bTime;
	}
}
