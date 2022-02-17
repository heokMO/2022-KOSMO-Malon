package kr.co.kosmo.mvc.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@GetMapping(value="/memIdchk")
	@ResponseBody
	public int memIdchk(Model m,@Param("mem_acc_id") String mem_acc_id) {
		int result = memService.memIdchk(mem_acc_id);
		return result;
	}
}
