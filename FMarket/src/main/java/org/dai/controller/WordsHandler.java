package org.dai.controller;

import javax.servlet.http.HttpServletRequest;

import org.dai.entity.Words;
import org.dai.mapper.WordsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WordsHandler {
	
	@Autowired
	private WordsMapper wordsmapper;
	
	
	public void setWordsmapper(WordsMapper wordsmapper) {
		this.wordsmapper = wordsmapper;
	}

	@RequestMapping("LeaveWords.do")
	public String LeaveWords(HttpServletRequest request) {
		int maxID = wordsmapper.MaxID();
		Words words = new Words();
		words.setWordsID(maxID+1);
		words.setoID(Integer.parseInt(request.getParameter("oID")));
		words.setiID(Integer.parseInt(request.getParameter("iID")));
		words.setiName("iname");
		words.setoName("oname");
		words.setWordsContent(request.getParameter("words"));
		java.text.SimpleDateFormat df = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String add_time = df.format(new java.util.Date()).toString();// new Date()为获取当前系统时间
		words.setWordsTime(add_time);
		wordsmapper.addWords(words);
		return "/FleaMarket.jsp";
	}
	@RequestMapping("DeleteWords.do")
	public String DeleteWords(int wordsID){
		wordsmapper.deleteWordsByWordsID(wordsID);
		return "/MyNews.jsp";
	}
}
