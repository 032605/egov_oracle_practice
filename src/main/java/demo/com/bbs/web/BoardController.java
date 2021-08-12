package demo.com.bbs.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import demo.com.bbs.service.BoardService;
import demo.com.bbs.service.BoardVO;

@Controller
@SuppressWarnings({"rawtypes", "unchecked", "static-access"})
public class BoardController {
	
	@Resource(name="BoardService")
	private BoardService boardService;
	
	@RequestMapping("/BoardList.do")
	public String BoardList(@ModelAttribute("SerchVO") BoardVO boardVO, ModelMap model) throws Exception{
		System.out.println("------------BOARD CONTROLLER------");
		System.out.println("-----------------" + boardVO.getBbsId());

		List<BoardVO> boardList = boardService.BoardList(boardVO);
		
		model.addAttribute("result",boardList);

		System.out.println(boardList.get(1).getFrstRegisterPnttm());
		for(int i=0; i<boardList.size(); i++) {
		System.out.println("게시글 리스트  ::: 글 번호 :: " + boardList.get(i).getNttId());
		}
		
		return "demo/bbs/BoardList";
	}

}
