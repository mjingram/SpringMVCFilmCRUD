<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
   <link rel="stylesheet" href="<c:url value="/CSS/success.css" />">
</head>
<body>
     
  <div class="imgDiv">
     <img class="deathstar" src="<c:url value="images/DeathStar.jpg" />" alt="Success">
      <div class="successDiv">
        <h1 class="successTitle">Success</h1>
        <p>Film ${film.title} with ID: ${film.filmId} has been successfully added, updated, or deleted in the database.</p>
        <!--  <form action="home.do"> -->
         <!-- <button class="btn btn-primary" type="submit" name="Query">Query</button> -->
         <a href="home.do" class="btn btn-primary">Return</a>
        <!--  </form> -->
       
      </div>

    </div>

</body>
</html>