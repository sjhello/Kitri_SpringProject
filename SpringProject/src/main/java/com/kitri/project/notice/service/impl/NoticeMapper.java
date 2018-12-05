package com.kitri.project.notice.service.impl;

import java.util.ArrayList;

import com.kitri.project.notice.web.Notice;

public interface NoticeMapper {

	void insertNotice(Notice n);

	ArrayList<Notice> selectNoticeList();

	Notice selectNotice(int num);

	void updateNotice(Notice n);

	void addHits(Notice n);

	void deleteNotice(int num);

}