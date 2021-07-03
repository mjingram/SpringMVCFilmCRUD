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

   <c:if test="${empty film }">No film found</c:if>
   <c:if test="${ not empty film}">
	<table>
	  <tr>
	    <th>ID</th><th>Title</th><th>Description</th><th>Rating</th><th>Release Year</th><th>Language</th><th>Actors></th>
	    <th>Rental Cost</th><th>Length</th><th>Special Features</th>
	
	    <tr>
	      <td>${film.filmId}</td>
	      <td>${film.title}</td>
	      <td>${film.desc}</td>
          <td>${film.rating}</td>
          <td>${film.releaseYear}</td>
          <td>${film.language}</td>
          <td>${film.actors}</td>
          <td>${film.rate}</td>
          <td>${film.length}</td>
          <td>${film.features}</td>
	      </tr>
	</table>
  </c:if>

	


<button class="btn btn-primary" onclick="showEdit()">Edit</button>
<button class="btn btn-primary" onclick="showDelete()">Delete</button>
</div>


<div class="resultsOuter2" id="editDiv">
<h3>Edits:</h3>




<button class="btn btn-primary" id="editBtn" onclick="showEdit()">Edit</button>
<button class="btn btn-primary" onclick="showEditToDelete()">Delete</button>
</div>

<div class="resultsOuter3" id="deleteDiv">
<h3>Delete:</h3>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>



<button class="btn btn-primary" onclick="showDeleteToEdit()">Edit</button>
<button class="btn btn-primary" id="deleteBtn" onclick="showDelete()">Delete</button>
</div>


<script src="<c:url value="/js/results.js"/>">

</script>
  </body>
</html>
    

