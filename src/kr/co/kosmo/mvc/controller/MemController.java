package kr.co.kosmo.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.kosmo.mvc.dao.MemDAO;
import kr.co.kosmo.mvc.dto.MemVO;
import kr.co.kosmo.mvc.service.MemService;

@Controller
public class MemController {
	@Autowired
	private MemService  memService;
	
	
	@RequestMapping(value="/joinForm")
	public String showJoin(Model m) {
		return "member/memJoinForm";
	}
	
	@RequestMapping(value="/join")
	public String join(Model m, MemVO vo) {
		memService.joinIn(vo); 
		m.addAttribute("nick", vo.getMem_nick());
		return "member/joinSuccess";
		
	}
}
