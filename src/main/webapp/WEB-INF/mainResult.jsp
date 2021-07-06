<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="<c:url value="/CSS/results.css" />">
  </head>
  <body>
  <!-- Star Background -->
  <div class="stars"></div>
  <div class="twinkling"></div>
    <!-- Splash Page -->
  <div class="splash-result">
    <h1 class="fade-in-result splashHead">Interesting...Your Query Is...</h1>
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
    <div class="speech-bubble"><p>CLICK EDIT OR DELETE TO MODIFY THIS FILM!</p></div>
  

<!-- Content -->
    <div class="homeHeader" >
    <h1>Welcome to Film Query</h1>
  </div>
<div class="resultsOuter" id="resultsDiv">

<h3>Query Results:</h3>
   <c:if test="${empty film }">No film found. 
     <a href="home.do">Go back</a></c:if>
   <c:if test="${ not empty film}">
	<table>
	  <tr>
	    <th>ID</th><th>Title</th><th>Description</th><th>Release Year</th><th>Rental Duration</th><th>Rating</th><th>Replacement Cost</th><th>Language</th><th>Actors</th>
	    <th>Rental Cost</th><th>Length</th><th>Category</th><th>Special Features</th>
	    <tr>
	      <td>${film.filmId}</td>
	      <td>${film.title}</td>
	      <td>${film.desc}</td>
	      <td>${film.releaseYear}</td>
	      <td>${film.rentDur}</td>
          <td>${film.rating}</td>
	      <td>${film.repCost}</td>
          <td>${film.language}</td>
          <td>${film.actors}</td>
          <td>${film.rate}</td>
	      <td>${film.length}</td>
	      <td>${film.category}</td>
          <td>${film.features}</td>
	      </tr>
	</table>
  </c:if>

<div class="editAndDeleteBtns">
<button class="btn btn-primary resBtn" onclick="showEdit()">Edit</button>
<button class="btn btn-primary resBtn" onclick="showDelete()">Delete</button>
</div>
</div>


<div class="resultsOuter2" id="editDiv">
<h3>Edits:</h3>
<form action ="updateFilm.do"method="POST" >
<div class="row">


<div class="col leftColumn">
	<input type="hidden" name = "filmId" value="${film.filmId}">
  <label for="addFilmTitle">Enter Title:</label>
  <input id="addFilmTitle" type="text" class ="form-control" name="title" value="${film.title}">
  <label for="addFilmDesc">Enter Description:</label>
  <input id="addFilmDesc" type="text" class ="form-control" name="desc"  value="${film.desc}">
  <label for="addFilmReYear">Enter Release Year:</label>
  <input id="addFilmReYear" type="text" class ="form-control" name="releaseYear"  value="${film.releaseYear}">
  <label for="addFilmRentDur">Enter Rental Duration:</label>
  <input id="addFilmRentDur" type="text" class ="form-control" name="rentDur"  value="${film.rentDur}">
	<input type="hidden" name = "language" value="${film.language}">
	
	<input type="hidden" name = "category" value="${film.category}">

</div>
  <div class="col rightColumn">
    <label for="addFilmLength">Enter Film Length:</label>
    <input id="addFilmLength" type="text" class ="form-control" name="length" value="${film.length}">
    <label for="addFilmReplCost">Enter Replacement Cost:</label>
    <input id="addFilmReplCost" type="text" class ="form-control" name="repCost" value="${film.repCost}">
    <label for="addFilmRating">Enter Rating (R, PG, PG13, G, NC17):</label>
    <input id="addFilmRating" type="text" class ="form-control" name="rating" value="${film.rating}">
    <label for="addFilmSpecFeat">Enter Special Features:</label>
    <input id="addFilmSpecFeat" type="text" class ="form-control" name="features"  value="${film.features}">
  </div>
</div>
<div class="rentRateButtonETC">
  <label for="addFilmRentRate">Enter Rental Rate:</label>
  <input  id="addFilmRentRate" type="text" class ="form-control addFilmRentRate" name="rate" value="${film.rate}">


<button type="submit" class="btn btn-primary">Submit</button><br/>
</div>
</form>

<div class="editAndDeleteBtns">
  <button class="btn btn-primary" id="editBtn" onclick="showEdit()">Back to Query</button>
  <button class="btn btn-primary" onclick="showEditToDelete()">Delete Films</button>
</div>


</div>

<div class="resultsOuter3" id="deleteDiv">
<h3>Delete:</h3>
<form action="deleteFilm.do" method="POST">

	<input type="hidden" name = "filmId" value="${film.filmId}">

<div class="rentRateButtonETC">
 <h3>Warning: Are you sure you want to delete? </h3>
  <input  id="addFilmRentRate" type="hidden" class ="form-control addFilmRentRate" name="rentRate" value="${film.rate}">


<button type="submit" id="yesDeleteBtn" class="btn btn-primary">Delete</button><br/>
</div>

</form>
<div class="editAndDeleteBtns">
  <button class="btn btn-primary" onclick="showDeleteToEdit()">Edit Film</button>
  <button class="btn btn-primary" id="deleteBtn" onclick="showDelete()">Back to Query</button>
</div>


</div>


<script src="<c:url value="/js/results.js"/>">

</script>
  </body>
</html>
    

