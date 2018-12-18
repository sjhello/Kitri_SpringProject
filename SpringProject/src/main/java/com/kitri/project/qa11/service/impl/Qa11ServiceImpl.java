package com.kitri.project.qa11.service.impl;

import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.kitri.project.qa11.service.Qa11Service;
import com.kitri.project.qa11.web.Qa11;

@Service("qa11Service")
public class Qa11ServiceImpl implements Qa11Service{
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	private Qa11Mapper qa11Mapper;
	
	@Override
	public ArrayList<Qa11> selectQa11ListAdNot() {
		qa11Mapper = sqlSession.getMapper(Qa11Mapper.class);
		return qa11Mapper.selectQa11ListAdNot();
	}
	
	@Override
	public ArrayList<Qa11> selectQa11List() {
		qa11Mapper = sqlSession.getMapper(Qa11Mapper.class);
		return qa11Mapper.selectQa11List();
	}
	
	@Override
	public ArrayList<Qa11> uaSelectQa(String id) {
		qa11Mapper = sqlSession.getMapper(Qa11Mapper.class);
		return qa11Mapper.uaSelectQa(id);
	}
	
	@Override
	public ArrayList<Qa11> selectQa11Ad(int i) {
		qa11Mapper = sqlSession.getMapper(Qa11Mapper.class);
		return qa11Mapper.selectQa11Ad(i);
	}
	
	@Override
	public ArrayList<Qa11> adSelectQa11Id(String id) {
		qa11Mapper = sqlSession.getMapper(Qa11Mapper.class);
		return qa11Mapper.adSelectQa11Id(id);
	}
	
	@Override
	public Qa11 selectQa11(int code) {
		qa11Mapper = sqlSession.getMapper(Qa11Mapper.class);
		return qa11Mapper.selectQa11(code);
	}
	
	@Override
	public ArrayList<Qa11> selectQa11Id(String id) {
		qa11Mapper = sqlSession.getMapper(Qa11Mapper.class);
		return qa11Mapper.selectQa11Id(id);
	}
	
	@Override
	public Qa11 detailQa11(int originNo) {
		qa11Mapper = sqlSession.getMapper(Qa11Mapper.class);
		return qa11Mapper.detailQa11(originNo);
	}

	@Override
	public Qa11 detailAdQa11(int originNo) {
		qa11Mapper = sqlSession.getMapper(Qa11Mapper.class);
		return qa11Mapper.detailAdQa11(originNo);
	}
	
	@Override
	public void insertAdQa11(Qa11 qa11) {
		qa11Mapper = sqlSession.getMapper(Qa11Mapper.class);
		qa11Mapper.insertAdQa11(qa11);
	}
	
	@Override
	public void insertQa11(Qa11 qa11) {
		qa11Mapper = sqlSession.getMapper(Qa11Mapper.class);
		qa11Mapper.insertQa11(qa11);
	}

	@Override
	public void updateQa11CheckTrue(int code) {
		qa11Mapper = sqlSession.getMapper(Qa11Mapper.class);
		qa11Mapper.updateQa11CheckTrue(code);
	}

	@Override
	public void updateQa11(Qa11 qa11) {
		qa11Mapper = sqlSession.getMapper(Qa11Mapper.class);
		qa11Mapper.updateQa11(qa11);
	}

	@Override
	public void updateupdateQa11CheckFalse(int code) {
		qa11Mapper = sqlSession.getMapper(Qa11Mapper.class);
		qa11Mapper.updateupdateQa11CheckFalse(code);
	}

	@Override
	public void deleteQa11(int code) {
		qa11Mapper = sqlSession.getMapper(Qa11Mapper.class);
		qa11Mapper.deleteQa11(code);
	}

	@Override
	public void uaDeleteQa11(int originNo) {
		qa11Mapper = sqlSession.getMapper(Qa11Mapper.class);
		qa11Mapper.uaDeleteQa11(originNo);
	}

	@Override
	public int countQa11ListAdNot() {
		qa11Mapper = sqlSession.getMapper(Qa11Mapper.class);
		return qa11Mapper.countQa11ListAdNot();
	}

	@Override
	public ArrayList<Qa11> listAll(int start, int end) {
		qa11Mapper = sqlSession.getMapper(Qa11Mapper.class);
		HashMap<String, Object> hashMap = new HashMap<String, Object>();
		hashMap.put("start", start);
		hashMap.put("end", end);
		return qa11Mapper.listAll(hashMap);
	}

	@Override
	public int countQa11(String id) {
		qa11Mapper = sqlSession.getMapper(Qa11Mapper.class);
		return qa11Mapper.countQa11(id);
	}
}
