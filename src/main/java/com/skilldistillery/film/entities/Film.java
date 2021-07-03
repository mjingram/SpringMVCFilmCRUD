package com.skilldistillery.film.entities;

import java.util.List;

public class Film {
	private int filmId;
    private String title;
    private String desc;
    private short releaseYear;
    private int langId;
    private int rentDur;
    private double rate;
    private int length;
    private double repCost;
    private String rating;
    private String features;
    private String language;
    private List<Actor> actors;
    private String category;
    
	
	public Film(int filmId, String title, String desc, short releaseYear, int langId, int rentDur, double rate,
			int length, double repCost, String rating, String features, String language, List<Actor> actors, String category) {
		super();
		this.filmId = filmId;
		this.title = title;
		this.desc = desc;
		this.releaseYear = releaseYear;
		this.langId = langId;
		this.rentDur = rentDur;
		this.rate = rate;
		this.length = length;
		this.repCost = repCost;
		this.rating = rating;
		this.features = features;
		this.language = language;
		this.actors = actors;
		this.category = category;
	}
	public Film(String title, String desc, short releaseYear, int langId, int rentDur, double rate,
			int length, double repCost, String rating, String features) {
		super();
		
		this.title = title;
		this.desc = desc;
		this.releaseYear = releaseYear;
		this.langId = langId;
		this.rentDur = rentDur;
		this.rate = rate;
		this.length = length;
		this.repCost = repCost;
		this.rating = rating;
		this.features = features;
		
	}

	public Film() {};
	
	public int getFilmId() {
		return filmId;
	}
	public void setFilmId(int filmId) {
		this.filmId = filmId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public short getReleaseYear() {
		return releaseYear;
	}
	public void setReleaseYear(short releaseYear) {
		this.releaseYear = releaseYear;
	}
	public int getLangId() {
		return langId;
	}
	public void setLangId(int langId) {
		this.langId = langId;
	}
	public int getRentDur() {
		return rentDur;
	}
	public void setRentDur(int rentDur) {
		this.rentDur = rentDur;
	}
	public double getRate() {
		return rate;
	}
	public void setRate(double rate) {
		this.rate = rate;
	}
	public int getLength() {
		return length;
	}
	public void setLength(int length) {
		this.length = length;
	}
	public double getRepCost() {
		return repCost;
	}
	public void setRepCost(double repCost) {
		this.repCost = repCost;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public String getFeatures() {
		return features;
	}
	public void setFeatures(String features) {
		this.features = features;
	}
	
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + filmId;
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		Film other = (Film) obj;
		if (filmId != other.filmId) {
			return false;
		}
		if (title == null) {
			if (other.title != null) {
				return false;
			}
		} else if (!title.equals(other.title)) {
			return false;
		}
		return true;
	}

	public List<Actor> getActors() {
		return actors;
	}

	public void setActors(List<Actor> actors) {
		this.actors = actors;
	}

	@Override
	public String toString() {
		return "\nTitle: " + title + "\nFilm ID: " + filmId + "\nRelease Year: " + releaseYear + "\n" + "Rating: "
				+ rating + "\n" + "Description: " + desc + "\nLanguage" + language + "\n" + "Actors: " + actors
				+ "\nLanguage ID: " + langId + "\nRental Duration: " + rentDur + "\nRental Rate: "
				+ rate + "\nLength (minutes): " + length + "\nReplaceCost: " + repCost
				+ "\nSpecial Features: " + features + "\nCategory: " + category;
	}

	
	public String printFilm() {
		return "Title: " + title + ", Year: " + releaseYear + ", Rating: " + rate + ", Desc: " + desc + ", Language: " + language + ", Actors: " + actors;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}
	
	public String getCategory() {
		return category;
	}
	
	public void setCategory(String category) {
		this.category = category;
	}
	
}
