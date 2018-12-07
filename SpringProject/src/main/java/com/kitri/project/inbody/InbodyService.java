package com.kitri.project.inbody;

import java.util.ArrayList;

public interface InbodyService {
	void addInbody(Inbody i);
	ArrayList<Inbody> getInbody(String id);
	ArrayList<Inbody> getAll();
	void editInbody(Inbody i);
	void delInbody(int num);
}
