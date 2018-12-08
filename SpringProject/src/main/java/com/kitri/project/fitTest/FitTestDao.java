package com.kitri.project.fitTest;

import java.util.ArrayList;

public interface FitTestDao {
	void insert(FitTest i);
	
	ArrayList<FitTest> select(String id);
	ArrayList<FitTest> selectAll();
	void update(FitTest i);
	void delete(int num);
}
