package egovframework.wini.edu.bbs.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.wini.edu.bbs.service.BbsListService;
import egovframework.wini.edu.bbs.service.Tcom_bbs;

@Service("BbsListService")
public class BbsListServiceImpl implements BbsListService {

	@Resource(name="bbsListDAO")
	private BbsListDAO bbsListDAO;
	
	@Override
	public List<Tcom_bbs> SelectBoardList(Tcom_bbs boardVO)  throws Exception {
		List<Tcom_bbs> BoardList = bbsListDAO.selectList("BbsListDAO.SelectBoardList",boardVO);
		System.out.println("--------BbsListServiceImpl------");
		return BoardList;
	}
	

}
