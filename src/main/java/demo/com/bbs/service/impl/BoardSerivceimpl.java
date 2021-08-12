package demo.com.bbs.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import demo.com.bbs.service.BoardService;
import demo.com.bbs.service.BoardVO;
import demo.com.sql.CommonDAO;

@Service("BoardService")
public class BoardSerivceimpl implements BoardService{

	@Resource(name="commonDAO")
	private CommonDAO commondao;
	
	@Override
	public List<BoardVO> BoardList(BoardVO boardVO) {
		List<BoardVO> BoardList = commondao.selectList("BoardDAO.BoardList",boardVO);
		System.out.println("------------BoardService------");
		return BoardList;
	}
	
	@Override
	public void Boardinsert(BoardVO boardVO) {
		
	}
}
