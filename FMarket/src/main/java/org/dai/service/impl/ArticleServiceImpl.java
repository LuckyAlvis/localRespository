package org.dai.service.impl;

import java.util.List;

import org.dai.entity.Article;
import org.dai.mapper.ArticleMapper;
import org.dai.service.ArticleService;

public class ArticleServiceImpl implements ArticleService {

	private ArticleMapper articleMapper;
	
	public void setArticleMapper(ArticleMapper articleMapper) {
		this.articleMapper = articleMapper;
	}

	public void addArticle(Article article) {
		articleMapper.addArticle(article);
	}

	public void deleteArticleByArticleID(int articleID) {
		articleMapper.deleteArticleByArticleID(articleID);
	}

	public Article queryArticleByArticleID(int articleID) {
		return articleMapper.queryArticleByArticleID(articleID);
	}

	public List<Article> queryArticles() {
		return articleMapper.queryArticles();
	}
	public int MaxID() {
		return articleMapper.MaxID();
	}
	public List<Article> queryArticlesByUserID(int userID){
		return articleMapper.queryArticlesByUserID(userID);
	}

	@Override
	public List<Article> queryMyBorrowByUserID(int userID) {
		
		return articleMapper.queryMyBorrowByUserID(userID);
	}
	
}
