package com.skilldistillery.film.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.film.database.*;
import com.skilldistillery.film.entities.*;

@Controller
public class FilmController {
	
	@Autowired
	private DatabaseAccessor dbAccessor;
	
	public void setDatabaseAccessor(DatabaseAccessor dbAccessor) {
		this.dbAccessor = dbAccessor;
	}
	
	
	@RequestMapping(path= "/findFilmById.do", params = "id", method=RequestMethod.GET)
	public ModelAndView findFilmById(int id) {
		ModelAndView mv = new ModelAndView();
		Film f = dbAccessor.findFilmById(id);
		mv.addObject("film", f);
		mv.setViewName("mainResult");
		return mv;
	}
	
	@RequestMapping(path= "/findFilmByKeyword.do", params= "keyword", method = RequestMethod.GET) 
	public ModelAndView findFilmByKeyword(String keyword) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mainResult");
		return mv;
	}
	
	@RequestMapping(path= "/home.do", method=RequestMethod.POST)
	public ModelAndView createFilm(Film film, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		redir.addFlashAttribute("createdFilm", film);
		Film newFilm = dbAccessor.createFilm(film);
		if (newFilm != null) {
			mv.setViewName("succss");
		}
		else {
			mv.setViewName("fail");
		}
		
		return mv;
	}
	
	
	 @RequestMapping(path= "/mainResult.do", params = "name", method=RequestMethod.POST)
	 public ModelAndView deleteFilm(Film film, RedirectAttributes redir) {
			ModelAndView mv = new ModelAndView();
			redir.addFlashAttribute("deletedFilm", film);
			boolean deletedFilm = dbAccessor.deleteFilm(film);
			if (deletedFilm == true) {
				mv.setViewName("succss");
			}
			else {
				mv.setViewName("fail");
			}
			
			return mv;
		}
	 
	 @RequestMapping(path= "/mainResult.do", params = "name", method=RequestMethod.POST)
	 public ModelAndView updateFilm(Film film, RedirectAttributes redir) {
		 ModelAndView mv = new ModelAndView();
		 redir.addFlashAttribute("updatedFilm", film);
		 boolean updatedFilm = dbAccessor.updateFilm(film);
		 if (updatedFilm == true) {
			 mv.setViewName("succss");
		 }
		 else {
			 mv.setViewName("fail");
		 }
		 
		 return mv;
	 }
	
	
	
}
