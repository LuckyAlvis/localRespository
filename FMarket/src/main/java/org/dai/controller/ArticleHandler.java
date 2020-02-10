package org.dai.controller;

import java.util.List;

import org.dai.entity.Article;
import org.dai.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.cj.Session;

@Controller
public class ArticleHandler {
	@Autowired
	private ArticleService articleService;
	

	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}
	public List<Article> queryArticles1(){
		return articleService.queryArticles();
	}
	@RequestMapping("Article.do")
	public String queryArticles(Model model) {
		List<Article> listArticles = articleService.queryArticles();
		for(int i = 0;i<listArticles.size();i++) {
			System.out.println(listArticles.get(i).toString());
		}
		
		model.addAttribute("Articles", articleService.queryArticles());
		return "/FleaMarket.jsp";
	}
	@RequestMapping("Launch.do")
	public String LaunchArticle(Article article) {
		System.out.println(article.toString());
		articleService.addArticle(article);
		return "/MyArticles.jsp";
	}
	@RequestMapping("Details.do/{articleID}")
	public String Details(@PathVariable("articleID") int articleID) {
		System.out.println(articleID);
//		Article article = articleService.queryArticleByArticleID(articleID);
//		System.out.println(article.toString());
		return "/Details.jsp";
	}
//	@RequestMapping("Details.do")
//	ModelAndView Details(int articleID) {
//		System.out.println(articleID);
//		ModelAndView mv = new ModelAndView("/Details.jsp");
//		Article article = articleService.queryArticleByArticleID(articleID);
////		mv.addObject("article", article);
//		System.out.println(article.toString());
//		return mv;
//	}
//	@RequestMapping("QueryMyArticles.do")
//	public String QueryMyArticles() {
//		return "/MyArticles.jsp";
//	}
	@RequestMapping("Delete.do")
	public String Delete(int articleID) {
		System.out.println(articleID);
		articleService.deleteArticleByArticleID(articleID);
		return "/MyArticles.jsp";
	}
	
	
}
