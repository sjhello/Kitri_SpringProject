package com.kitri.project.qa.service;

import java.util.ArrayList;

import com.kitri.project.qa.web.Qa;

public interface QaService {
	ArrayList<Qa> selectQaList();
	Qa selectQa(int q_num);
	
	void insertQa(Qa q);
	
	void updateQa(Qa q);
	
	void deleteQa(int q_num);
	
	int countQaList();
	
	ArrayList<Qa> listAll(int start, int end);
}
