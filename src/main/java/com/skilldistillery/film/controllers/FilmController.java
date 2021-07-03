package com.skilldistillery.film.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.film.database.DatabaseAccessor;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {

	@Autowired
	private DatabaseAccessor dbAccessor;

	public void setDatabaseAccessor(DatabaseAccessor dbAccessor) {
		this.dbAccessor = dbAccessor;

	}

	@RequestMapping(path = "home.do", method = RequestMethod.GET)
	public String home() {
		return "home";
	}

	@RequestMapping(path = "mainResult.do", method = RequestMethod.GET)
	public String mainResultPage() {
		return "mainResult";
	}

	@RequestMapping(path = "success.do", method = RequestMethod.GET)
	public String successPage() {
		return "success";
	}

	@RequestMapping(path = "fail.do", method = RequestMethod.GET)
	public String failPage() {
		return "fail";
	}

	@RequestMapping(path = "findFilmById.do", params = "id", method = RequestMethod.GET)
	public ModelAndView findFilmById(int id) {
		ModelAndView mv = new ModelAndView();
		Film f = dbAccessor.findFilmById(id);
		mv.addObject("film", f);
		
		if (f != null) {
			mv.setViewName("mainResult");
		} else {
			mv.setViewName("fail");
		}
		
		
		return mv;
	}

	@RequestMapping(path = "findFilmByKeyword.do", params = "keyword", method = RequestMethod.GET)
	public ModelAndView findFilmByKeyword(String keyword) {
		ModelAndView mv = new ModelAndView();
		List<Film> films = dbAccessor.findFilmByKeyword(keyword);
		mv.addObject("films", films);
		mv.setViewName("mainResultList");
		return mv;
	}

	@RequestMapping(path = "newFilm.do", method = RequestMethod.POST)
	public ModelAndView createFilm(Film film, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		Film newFilm = dbAccessor.createFilm(film);
		System.out.println("The new film is: " + newFilm);
		redir.addFlashAttribute("createdFilm", film);
		if (newFilm != null) {
			mv.setViewName("success"); // we can always go back and redirect to findFilmById.do
		} else {
			mv.setViewName("fail");
		}

		return mv;
	}

//	@RequestMapping(path = "filmAdded.do", method = RequestMethod.GET)
//	public ModelAndView added() {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("result");
//		return mv;
//	}

	@RequestMapping(path = "deleteFilm.do", method = RequestMethod.POST)
	public ModelAndView deleteFilm(int filmId, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		System.out.println("ID: " + filmId);
		boolean deletedFilm = dbAccessor.deleteFilm(filmId);
		redir.addFlashAttribute("deletedFilm", filmId);

		if (deletedFilm == true) {
			mv.setViewName("success");

		} else {
			mv.setViewName("fail");
		}
		return mv;
	}

//	@RequestMapping(path = "filmDeleted.do", method = RequestMethod.GET)
//	public ModelAndView deleted() {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("result");
//		return mv;
//	}

	@RequestMapping(path = "updateFilm.do", method = RequestMethod.POST)
	public ModelAndView updateFilm(Film film, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		redir.addFlashAttribute("updatedFilm", film);
		boolean updatedFilm = dbAccessor.updateFilm(film);

		if (updatedFilm == true) {
			mv.setViewName("succss");
		} else {
			mv.setViewName("fail");
		}

		return mv;
	}

}
