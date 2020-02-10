package org.dai.service.impl;

import java.util.List;

import org.dai.entity.Borrow;
import org.dai.mapper.BorrowMapper;
import org.dai.service.BorrowService;

public class BorrowServiceImpl implements BorrowService{

	private BorrowMapper borrowMapper;
	
	
	public void setBorrowMapper(BorrowMapper borrowMapper) {
		this.borrowMapper = borrowMapper;
	}

	@Override
	public void addBorrow(Borrow borrow) {
		borrowMapper.addBorrow(borrow);
	}

	@Override
	public void deleteBorrowByBorrowID(int borrowID) {
		borrowMapper.deleteBorrowByBorrowID(borrowID);
	}

	@Override
	public int MaxID() {
		return borrowMapper.MaxID();
	}

	@Override
	public List<Borrow> queryBorrowsByUserID(int userID) {
		return borrowMapper.queryBorrowsByUserID(userID);
	}

	

}
