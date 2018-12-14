package com.kitri.project.mail;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

@Component("memberEmailAuthService")
public class MemberEmailAuthServiceImpl implements MemberEmailAuthService{
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private MemberEmailAuthDao dao;
	
	@Resource(name="mailSender")
	private JavaMailSender mailSender;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void createKey(MemberEmailAuth mea) throws Exception{
		dao = sqlSession.getMapper(MemberEmailAuthDao.class);
		dao.createKey(mea);
		
		MailHandler sendMail = new MailHandler(mailSender);
		sendMail.setSubject("[ANYFIR 이메일 인증]");
		sendMail.setText(new StringBuffer().append("<h1>메일인증<h1>")
										.append("<a href='http://localhost:8787/project/emailConfirm?email=")
										.append(mea.getEmail())
										.append("&key=")
										.append(mea.getUser_authcode())
										.append("' target='_blenk'>이메일 인증 확인</a>")
										.toString());
		sendMail.setFrom("qkrshdbf2001@naver.com","ANYFIT");
		sendMail.setTo(mea.getEmail());
		sendMail.send();
	}

	@Override
	public void update(MemberEmailAuth mea) {
		dao = sqlSession.getMapper(MemberEmailAuthDao.class);
		dao.update(mea);
	}

}
