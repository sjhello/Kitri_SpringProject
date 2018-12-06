package com.kitri.project.fitTest;

import java.util.ArrayList;

public interface FitTestService {
	void addFitTest(FitTest f);
	FitTest getFitTest(int num);
	ArrayList<FitTest> getAll();
	void editFitTest(FitTest f);
	void delFitTest(int num);
}
