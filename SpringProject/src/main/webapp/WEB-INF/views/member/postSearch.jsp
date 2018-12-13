<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="//code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#searchValue').change(function(){
			var searchValue = $('#searchValue').val();
			var param = "searchValue="+searchValue;
			$.ajax({
				type:"GET",
				url:"${pageContext.request.contextPath}/postSearchAjax",
				data:param,
				success:function(data){
					var arr = eval('('+data+')');
					var str = "";
					str = "<table border=1>";
					
					var zipNo;
					var lnmAdres;
					var rnAdres;
					
					str += "<tr>";
					str += "<th>우편번호</th>";
					str += "<th>도로명주소</th>";
					str += "<th>지번주소</th>";
					str += "</tr>";
					for(i=0; i<arr.length; i++){
						zipNo = arr[i].zipNo;
						lnmAdres = arr[i].lnmAdres;
						rnAdres = arr[i].rnAdres;
						
						str += "<tr>";
						str += "<td>"+zipNo+"</td>";
						str += "<td>"+lnmAdres+"</td>";
						str += "<td>"+rnAdres+"</td>";
						str += "</tr>"
					}
					str += "</table>";
					$('#result').html(str)
				}
			});
		});
	});
</script>
<head>
<meta charset="UTF-8">
<title>우편번호 검색</title>
</head>
<body>
	<input type="text" id="searchValue"><br>
	<div id="result">
		
	</div>
</body>
</html>