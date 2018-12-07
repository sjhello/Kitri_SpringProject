package com.kitri.project.qa.service;

import java.util.ArrayList;

import com.kitri.project.qa.web.Qa;

public interface QaService {
	void insertQa(Qa q);
	ArrayList<Qa> selectQaList();
	Qa selectQa(int q_num);
	void updateQa(Qa q);
	void deleteQa(int q_num);
}
