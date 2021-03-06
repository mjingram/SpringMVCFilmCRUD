package com.skilldistillery.film.database;

import java.sql.Connection;
import java.util.List;
import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

public interface DatabaseAccessor {
	
  public Film findFilmById(int filmId);
  
  public List<Film> findFilmByKeyword(String keyword);
  
  public Actor findActorById(int actorId);
  
  public List<Actor> findActorsByFilmId(int filmId, Connection conn);
  
  public Film createFilm(Film film);
  
  public boolean deleteFilm(int filmId);
  
  public boolean updateFilm(Film film);
  
}
