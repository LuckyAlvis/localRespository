package org.dai.service;

import java.util.List;

import org.dai.entity.Words;

public interface WordsService {
	void addWords(Words words);
	void deleteWordsByWordsID(int wordsID);
	int MaxID();
	List<Words> queryMyWords(int userID);
}
