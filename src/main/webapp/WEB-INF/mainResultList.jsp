<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Film Query</title>
    <!--BootStrap  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- Google Fonts -->
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

    <div class="homeHeader" >
    <h1>Welcome to Film Query</h1>
  </div>
  
<div class="resultsOuterList" id="resultsDiv">
<h3>Query Results:</h3>
   <c:if test="${ not empty films}">
	<table>
	<c:forEach var="f" items="${films }">
	  <tr>
	    <th>ID</th><th>Title</th><th>Description</th><th>Rating</th><th>Release Year</th><th>Language</th><th>Actors></th>
	    <th>Rental Cost</th><th>Length</th><th>Rental Duration</th><th>Replacement Cost</th><th>Category</th><th>Special Features</th>
	    <tr>
	      <td>${f.filmId}</td>
	      <td>${f.title}</td>
	      <td>${f.desc}</td>
          <td>${f.rating}</td>
	      <td>${f.releaseYear}</td>
          <td>${f.language}</td>
          <td>${f.actors}</td>
          <td>${f.rate}</td>
	      <td>${f.length}</td>
	      <td>${f.rentDur}</td>
	      <td>${f.repCost}</td>
          <td>${f.category}</td>
          <td>${f.features}</td>
	      </tr>
	      </c:forEach>
	</table>
  </c:if>
  <form action="home.do">
  <button class="btn btn-primary">Home</button>
  </form>
</div>
<script src="<c:url value="/js/results.js"/>">
</script>
  </body>
</html>
