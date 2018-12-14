<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
   

[
	<c:forEach var="list" items="${list }" varStatus="status">
	 	<c:if test="${status.index == 0 }">
	 	{ 
	 		"f_level" 	: "${list.f_level}", 
	 		"title" 	: "${list.title}", 
	 		"contents" 	: "${list.contents}"
	 	 }	
	 	 </c:if>
	 	 <c:if test="${status.index != 0 }">
	 	,{ 
	 		"f_level" 	: "${list.f_level}", 
	 		"title" 	: "${list.title}", 
	 		"contents" 	: "${list.contents}"
	 	 }
	 	 </c:if>
	 	 
	</c:forEach>	
]