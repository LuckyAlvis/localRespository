package org.dai.mapper;

import java.util.List;

import org.dai.entity.Borrow;

public interface BorrowMapper {
	void addBorrow(Borrow borrow);
	void deleteBorrowByBorrowID(int borrowID);
	int MaxID();
	List<Borrow> queryBorrowsByUserID(int userID);
}
