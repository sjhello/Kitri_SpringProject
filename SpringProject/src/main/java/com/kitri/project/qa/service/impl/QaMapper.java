package com.kitri.project.qa.service.impl;

import java.util.ArrayList;

import com.kitri.project.qa.web.Qa;

public interface QaMapper {
	void insertQa(Qa q);
	ArrayList<Qa> selectQaList();
	Qa selectQa(int q_num);
	void updateQa(Qa q);
	void deleteQa(int q_num);
}
