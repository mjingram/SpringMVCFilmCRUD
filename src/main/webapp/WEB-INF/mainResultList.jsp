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
</div>
<script src="<c:url value="/js/results.js"/>">
</script>
  </body>
</html>
