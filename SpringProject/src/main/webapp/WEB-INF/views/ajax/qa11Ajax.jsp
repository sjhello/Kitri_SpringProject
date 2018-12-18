<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
   

[
	<c:forEach var="list" items="${list }" varStatus="status">
	 	<c:if test="${status.index == 0 }">
	 	{ 
	 		"code" 	 	: ${list.code }, 
	 		"originNo" 	: ${list.originNo }, 
	 		"groupOrd" 	: ${list.groupOrd }, 
	 		"title"	 	: "${list.title }", 
	 		"content"   : "${list.content }",
	 		"id"		: "${list.id }",
	 		"reg_date" 	: "${list.reg_date }",
	 		"b2c_qa_check" 	: ${list.b2c_qa_check } 
	 	 }
	 	 </c:if>
	 	 <c:if test="${status.index != 0 }">
	 	,{ 
	 		"code" 	 	: ${list.code }, 
	 		"originNo" 	: ${list.originNo}, 
	 		"groupOrd" 	: ${list.groupOrd }, 
	 		"title"	 	: "${list.title }", 
	 		"content"  	: "${list.content }",
	 		"id"		: "${list.id }",
	 		"reg_date" 	: "${list.reg_date }",
	 		"b2c_qa_check" 	: ${list.b2c_qa_check } 
	 	 }
	 	 </c:if>
	 	 
	</c:forEach>	
]