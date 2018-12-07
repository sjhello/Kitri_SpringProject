package com.kitri.project.fitTest;

import java.util.ArrayList;

public interface FitTestService {
	void addFitTest(FitTest f);
	ArrayList<FitTest> getFitTest(String id);
	ArrayList<FitTest> getAll();
	void editFitTest(FitTest f);
	void delFitTest(int num);
}
