package kr.co.kosmo.mvc.dao;

import kr.co.kosmo.mvc.dto.AnswerVO;
import kr.co.kosmo.mvc.dto.SurveyVO;


public interface SurveyDaoInter {
	public void submitSuvey(AnswerVO vo);
	public SurveyVO getSuvey(int survey_idx);
}
