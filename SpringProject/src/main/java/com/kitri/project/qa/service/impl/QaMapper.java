package com.kitri.project.qa.service.impl;

import java.util.ArrayList;

import com.kitri.project.qa.web.Qa;

public interface QaMapper {
	ArrayList<Qa> selectQaList();
	Qa selectQa(int q_num);
	
	void insertQa(Qa q);
	
	void updateQa(Qa q);
	
	void deleteQa(int q_num);
}
