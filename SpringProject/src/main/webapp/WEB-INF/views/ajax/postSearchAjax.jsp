<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
[
	<c:forEach var="resultList" items="${resultList }" varStatus="status">
	<c:if test="${!status.first }">,</c:if>
		{"zipNo":"${resultList.zipNo }", "lnmAdres":"${resultList.lnmAdres }", "rnAdres":"${resultList.rnAdres }"}
	</c:forEach>
]
