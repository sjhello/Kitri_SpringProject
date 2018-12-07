<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

[
	<c:forEach var="list" items="${list }" varStatus="status">
		<c:if test="${status.index == 0}">
		{"q_num": "${list.q_num}", "title": "${list.title }", "content":"${list.content }", "reg_date":"${list.reg_date }"}
		</c:if>
		<c:if test="${status.index != 0}">
		,{"q_num": "${list.q_num}", "title": "${list.title }", "content":"${list.content }", "reg_date":"${list.reg_date }"}
		</c:if>
	</c:forEach>
]
