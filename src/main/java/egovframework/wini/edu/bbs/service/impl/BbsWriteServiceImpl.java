package egovframework.wini.edu.bbs.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.wini.edu.bbs.service.BbsWriteService;
import egovframework.wini.edu.bbs.service.Tcom_bbs;

@Service("BbsWriteService")
public class BbsWriteServiceImpl implements BbsWriteService {

	@Resource(name="BbsWriteDAO")
	private BbsWriteDAO bbsWriteDAO;
	
	
	@Override
	public void write(Map<String, Object> param) throws Exception  {
		System.out.println("---------BbsWriteServiceImpl------");
		bbsWriteDAO.insert("BbsWriteDAO.write",param);
	}

}
