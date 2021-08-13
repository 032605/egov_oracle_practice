package egovframework.wini.edu.bbs.web;


import java.util.List;

import javax.annotation.Resource;
import org.springframework.ui.Model;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.rte.fdl.cmmn.exception.FdlException;
import egovframework.wini.edu.bbs.service.BbsListService;
import egovframework.wini.edu.bbs.service.Tcom_bbs;


@Controller
@SuppressWarnings({"rawtypes", "unchecked", "static-access"})
public class BbsListController {

	@Resource(name="BbsListService")
	private BbsListService bbsListService;
	
	
	@RequestMapping("/BbList.do")
	public String BoardList(@ModelAttribute("SerchVO") Tcom_bbs boardVO, ModelMap model) throws Exception {

		// 컨트롤러 확인
		System.out.println("---------BbsListController-------");
		
		List<Tcom_bbs> boardList = bbsListService.SelectBoardList(boardVO);
		
		model.addAttribute("result",boardList);

		System.out.println(boardList.get(1).getTitle());
//		for(int i=0; i<boardList.size(); i++) {
//		System.out.println("게시글 리스트  ::: 글 번호 :: " + boardList.get(i).getNttId());
//		}
		
		
		return "egovframework/bbs/BbsList";
	}
}
