package com.kitri.project.qa11.service.impl;

import java.util.ArrayList;

import com.kitri.project.qa11.web.Qa11;

public interface Qa11Mapper {
	ArrayList<Qa11> selectQa11ListAdNot();
	ArrayList<Qa11> selectQa11List();
	ArrayList<Qa11> uaSelectQa(String id);
	ArrayList<Qa11> selectQa11Ad(int i);
	ArrayList<Qa11> adSelectQa11Id(String id);
	
	Qa11 selectQa11(int code);
	ArrayList<Qa11> selectQa11Id(String id);
	
	Qa11 detailQa11(int originNo);
	Qa11 detailAdQa11(int originNo);
	
	void insertQa11(Qa11 qa11);
	void insertAdQa11(Qa11 qa11);

	void updateQa11CheckTrue(int code);
	void updateQa11(Qa11 qa11);
	void updateupdateQa11CheckFalse(int code);

	void deleteQa11(int code);
	void uaDeleteQa11(int originNo);
}
