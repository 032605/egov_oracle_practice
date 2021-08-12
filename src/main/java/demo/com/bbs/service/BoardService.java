package demo.com.bbs.service;

import java.util.List;

public interface BoardService {
	
	List<BoardVO> BoardList(BoardVO boardVO);
	
	 void Boardinsert(BoardVO boardVO);
		
}
