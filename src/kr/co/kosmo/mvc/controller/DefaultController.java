package kr.co.kosmo.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DefaultController {

	@RequestMapping(value = "/")
	public String defIndex() {
		return "main/main";
	}
}
