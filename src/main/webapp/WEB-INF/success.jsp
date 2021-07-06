<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success</title>
<!-- BootStrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
   <!-- Google Fonts -->
   <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&family=Playfair+Display:wght@400;900&display=swap" rel="stylesheet">
   <!-- CSS -->
   <link rel="stylesheet" href="<c:url value="/CSS/success.css" />">
</head>
<body>
   
     
  <div class="imgDiv">
     <img class="deathstar" src="<c:url value="images/DeathStar.jpg" />" alt="Success">
      <div class="successDiv">
        <h1 class="successTitle">Success</h1>
        <c:if test="${not empty film }">
        <p>Film ${film.title} with ID: ${film.filmId} has been successfully added, updated, or deleted in the database.</p>
         </c:if>
         <c:if test="${empty film }">
         <p>Film has been successfully added, updated, or deleted in the database.</p>
          </c:if>
         <a href="home.do" class="btn btn-primary">Return</a>
        
       
      </div>

    </div>
</body>
</html>