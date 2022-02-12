package kr.co.kosmo.mvc.dao;

import java.util.List;

import kr.co.kosmo.mvc.dto.AnswerVO;
import kr.co.kosmo.mvc.dto.SurveyResultVO;
import kr.co.kosmo.mvc.dto.SurveyVO;


public interface SurveyDaoInter {
	public void submitSuvey(AnswerVO vo);
	public SurveyVO getSuvey(int survey_idx);
	public List<SurveyResultVO> getList();
	public List<String> getKeys();
}
