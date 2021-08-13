package egovframework.wini.edu.bbs.web;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.rte.fdl.cmmn.exception.FdlException;
import egovframework.wini.edu.bbs.service.BbsListService;
import egovframework.wini.edu.bbs.service.BbsWriteService;
import egovframework.wini.edu.bbs.service.Tcom_bbs;

@Controller
@SuppressWarnings({"rawtypes", "unchecked", "static-access"})
public class BbsWriteController {
	
	@Resource(name="BbsWriteService")
	private BbsWriteService bbsWriteService;
	
	
	//글 작성 화면
	@RequestMapping("BbsWrite.do")
	public String Board_Write(Model model) throws FdlException{
		
		// 작성 모드
		//model.addAttribute("mode", "write");
		
		
		return "egovframework/bbs/BbsWrite";
	}
	
	// 글 insert
	@RequestMapping("BbsWrite_Action.do")
	public String Board_Write_Action(@RequestParam Map<String, Object> param) throws Exception {
		
		System.out.println("------BbsWriteController-------");
		
		bbsWriteService.write(param);
		
		
		return "redirect:BbList.do";
	}

}
