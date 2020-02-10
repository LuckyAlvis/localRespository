package org.dai.service.impl;

import java.util.List;

import org.dai.entity.Words;
import org.dai.mapper.WordsMapper;
import org.dai.service.WordsService;

public class WordsServiceImpl implements WordsService{

	private WordsMapper wordsMapper;
	
	public void setWordsMapper(WordsMapper wordsMapper) {
		this.wordsMapper = wordsMapper;
	}

	@Override
	public void addWords(Words words) {
		wordsMapper.addWords(words);
	}

	@Override
	public void deleteWordsByWordsID(int wordsID) {
		wordsMapper.deleteWordsByWordsID(wordsID);
	}

	@Override
	public int MaxID() {
		return wordsMapper.MaxID();
	}

	@Override
	public List<Words> queryMyWords(int userID) {
		return wordsMapper.queryMyWords(userID);
	}
	

}
