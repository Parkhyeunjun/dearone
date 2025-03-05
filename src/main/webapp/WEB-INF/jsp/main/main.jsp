<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>D E A R O N E</title> 
  
  <script src="<c:url value='/resources/js/plugin/jquery/jquery-3.6.0.js'/>"></script>
  <script src="<c:url value='/resources/js/plugin/jquery/jquery-ui.js'/>"></script>
  
  <link rel="stylesheet" href="<c:url value='/resources/css/jquery/jquery-ui.css'/>" />
  
  <!-- calendar libs -->
  <link rel="stylesheet" href="<c:url value='/resources/css/mobiscroll/mobiscroll.jquery.min.css'/>">
  <script src="<c:url value='/resources/js/plugin/mobiscroll/mobiscroll.jquery.min.js'/>"></script>
  <!-- calendar custom css -->
  <link rel="stylesheet" href="<c:url value='/resources/css/calendar/calendar.css'/>" />
    
  <link rel="shortcut icon" type="image/png" href="<c:url value='/resources/images/template/logos/favicon.png'/>" />
  <link rel="stylesheet" href="<c:url value='/resources/css/template/styles.css'/>" />
</head>

<body>
  <!--  Body Wrapper -->
  <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
    data-sidebar-position="fixed" data-header-position="fixed">
	
		<!--  ############## side bar -->
		<jsp:include page="../layouts/sidebar.jsp"/>
		
	    <!--  Main wrapper -->
	    <div class="body-wrapper">
	
		<!--  ############## header -->
		<jsp:include page="../layouts/header.jsp"/>
		
		<!--  ############## dashboard -->
		<div id="page" class="container-fluid">
			<jsp:include page="../dashboard/main.jsp"/>
		</div>
    </div>
  </div>
  
  <script src="<c:url value='/resources/libs/template/bootstrap/dist/js/bootstrap.bundle.min.js'/>"></script>
  <script src="<c:url value='/resources/js/template/sidebarmenu.js'/>"></script>
  <script src="<c:url value='/resources/js/template/app.min.js'/>"></script>
  <script src="<c:url value='/resources/libs/template/apexcharts/dist/apexcharts.min.js'/>"></script>
  <script src="<c:url value='/resources/libs/template/simplebar/dist/simplebar.js'/>"></script>
  <script src="<c:url value='/resources/js/template/dashboard.js'/>"></script>
</body>