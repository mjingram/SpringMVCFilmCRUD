<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Film Query</title>
   <!-- BootStrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
   <!-- Google Font -->
   <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&family=Playfair+Display:wght@400;900&display=swap" rel="stylesheet">
<!-- CSS -->
    <link rel="stylesheet" href= "<c:url value="/CSS/index.css" />">
  </head>
  <body>
  <!--Animated Star Background  -->
  <div class="stars"></div>
  <div class="twinkling"></div>
  <!-- Splash Page -->
  <div class="splash">
    <h1 class="fade-in splashHead">Welcome to Film Query</h1>
  

  </div>
<!-- BB-8 Droid -->
<div class="loader">
      <div class="droid">
        <div class="radios">
          <div class="radio short"></div>
          <div class="radio long"></div>
        </div>
        <div class="head">
          <div class="band one"></div>
          <div class="band two"></div>
          <div class="eyes">
            <div class="eye one"></div>
            <div class="eye two"></div>
          </div>
          <div class="band three"></div>
        </div>
        <div class="body">
          <div class="lines one"></div>
          <div class="lines two"></div>
          <div class="circle one"></div>
          <div class="circle two"></div>
          <div class="circle three"></div>
        </div>

      </div>
    
    </div>
    <!-- Speech Bubble -->
    <div class="speech-bubble"><p>ENTER FILM INFO TO START YOUR SEARCH!</p></div>

<!-- Content -->
    <div class="homeHeader">
    <h1>Welcome to Film Query</h1>
  </div>
  <div class="homeOuter">
    <div class="homeIdSearch">
	
      <h3 class="searchForTitle">Search For:</h3>
      <label for="searchById">Enter Film Id:</label>
      <form action ="findFilmById.do" method="GET">
      <input id="searchById" type="text" class ="form-control" name="id" value="" placeholder="Film ID">
      <button type="submit" class="btn btn-primary btnIdSearch">Submit</button><br/>
      </form>
       <form action ="findFilmByKeyword.do" method="GET">
      <label for="searchByKeyword">Enter Keyword:</label>
      <input id="searchByKeyword" type="text" class ="form-control" name="keyword" value="" placeholder="Keyword">
      <button type="submit" class="btn btn-primary btnKeySearch">Submit</button>
      </form>
      </div>
      <div class="row homeAddFilm">
       <form action="newFilm.do" method="POST">
        <h3>Add Film to Database:</h3>
        <div class="col leftColumn">
       
          <label for="addFilmTitle">Enter Title:</label>
          <input id="addFilmTitle" type="text" class ="form-control" name="title" placeholder="Film Title">
          <label for="addFilmDesc">Enter Description:</label>
          <input id="addFilmDesc" type="text" class ="form-control" name="desc"  placeholder="Film Description">
          <label for="addFilmReYear">Enter Release Year:</label>
          <input id="addFilmReYear" type="text" class ="form-control" name="releaseYear"  placeholder="Release Year">
          <label for="addFilmRentDur">Enter Rental Duration:</label>
          <input id="addFilmRentDur" type="text" class ="form-control" name="rentDur"  placeholder="Rental Duration in Days">

        </div>
          <div class="col rightColumn">
            <label for="addFilmLength">Enter Film Length:</label>
            <input id="addFilmLength" type="text" class ="form-control" name="length" placeholder="Film Length in Minutes">
            <label for="addFilmReplCost">Enter Replacement Cost:</label>
            <input id="addFilmReplCost" type="text" class ="form-control" name="repCost" placeholder="Replacement Cost in Dollars">
            <label for="addFilmRating">Enter Rating:</label>
            <input id="addFilmRating" type="text" class ="form-control" name="rating" placeholder="Rating: (R, PG, PG13, G, or NC17)">
            <label for="addFilmSpecFeat">Enter Special Features:</label>
            <input id="addFilmSpecFeat" type="text" class ="form-control" name="features"  placeholder="Special Features">
           
          </div>

          <label for="addFilmRentRate">Enter Rental Rate:</label>
          <input  id="addFilmRentRate" type="text" class ="form-control addFilmRentRate" name="rate" placeholder="Rental Rate in Dollars">


        <button type="submit" class="btn btn-primary">Submit</button>
         </form>
      </div>
  </div>




  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="<c:url value="/js/home.js"/>"></script>
  </body>
</html>
