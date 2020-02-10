package org.dai.entity;

public class Article {
	private int articleID;
	private String articleName;
	private String articleDescription;
	private String articleCategory;
	private int articleOwnerID;
	private String articleOwner;
	private int articlePrice;
	private String ariticlePicture;
	public Article() {
	}
	public Article(int articleID, String articleName, String articleDescription, String articleCategory,
			int articleOwnerID, String articleOwner, int articlePrice, String ariticlePicture) {
		super();
		this.articleID = articleID;
		this.articleName = articleName;
		this.articleDescription = articleDescription;
		this.articleCategory = articleCategory;
		this.articleOwnerID = articleOwnerID;
		this.articleOwner = articleOwner;
		this.articlePrice = articlePrice;
		this.ariticlePicture = ariticlePicture;
	}
	public int getArticleID() {
		return articleID;
	}
	public void setArticleID(int articleID) {
		this.articleID = articleID;
	}
	public String getArticleName() {
		return articleName;
	}
	public void setArticleName(String articleName) {
		this.articleName = articleName;
	}
	public String getArticleDescription() {
		return articleDescription;
	}
	public void setArticleDescription(String articleDescription) {
		this.articleDescription = articleDescription;
	}
	public String getArticleCategory() {
		return articleCategory;
	}
	public void setArticleCategory(String articleCategory) {
		this.articleCategory = articleCategory;
	}
	public int getArticleOwnerID() {
		return articleOwnerID;
	}
	public void setArticleOwnerID(int articleOwnerID) {
		this.articleOwnerID = articleOwnerID;
	}
	public String getArticleOwner() {
		return articleOwner;
	}
	public void setArticleOwner(String articleOwner) {
		this.articleOwner = articleOwner;
	}
	public int getArticlePrice() {
		return articlePrice;
	}
	public void setArticlePrice(int articlePrice) {
		this.articlePrice = articlePrice;
	}
	public String getAriticlePicture() {
		return ariticlePicture;
	}
	public void setAriticlePicture(String ariticlePicture) {
		this.ariticlePicture = ariticlePicture;
	}
	@Override
	public String toString() {
		return "articleID:"+this.articleID + "articleName:" + this.articleName + "articleDescription:" + this.articleDescription + "articleCategory:" + this.articleCategory + "articleOwnerID:" + this.articleOwnerID + "articleOwner:" + this.articleOwner + "articlePrice:" + this.articlePrice;
	}
}
