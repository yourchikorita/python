package com.springbook.view.board;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.ejcompany.myapp.board.BoardVO;
import com.ejcompany.myapp.board.impl.BoardDAO;

@Controller
@SessionAttributes("board")//model에 board라는 이름으로 저장되는 데이터가 있다면 그 데이터를 세션에 저장하라.
public class BoardController {

	@RequestMapping(value="/insertBoard.do")
	public String insertBoard(BoardVO vo,BoardDAO boardDAO) throws IOException {//매개변수 저절로 객체생성해줌
		
		//파일 업로드
		MultipartFile uploadFile = vo.getUploadFile();
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File("D:/"+ fileName));
		}
		
         boardDAO.insertBoard(vo);
         return "redirect:getBoardList.do";
	}   
	
    @RequestMapping("/updateBoard.do")
 	public String updateBoard(@ModelAttribute("board") BoardVO vo, BoardDAO boardDAO) {
    	System.out.println("작성자 이름 : "+vo.getWriter());
    	System.out.println("내용"+vo.getContent());
    	System.out.println("조회수"+vo.getCnt());
    	System.out.println("제목 :"+vo.getTitle());
    	System.out.println("등록일" + vo.getRegDate());
 		  boardDAO.updateBoard(vo);
 	      return "getBoardList.do";         
     }
    
    @RequestMapping("/deleteBoard.do")
	public String handleRequest(BoardVO vo ,BoardDAO boardDAO) {
         boardDAO.deleteBoard(vo);
		 return "getBoardList.do";
	}    
     
    @RequestMapping("/getBoard.do")
 	public String getBoard(BoardVO vo,BoardDAO boardDAO, Model model) {
 	     model.addAttribute("board",boardDAO.getBoard(vo));//board라는 이름으로 model저장 나중에 세션에서 사용
         return "getBoard.jsp";
     }
     
//    @RequestMapping("/getBoardList.do")
// 	public String getBoardList(@RequestParam(value="searchCondition",defaultValue="TITLE",required=false)
// 		   String condition, @RequestParam(value="searchKeyword", defaultValue="", required=false) 
// 		   String keyword, BoardVO vo, BoardDAO boardDAO,Model model) {
//    	
//    		System.out.println("검색 조건 :"+ condition +"단어:"+keyword);
//  	   model.addAttribute("boardList", boardDAO.getBoardList(vo)); 	// Model
//  		return "getBoardList.jsp";
// 	}
    @RequestMapping("/getBoardList.do")
 	public String getBoardList(BoardVO vo, BoardDAO boardDAO,Model model) {
    	//null check 검색안했을때 기본값 설정
    	if(vo.getSearchKeyword() != null) System.out.println("뭔가 검색하였다! 여기는 컨트롤러@");
    	if(vo.getSearchCondition() == null) vo.setSearchCondition("TITLE");
    	if(vo.getSearchKeyword() == null) vo.setSearchKeyword("");
    	
  	   model.addAttribute("boardList", boardDAO.getBoardList(vo)); 	// Model
  		return "getBoardList.jsp";
 	}
    
    @ModelAttribute("conditionMap")//가장먼저 실행
    public Map<String, String> searchConditionMap(){
    	System.out.println("======가장먼저실행되는 ModelAttribute");
    	Map<String,String> conditionMap = new HashMap<String,String>();
    	conditionMap.put("내용", "CONTENT");
    	conditionMap.put("제목", "TITLE");
    	
    	return conditionMap;//이 리턴값을 conditionMap이름으로 model 객체에 저장.
    }
    
    
   
}
