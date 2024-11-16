<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div mbsc-page class="demo-desktop-month-view">
	<div style="height:100%">
		<div id="c_calendar" class="deaone_calendar" style="height:100%"></div>
	</div>
</div>
<script>
	mobiscroll.setOptions({
	  locale: mobiscroll.localeEn,         // Specify language like: locale: mobiscroll.localePl or omit setting to use default
	  theme: 'ios',                        // Specify theme like: theme: 'ios' or omit setting to use default
	        themeVariant: 'light'          // More info about themeVariant: https://mobiscroll.com/docs/jquery/eventcalendar/api#opt-themeVariant
	});

	$(function () {
	  var inst = $('#c_calendar')
	    .mobiscroll()
	    .eventcalendar({
	      // drag,
	      view: {                          // More info about view: https://mobiscroll.com/docs/jquery/eventcalendar/api#opt-view
	        calendar: { labels: true },
	      },
	      onEventClick: function (args) {  // More info about onEventClick: https://mobiscroll.com/docs/jquery/eventcalendar/api#event-onEventClick
	        mobiscroll.toast({
	
	          message: args.event.title,
	        });
	      },
	    })
	    .mobiscroll('getInst');
	
	  $.getJSON(
	    'https://trial.mobiscroll.com/events/?vers=5&callback=?',
	    function (events) {
	      inst.setEvents(events);
	    },
	    'jsonp',
	  );
	});
</script>