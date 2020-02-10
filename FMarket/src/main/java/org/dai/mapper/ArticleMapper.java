package org.dai.mapper;

import java.util.List;

import org.dai.entity.Article;

public interface ArticleMapper {
	void addArticle(Article article);
	void deleteArticleByArticleID(int articleID);
	Article queryArticleByArticleID(int articleID);
	List<Article> queryArticles();
	int MaxID();
	List<Article> queryArticlesByUserID(int userID);
	List<Article> queryMyBorrowByUserID(int userID);
}
