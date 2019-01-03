package com.kitri.project.notice.service.impl;

import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.kitri.project.notice.service.NoticeService;
import com.kitri.project.notice.web.Notice;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService{
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private NoticeMapper noticeMapper;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession; 
	}
	
	@Override
	public ArrayList<Notice> selectNoticeList() {
		noticeMapper = sqlSession.getMapper(NoticeMapper.class);
		return noticeMapper.selectNoticeList();
	}
	
	@Override
	public Notice selectNotice(int num) {
		return noticeMapper.selectNotice(num);
	}
	
	@Override
	public void insertNotice(Notice n) {
		noticeMapper = sqlSession.getMapper(NoticeMapper.class);
		noticeMapper.insertNotice(n);
	}

	@Override
	public void updateNotice(Notice n) {
		noticeMapper = sqlSession.getMapper(NoticeMapper.class);
		noticeMapper.updateNotice(n);
	}

	@Override
	public void addHits(Notice n) {
		noticeMapper = sqlSession.getMapper(NoticeMapper.class);
		noticeMapper.addHits(n);
	}

	@Override
	public void deleteNotice(int num) {
		noticeMapper = sqlSession.getMapper(NoticeMapper.class);
		noticeMapper.deleteNotice(num);
	}

	@Override
	public int countNotice() {
		noticeMapper = sqlSession.getMapper(NoticeMapper.class);
		return noticeMapper.countNotice();
	}

	@Override
	public ArrayList<Notice> selectAll(int start, int end) {
		noticeMapper = sqlSession.getMapper(NoticeMapper.class);
		HashMap<String, Object> hashMap = new HashMap<String, Object>();
		hashMap.put("start", start);
		hashMap.put("end", end);
		return noticeMapper.selectAll(hashMap);
	}
}
