package kr.co.kosmo.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.kosmo.mvc.dao.SurveyDaoInter;
import kr.co.kosmo.mvc.dto.AnswerVO;
import kr.co.kosmo.mvc.dto.SurveyVO;

@Controller
public class SurveyController {
	@Autowired
	private SurveyDaoInter surveyDaoInter;
	
	@RequestMapping(value = "/survey")
	public String survey(Model m) {
		SurveyVO vo = surveyDaoInter.getSuvey(1);
		
		m.addAttribute("survey", vo);
		return "survey/surveyform";
	}
	

	  @PostMapping(value = "/submit") 
	  public String submit(Model m, AnswerVO vo) {
		  surveyDaoInter.submitSuvey(vo);
		  return "redirect:result"; 
	  }
	 
	
	@RequestMapping(value = "/result")
	public String result(Model m) {
		return "survey/result";
	}
	
	
}
