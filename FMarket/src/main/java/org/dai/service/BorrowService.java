package org.dai.service;

import java.util.List;

import org.dai.entity.Article;
import org.dai.entity.Borrow;

public interface BorrowService {
	void addBorrow(Borrow borrow);
	void deleteBorrowByBorrowID(int borrowID);
	int MaxID();
	List<Borrow> queryBorrowsByUserID(int userID);
}
