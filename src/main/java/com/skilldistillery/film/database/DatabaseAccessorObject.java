package com.skilldistillery.film.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

@Repository 
public class DatabaseAccessorObject implements DatabaseAccessor {
	
	private static final String URL = "jdbc:mysql://localhost:3306/sdvid?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=US/Mountain";
	private String user = "student";
	private String pass = "student";
	
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

  @Override
  public Film findFilmById(int filmId) {
    Film film = null;
    try {
    	
    	Connection conn = DriverManager.getConnection(URL, user, pass);
    	String sql = "SELECT film.id, title, description, release_year, language_id, rental_duration, "
        + " rental_rate, length, replacement_cost, rating, special_features, language.name "
       +  " FROM film JOIN language ON film.language_id = language.id WHERE film.id = ?";
    	PreparedStatement stmt = conn.prepareStatement(sql);
    	stmt.setInt(1, filmId);
    	ResultSet filmResult = stmt.executeQuery();
    	if(filmResult.next()){
    		film = new Film();
    		film.setFilmId(filmResult.getInt("film.id"));
    		film.setTitle(filmResult.getString("title"));
    		film.setDesc(filmResult.getString("description"));
    		film.setReleaseYear(filmResult.getShort("release_year"));
    		film.setLangId(filmResult.getInt("language_id"));
    		film.setRentDur(filmResult.getInt("rental_duration"));
    		film.setRate(filmResult.getDouble("rental_rate"));
    		film.setLength(filmResult.getInt("length"));
    		film.setRepCost(filmResult.getDouble("replacement_cost"));
    		film.setRating(filmResult.getString("rating"));
    		film.setFeatures(filmResult.getString("special_features"));
    		film.setLanguage(filmResult.getString("language.name"));
    		film.setActors(findActorsByFilmId(filmId, conn));
    	}
    }catch(SQLException e) {
    	e.printStackTrace();
    }  
	  return film;
  }
  
