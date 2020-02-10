package org.dai.mapper;

import java.util.List;

import org.dai.entity.Words;

public interface WordsMapper {
	void addWords(Words words);
	void deleteWordsByWordsID(int wordsID);
	int MaxID();
	List<Words> queryMyWords(int userID);
}
