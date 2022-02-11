package kr.co.kosmo.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.kosmo.mvc.dao.UpDemoDaoInter;
import kr.co.kosmo.mvc.dto.UploadDemoVO;

@Controller
public class UploadDemoController {
	
	@Autowired
	private UpDemoDaoInter upDemoDaoInter;
	
	@GetMapping("/upform")
	public String upform() {
		return "updemo/upform";
	}
	
	@PostMapping("/upload2")
	public String uploadFile(Model m, UploadDemoVO vo, HttpServletRequest request) {
		String img_path = "resources\\imgfile";
		String r_path = request.getRealPath("/");
		System.out.println("r_path:" + r_path);
		String oriFn = vo.getMfile().getOriginalFilename();
		System.out.println("oriFn ->"+oriFn);
		
		StringBuilder path = new StringBuilder();
		path.append(r_path).append(img_path).append("\\");
		path.append(oriFn);
		System.out.println("FullPath:"+path);
		long size = vo.getMfile().getSize();
		String ctype = vo.getMfile().getContentType();
		System.out.println("size :"+size);
		System.out.println("ctype :"+ctype);
		
		File f = new File(path.toString());
		
		try {
			vo.getMfile().transferTo(f);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		vo.setOrifile(oriFn);
		upDemoDaoInter.addUp(vo);
		
		return "redirect:updemoList";
	}
	
	@RequestMapping(value = "/updemoList")
	public String updemoList(Model m) {
		List<UploadDemoVO> list = upDemoDaoInter.getList();
		
		m.addAttribute("list", list);
		return "updemo/uplist";
	}
}
