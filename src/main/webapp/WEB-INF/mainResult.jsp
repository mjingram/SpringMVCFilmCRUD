<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Film Query</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="<c:url value="/CSS/results.css" />">
  </head>
  <body>
    <!-- Splash Page -->
  <div class="splash-result">
    <h1 class="fade-in-result splashHead">Interesting...Your Query Is...</h1>
  </div>

    <div class="homeHeader" >
    <h1>Welcome to Film Query</h1>
  </div>
<div class="resultsOuter" id="resultsDiv">
<h3>Query Results:</h3>
<c:choose>
   <c:when test= "${ not empty film}">
     <ul>
       <li>Id: ${film.filmId}</li>
       <li>Title: ${film.title}</li>
       <li>Description: ${film.desc}</li>
       <li>Release Year: ${film.releaseYear}</li>
       <li>Rating: ${film.rating}</li>
       <li>Language: ${film.language}</li>
       <li>Actors: ${film.actors}</li>
       <li>Rental Cost: ${film.rate}</li>
       <li>Length (min): ${film.length}</li>
       <li>Special Features: ${film.features}</li>
     </ul>
   </c:when>
   <c:otherwise>
     <p>No film found with that id</p>
    
   </c:otherwise>
 </c:choose>

<button class="btn btn-primary" onclick="showEdit()">Edit</button>
<button class="btn btn-primary" onclick="showDelete()">Delete</button>
</div>


<div class="resultsOuter2" id="editDiv">
<h3>Edits:</h3>
<div class="row">


<div class="col leftColumn">
  <label for="addFilmTitle">Enter Title:</label>
  <input id="addFilmTitle" type="text" class ="form-control" name="title" placeholder="Film Title">
  <label for="addFilmDesc">Enter Description:</label>
  <input id="addFilmDesc" type="text" class ="form-control" name="desc"  placeholder="Film Description">
  <label for="addFilmReYear">Enter Release Year:</label>
  <input id="addFilmReYear" type="text" class ="form-control" name="releaseYear"  placeholder="Release Year">
  <label for="addFilmRentDur">Enter Rental Duration:</label>
  <input id="addFilmRentDur" type="text" class ="form-control" name="rentDur"  placeholder="Rental Duration">

</div>
  <div class="col rightColumn">
    <label for="addFilmLength">Enter Film Length:</label>
    <input id="addFilmLength" type="text" class ="form-control" name="filmLength" placeholder="Film Length">
    <label for="addFilmReplCost">Enter Replacement Cost:</label>
    <input id="addFilmReplCost" type="text" class ="form-control" name="replCost" placeholder="Replacement Cost">
    <label for="addFilmRating">Enter Rating:</label>
    <input id="addFilmRating" type="text" class ="form-control" name="rating" placeholder="Rating: (R, PG, etc)">
    <label for="addFilmSpecFeat">Enter Description:</label>
    <input id="addFilmSpecFeat" type="text" class ="form-control" name="specFeat"  placeholder="Special Features">
  </div>
</div>
<div class="rentRateButtonETC">
  <label for="addFilmRentRate">Enter Rental Rate:</label>
  <input  id="addFilmRentRate" type="text" class ="form-control addFilmRentRate" name="rentRate" placeholder="Rental Rate">


<button type="submit" class="btn btn-primary">Submit</button><br/>
</div>


<div class="editAndDeleteBtns">
  <button class="btn btn-primary" id="editBtn" onclick="showEdit()">Edit Films</button>
  <button class="btn btn-primary" onclick="showEditToDelete()">Delete Films</button>
</div>


</div>

<div class="resultsOuter3" id="deleteDiv">
<h3>Delete:</h3>
<div class="row">


<div class="col leftColumn">
  <label for="addFilmTitle">Enter Title:</label>
  <input id="addFilmTitle" type="text" class ="form-control" name="title" placeholder="Film Title">
  <label for="addFilmDesc">Enter Description:</label>
  <input id="addFilmDesc" type="text" class ="form-control" name="desc"  placeholder="Film Description">
  <label for="addFilmReYear">Enter Release Year:</label>
  <input id="addFilmReYear" type="text" class ="form-control" name="releaseYear"  placeholder="Release Year">
  <label for="addFilmRentDur">Enter Rental Duration:</label>
  <input id="addFilmRentDur" type="text" class ="form-control" name="rentDur"  placeholder="Rental Duration">

</div>
  <div class="col rightColumn">
    <label for="addFilmLength">Enter Film Length:</label>
    <input id="addFilmLength" type="text" class ="form-control" name="filmLength" placeholder="Film Length">
    <label for="addFilmReplCost">Enter Replacement Cost:</label>
    <input id="addFilmReplCost" type="text" class ="form-control" name="replCost" placeholder="Replacement Cost">
    <label for="addFilmRating">Enter Rating:</label>
    <input id="addFilmRating" type="text" class ="form-control" name="rating" placeholder="Rating: (R, PG, etc)">
    <label for="addFilmSpecFeat">Enter Description:</label>
    <input id="addFilmSpecFeat" type="text" class ="form-control" name="specFeat"  placeholder="Special Features">
  </div>
</div>
<div class="rentRateButtonETC">
  <label for="addFilmRentRate">Enter Rental Rate:</label>
  <input  id="addFilmRentRate" type="text" class ="form-control addFilmRentRate" name="rentRate" placeholder="Rental Rate">


<button type="submit" class="btn btn-primary">Submit</button><br/>
</div>


<div class="editAndDeleteBtns">
  <button class="btn btn-primary" onclick="showDeleteToEdit()">Edit Film</button>
  <button class="btn btn-primary" id="deleteBtn" onclick="showDelete()">Delete Films</button>
</div>


</div>


<script src="<c:url value="/js/results.js"/>">

</script>
  </body>
</html>
    

