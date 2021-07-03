<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Film Query</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="styles.css">
  </head>
  <body>
  <div class="splash">
    <h1 class="fade-in splashHead">Welcome to Film Query</h1>
    <!-- <img class="fade-in" src="VaderPic.jpg" alt="vader pic"> -->

  </div>

    <div class="homeHeader">
    <h1>Welcome to Film Query</h1>
  </div>
  <div class="homeOuter">
    <div class="homeIdSearch">
	
      <h3 class="searchForTitle">Search For:</h3>
      <label for="searchById">Enter Film Id:</label>
      <form action ="findFilmByID.do" method="GET">
      <input id="searchById" type="text" class ="form-control" name="id" value="" placeholder="Film ID">
      <button type="submit" class="btn btn-primary btnIdSearch">Submit</button><br/>
      </form>
      <label for="searchByKeyword">Enter Keyword:</label>
      <input id="searchByKeyword" type="text" class ="form-control" name="" value="" placeholder="Keyword">
      <button type="submit" class="btn btn-primary btnKeySearch">Submit</button>
      </div>
      <div class="row homeAddFilm">
        <h3>Add Film to Database:</h3>
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

          <label for="addFilmRentRate">Enter Rental Rate:</label>
          <input  id="addFilmRentRate" type="text" class ="form-control addFilmRentRate" name="rentRate" placeholder="Rental Rate">


        <button type="submit" class="btn btn-primary">Submit</button>
      </div>
  </div>




  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="myScript.js"></script>
  </body>
</html>
