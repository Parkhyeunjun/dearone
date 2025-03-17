<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<meta charset="UTF-8">
<h1>wallet</h1>
<input type="button" value="DB연결 테스트" id="btn_testDb"/>

<script type="text/javascript">
	$("#btn_testDb").on("click",function(){
		$.ajax({
	         url: "dearone/wallet/getTest.do",
	         type: "POST",
	         contentType: 'application/json'
	    }).done(res => {
	    	alert("db조회결과 : " + res);
	    }).fail((xhr, status, error) => {
	    	console.error("AJAX 오류:", error);
    	});
	})
</script>

 

