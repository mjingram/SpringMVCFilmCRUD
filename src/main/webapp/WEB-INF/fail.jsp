<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Failure</title>
<!-- BootStrap 5 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
   <!-- Google Font -->
   <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&family=Playfair+Display:wght@400;900&display=swap" rel="stylesheet">
   <!-- CSS -->
   <link rel="stylesheet" href="<c:url value="/CSS/fail.css" />">
</head>
<body>
     
  <div class="imgDiv">
     <img class="jarjar" src="<c:url value="images/JarJarPic.jpg" />" alt="failure">
      <div class="failDiv">
        <h1 class="failTitle">FAIL</h1>
        <p>Film has failed to either add, update, or delete in the database. Please try again.</p>
        
         <a href="home.do" class="btn btn-primary">Return</a>
       
       
      </div>

    </div>

</body>
</html>