  @Override
  public List<Film> findFilmByKeyword(String keyword) {
    List<Film> films = new ArrayList<>();
    List<Actor> actors = new ArrayList<>();
    try {
    	
    	Connection conn = DriverManager.getConnection(URL, user, pass);
    	keyword = "%" + keyword + "%";
    	String sql = "SELECT film.id, title, description, release_year, language_id, rental_duration, "
        + " rental_rate, length, replacement_cost, rating, special_features, language.name "
       +  " FROM film JOIN language ON film.language_id = language.id WHERE title LIKE ? OR description LIKE ?";
    	PreparedStatement stmt = conn.prepareStatement(sql);
    	stmt.setString(1, keyword);
    	stmt.setString(2, keyword);
    	ResultSet filmResult = stmt.executeQuery();
    	while(filmResult.next()){
    		int FilmId = filmResult.getInt("film.id");
    		String Title = filmResult.getString("title");
    		String Desc = filmResult.getString("description");
    		short ReleaseYear = filmResult.getShort("release_year");
    		int LangId = filmResult.getInt("language_id");
    		int RentDur = filmResult.getInt("rental_duration");
    		double Rate = filmResult.getDouble("rental_rate");
    		int Length = filmResult.getInt("length");
    		double RepCost = filmResult.getDouble("replacement_cost");
    		String Rating = filmResult.getString("rating");
    		String Features = filmResult.getString("special_features");
    		String Language = filmResult.getString("language.name");
    		actors = findActorsByFilmId(FilmId, conn);
    		Film film = new Film(FilmId, Title, Desc, ReleaseYear, LangId, RentDur, Rate,
    				Length, RepCost, Rating, Features, Language, actors);
    		films.add(film);
    	}
    }catch(SQLException e) {
    	e.printStackTrace();
    }  
	  return films;
  }

@Override
public Actor findActorById(int actorId) {
	Actor actor = null;
	try {
	Connection conn = DriverManager.getConnection(URL, user, pass);
	String sql = "SELECT id, first_name, last_name FROM actor WHERE id = ?";
	PreparedStatement stmt = conn.prepareStatement(sql);
	stmt.setInt(1, actorId);
	ResultSet actorResult = stmt.executeQuery();
	if(actorResult.next()) {
		actor = new Actor();
		actor.setId(actorResult.getInt(1));
		actor.setFirstName(actorResult.getString(2));
	    actor.setLastName(actorResult.getString(3));
	    
	}
	}
	catch(SQLException e) {
		e.printStackTrace();
	}
	return actor;
	
}

@Override
public List<Actor> findActorsByFilmId(int filmId, Connection conn) {
	List<Actor> actors = new ArrayList<>();
	  try {

//	    Connection conn = DriverManager.getConnection(URL, user, pass);
	    String sql = "SELECT id, first_name, last_name FROM actor "
	    		+ "JOIN film_actor ON actor.id = film_actor.actor_id "
	               + " WHERE film_id = ?";
	    PreparedStatement stmt = conn.prepareStatement(sql);
	    stmt.setInt(1, filmId);
	    ResultSet rs = stmt.executeQuery();
	    while (rs.next()) {
	      int actorId = rs.getInt("id");
	      String firstName = rs.getString("first_name");
	      String lastName = rs.getString("last_name");
	      Actor actor = new Actor(actorId, firstName, lastName);
	      actors.add(actor);
	    }
	  } catch (SQLException e) {
	    e.printStackTrace();
	  }
	  return actors;
	}

@Override
public Film createFilm(Film film) {
	
	  
	    String sql = "INSERT INTO film (title, description, release_year, language_id, rental_duration, rental_rate, length, replacement_cost, rating, special_features) "
	                   + " VALUES (?, ?, ?, ?, ?, ?, ? , ?, ?, ?)";
	    Connection conn = null;
	    try {
	      conn = DriverManager.getConnection(URL, user, pass);
	      conn.setAutoCommit(false); // Start transaction
	      PreparedStatement st = conn.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
	      st.setString(1, film.getTitle());
  		  st.setString(2, film.getDesc());
  		  st.setShort(3, film.getReleaseYear()); 
  		  st.setInt(4, film.getLangId()); 
  		  st.setInt(5, film.getRentDur()); 
  		  st.setDouble(6, film.getRate());
  		  st.setInt(7, film.getLength()); 
  		  st.setDouble(8, film.getRepCost()); 
  		  st.setString(9, film.getRating()); 
  		  st.setString(10, film.getFeatures());
	      int uc = st.executeUpdate();
	      System.out.println(uc + " film records created.");
	      ResultSet keys = st.getGeneratedKeys();
	      int filmId=0;
	      if(keys.next()) {
	        filmId = keys.getInt(1);
	        System.out.println("New film ID: " + filmId);
	      
	      }
	      if(filmId!=0) {
	      film.setFilmId(filmId);
	      }
	      // If we made it this far, no exception occurred.
	      conn.commit(); // Commit the transaction
	      
	    }
	    catch (SQLException e) {
	      // Something went wrong.
	      film = null;
	      System.err.println("Error during inserts.");
	      e.printStackTrace();
	      // Need to rollback, which also throws SQLException.
	      if (conn != null) {
	        try {
	          conn.rollback();
	        }
	        catch (SQLException e1) {
	          System.err.println("Error rolling back.");
	          e1.printStackTrace();
	        }
	      }
	    }
	    return film;
}
	


@Override
public boolean deleteFilm(Film film) {
	boolean deleted = false;
	Connection conn = null;
	  try {
	    conn = DriverManager.getConnection(URL, user, pass);
	    conn.setAutoCommit(false); // START TRANSACTION
	    String sql = "DELETE FROM film WHERE id = ?";
	    PreparedStatement stmt = conn.prepareStatement(sql);
	    stmt.setInt(1, film.getFilmId());
	    int updateCount = stmt.executeUpdate();
	   System.out.println("Film has been deleted");
	    conn.commit();             // COMMIT TRANSACTION
	  }
	  catch (SQLException sqle) {
	    sqle.printStackTrace();
	    if (conn != null) {
	      try { conn.rollback(); }
	      catch (SQLException sqle2) {
	        System.err.println("Error trying to rollback");
	      }
	    }
	    return deleted;
	  }
	  deleted = true;
	  return deleted;
}

public boolean updateFilm(Film film) {
	Connection conn = null;
	  try {
	    conn = DriverManager.getConnection(URL, user, pass);
	    conn.setAutoCommit(false); // START TRANSACTION
	    String sql = "UPDATE film SET title=?, description=?, release_year=?, language_id=?, rental_duration=?, rental_rate=?, length=?, replacement_cost=?, rating=?, special_features=? "
	               + " WHERE id=?";
	    PreparedStatement st = conn.prepareStatement(sql);
	    st.setString(1, film.getTitle());
		st.setString(2, film.getDesc());
		st.setShort(3, film.getReleaseYear()); 
		st.setInt(4, film.getLangId()); 
		st.setInt(5, film.getRentDur()); 
		st.setDouble(6, film.getRate());
		st.setInt(7, film.getLength()); 
		st.setDouble(8, film.getRepCost()); 
		st.setString(9, film.getRating()); 
		st.setString(10, film.getFeatures());
	    int updateCount = st.executeUpdate();
	    if (updateCount == 1) {
	      // Replace actor's film list
	      System.out.println("Film has been updated");
	      }
	      conn.commit();           // COMMIT TRANSACTION
	    }
	   catch(SQLException sqle) {
	    sqle.printStackTrace();
	    if (conn != null) {
	      try { conn.rollback(); } // ROLLBACK TRANSACTION ON ERROR
	      catch (SQLException sqle2) {
	        System.err.println("Error trying to rollback");
	      }
	    }
	    return false;
	  }
	  return true;
}

}