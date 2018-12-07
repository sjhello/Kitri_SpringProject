package com.kitri.project.inbody;

import java.util.ArrayList;

public interface InbodyDao {
	void insert(Inbody i);
	ArrayList<Inbody> select(String id);
	ArrayList<Inbody> selectAll();
	void update(Inbody i);
	void delete(int num);

}
