package kr.co.kosmo.mvc.controller;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.kosmo.mvc.dao.SurveyDaoInter;
import kr.co.kosmo.mvc.dto.AnswerVO;
import kr.co.kosmo.mvc.dto.SurveyResultVO;
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
		List<SurveyResultVO> list = surveyDaoInter.getList();
		List<String> keys = surveyDaoInter.getKeys();
		Map<String, SurveyResultVO> result = new HashMap<>();
		for(int i = 0; i < list.size(); i++) {
			result.put(keys.get(i), list.get(i));
		}
		
		m.addAttribute("result", result);
		return "survey/result";
	}
	
	
}
