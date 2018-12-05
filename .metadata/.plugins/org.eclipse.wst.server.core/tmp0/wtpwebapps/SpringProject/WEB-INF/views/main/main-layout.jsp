<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" 		uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" 	uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="spring" 	uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" 	uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" 		uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>

<html>
<head>
	<tiles:insertAttribute name="head"/>
</head>

<body class="stretched">
	<div id="wrapper" class="clearfix">
		<tiles:insertAttribute name="header"/>
		<tiles:insertAttribute name="slide"/>
		<section id="content">
			<tiles:insertAttribute name="content"/>
			<tiles:insertAttribute name="footer"/>
		</section>
	</div>
</body>

</html>

