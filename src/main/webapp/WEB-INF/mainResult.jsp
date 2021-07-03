<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

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
      <a href="home.jsp">Go back to home page</a>
    </c:otherwise>
  </c:choose>

</body>
</html>