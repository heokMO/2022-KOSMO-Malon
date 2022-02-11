package kr.co.kosmo.mvc.dao;



import java.util.List;

import kr.co.kosmo.mvc.dto.UploadDemoVO;

public interface UpDemoDaoInter {
	public void addUp(UploadDemoVO vo);
	public List<UploadDemoVO> getList();
	
}
