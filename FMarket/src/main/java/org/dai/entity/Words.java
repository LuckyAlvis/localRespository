package org.dai.entity;

public class Words {
	private int wordsID;
	private int iID;
	private String iName;
	private int oID;
	private String oName;
	private String wordsContent;
	private String wordsTime;
	public Words() {
	}
	public Words(int wordsID, int iID, String iName, int oID, String oName, String wordsContent, String wordsTime) {
		super();
		this.wordsID = wordsID;
		this.iID = iID;
		this.iName = iName;
		this.oID = oID;
		this.oName = oName;
		this.wordsContent = wordsContent;
		this.wordsTime = wordsTime;
	}
	public int getWordsID() {
		return wordsID;
	}
	public void setWordsID(int wordsID) {
		this.wordsID = wordsID;
	}
	public int getiID() {
		return iID;
	}
	public void setiID(int iID) {
		this.iID = iID;
	}
	public String getiName() {
		return iName;
	}
	public void setiName(String iName) {
		this.iName = iName;
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
	public String getWordsContent() {
		return wordsContent;
	}
	public void setWordsContent(String wordsContent) {
		this.wordsContent = wordsContent;
	}
	public String getWordsTime() {
		return wordsTime;
	}
	public void setWordsTime(String wordsTime) {
		this.wordsTime = wordsTime;
	}
	
}
