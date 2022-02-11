package kr.co.kosmo.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.AnswerVO;
import kr.co.kosmo.mvc.dto.SurveyVO;

@Repository
public class SurveyDaoImple implements SurveyDaoInter {
	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public void submitSuvey(AnswerVO vo) {
		ss.insert("survey.submit", vo);
	}

	@Override
	public SurveyVO getSuvey(int survey_idx) {
		return ss.selectOne("survey.get");
	}
}
