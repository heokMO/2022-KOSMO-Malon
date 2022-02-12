package kr.co.kosmo.mvc.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.AnswerVO;
import kr.co.kosmo.mvc.dto.SurveyResultVO;
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

	@Override
	public List<SurveyResultVO> getList() {
		return ss.selectList("survey.result");
	}

	@Override
	public List<String> getKeys() {
		SurveyVO vo = ss.selectOne("survey.getKeys");
		List<String> keysList = new ArrayList<String>();
		keysList.add(vo.getAns1());
		keysList.add(vo.getAns2());
		keysList.add(vo.getAns3());
		keysList.add(vo.getAns4());
		return keysList;
	}
}
