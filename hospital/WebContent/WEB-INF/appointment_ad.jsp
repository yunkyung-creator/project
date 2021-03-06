<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.ReservationDAO"%>
<%@ page import="java.util.*"%>
<%@ page import="vo.Reservation"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<title>예약확인페이지(관리자)</title>
${id }
<meta charset="utf-8">    
<link rel='stylesheet' type='text/css' href='css/fullcalendar.css' />
<script type='text/javascript' src='js/jquery-1.5.2.min.js'></script>
<script type='text/javascript' src='js/jquery-ui-1.8.11.custom.min.js'></script>
<script type='text/javascript' src='js/fullcalendar.min.js'></script>
<script type='text/javascript'>

   $(document).ready(function() {
   
      var date = new Date();
      var d = date.getDate();
      var m = date.getMonth();
      var y = date.getFullYear();
      
      $('#calendar').fullCalendar({
         header: {
            left: '',
            center: 'title',
            right: 'prev, next today' //month,agendaWeek,agendaDay
         },
         editable: false,               
         events: [
            {
               title: 'All Day Event',
               start: new Date(y, m, 1)
            },
            {
               title: 'All Day',
               start: '2011-09-18',
               end: '2011-09-21'
            },
            {
               title: 'Long Event',
               start: new Date(y, m, d-5),
               end: new Date(y, m, d-2)
            },
            {
               id: 999,
               title: 'Repeating Event',
               start: new Date(y, m, d-3, 16, 0),
               allDay: false
            },
            {
               id: 999,
               title: 'Repeating Event',
               start: new Date(y, m, d+4, 16, 0),
               allDay: false
            },
            {
               title: 'Meeting',
               start: new Date(y, m, d, 10, 30),
               allDay: false
            },
            {
               title: 'Lunch',
               start: new Date(y, m, d, 12, 0),
               end: new Date(y, m, d, 14, 0),
               allDay: false
            },
            {
               title: 'Birthday Party',
               start: new Date(y, m, d+1, 19, 0),
               end: new Date(y, m, d+1, 22, 30),
               allDay: false
            },
            {
               title: 'Click for Google',
               start: new Date(y, m, 28),
               end: new Date(y, m, 29),
               url: 'http://google.com/'
            }
         ]
      });
      
   });

</script>
     
<style type='text/css'>

   body {
      margin-top: 40px;
      text-align: center;
      font-size: 14px;
      font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
      }

   #calendar {
      width: 900px;
      margin: 0 auto;
      }

</style>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
<body>
    
   <br><div id='calendar'></div><br>
    
      <footer class="ftco-footer ftco-bg-dark ftco-section">
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
    </footer>    
  </body>
</html>    
    
    