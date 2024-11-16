<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- Sidebar Start -->
<aside class="left-sidebar">
     <!-- Sidebar scroll-->
     <div>
       <div class="brand-logo d-flex align-items-center justify-content-between">
         <a href="/dearone" class="text-nowrap logo-img">
           <img src="<c:url value='/resources/images/template/logos/dark-logo.svg'/>" width="180" alt="" />
         </a>
         <div class="close-btn d-xl-none d-block sidebartoggler cursor-pointer" id="sidebarCollapse">
           <i class="ti ti-x fs-8"></i>
         </div>
       </div>
       <!-- Sidebar navigation-->
       <nav class="sidebar-nav scroll-sidebar" data-simplebar="">
         <ul id="sidebarnav">
           <li class="nav-small-cap">
             <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
             <span class="hide-menu">Home</span>
           </li>
           <li class="sidebar-item">
             <a class="sidebar-link" href="/dearone" aria-expanded="false">
               <span>
                 <i class="ti ti-layout-dashboard"></i>
               </span>
               <span class="hide-menu">Dashboard</span>
             </a>
           </li>
           <li class="nav-small-cap">
             <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
             <span class="hide-menu">COUPLE&nbsp;&nbsp;PLANS</span>
           </li>
           <li class="sidebar-item" data-menu="calendar">
             <a class="sidebar-link" aria-expanded="false">
               <span>
                 <i class="ti ti-article"></i>
               </span>
               <span class="hide-menu">CALENDAR</span>
             </a>
           </li>
           <li class="nav-small-cap">
             <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
             <span class="hide-menu">Our&nbsp;&nbsp;Wallet</span>
           </li>
           <li class="sidebar-item" data-menu="wallet">
             <a class="sidebar-link" aria-expanded="false">
               <span>
                 <i class="ti ti-mood-happy"></i>
               </span>
               <span class="hide-menu">Our Wallet</span>
             </a>
           </li>
         </ul>
       </nav>
       <!-- End Sidebar navigation -->
     </div>
     <!-- End Sidebar scroll-->
   </aside>
   <!--  Sidebar End -->
   
<script>
 	$("[data-menu]").on({
 		click: function(e) {
 			let path = "dearone/";
 			switch($(this).data("menu")) {
 				case "calendar" : path += "calendar/main.do"; break;
 				case "wallet"   : path += "wallet/main.do"; break;
 				default: return;
 			}
 			$.ajax({
				url: path,
				type: "get",
				dataType: "html",
				success: (html) => {
					$("#page").html(html);
				},
				error: function(){
					alert("failed!");		
				}
			});
 		}
 	})
</script>