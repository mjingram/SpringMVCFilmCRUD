package com.skilldistillery.film.app;

import java.util.InputMismatchException;
import java.util.List;
import java.util.Scanner;

import com.skilldistillery.film.database.DatabaseAccessor;
import com.skilldistillery.film.database.DatabaseAccessorObject;
import com.skilldistillery.film.entities.Film;



public class FilmQueryApp {
  
  DatabaseAccessor db = new DatabaseAccessorObject();

  public static void main(String[] args) {
    FilmQueryApp app = new FilmQueryApp();
    app.launch();	  
  }



  private void launch() {
    Scanner input = new Scanner(System.in);
   boolean repeat = true;
   while(repeat) {
    try {
    startUserInterface(input);
    repeat = false;
    }
    catch(InputMismatchException e) {
    	input.nextLine();
    	repeat = true;
    	System.err.println("Incorrect input.");
    }}
    
    input.close();
    
  }

  private void startUserInterface(Scanner input) {
    System.out.println("Welcome to Film Query!");
    boolean cont = true;
    int select;
    while(cont) {
    	menu();
    	System.out.println("Enter an option: ");
    	
    	select = input.nextInt();
    	
    	input.nextLine();
    	
    	if(select == 1) {
    		lookUpFilmByIdPrompt(input);	
    	}
    	else if(select == 2) {
    		lookUpFilmByKeywordPrompt(input);
    	}
    	else if(select == 3) {
    		AddFilmPrompt(input);
    	}
    	else if(select == 4) {
    		System.out.println("Exiting...");
    		cont = false;
    		break;
    	}else {
    		System.out.println("Invalid input");
    		continue;
    	}
    	// Another Search?
    	System.out.println("Search Again? Enter Yes or No");
    	String again = input.nextLine();
    	if(again.equalsIgnoreCase("n") || again.equalsIgnoreCase("no")){
    		cont = false;
    	}
    }
    System.out.println("Thanks for using film query!");
  }
  
  
  private void menu() {
	  System.out.println();
	  System.out.println("___Film Query Menu___");
	  System.out.println("1. Look Up Film By ID");
	  System.out.println("2. Look Up A Film By A Search Keyword");
	  System.out.println("3. Add New Film");
	  System.out.println("4. Exit");
	  System.out.println();
  }
  
  private void lookUpFilmByIdPrompt(Scanner input) {
	  	System.out.println("Enter a film ID: ");
		int filmID = input.nextInt();
		input.nextLine();
		
		Film film = db.findFilmById(filmID);
		if(film == null) {
			System.out.println("Film not found for id: " + filmID);
		}else {
			System.out.println("___Seach Result___");
			System.out.println(film.printFilm());
			System.out.println();
			System.out.println("Would you like to delete this film? Enter Yes or No");
			String confirmDelete = input.nextLine();
			if(confirmDelete.equalsIgnoreCase("yes") || confirmDelete.equalsIgnoreCase("y")) {
				db.deleteFilm(film);
			}
		}
		
  }
  
  private void lookUpFilmByKeywordPrompt(Scanner input) {
	  	System.out.println("Enter a keyword: ");
		String filmKeyword = input.nextLine();
		List<Film> films = db.findFilmByKeyword(filmKeyword);
		if(films.isEmpty()) {
			System.out.println("Film not found for keyword: " + filmKeyword);
		}else {
			System.out.println("___Seach Result___");
			for(Film f: films) {
				System.out.println(f.printFilm());
			}
			System.out.println();
		}
  }
  private void AddFilmPrompt(Scanner input) {
	  	System.out.println("Enter Film Title: ");
		String filmTitle = input.nextLine();
		System.out.println("Enter Film Description: ");
		String filmDesc = input.nextLine();
		System.out.println("Enter Film Release Year: ");
		short filmReYear = input.nextShort();
		input.nextLine(); //Flush Scanner
		//Hardcode English
		int filmLangId = 1;
		System.out.println("Enter Rental Duration Year: ");
		int filmRentDuration = input.nextInt();
		input.nextLine(); //Flush Scanner
		System.out.println("Enter Rental Rate: ");
		double filmRentRate = input.nextDouble();
		input.nextLine(); //Flush Scanner
		System.out.println("Enter Film Length: ");
		int filmLength = input.nextInt();
		input.nextLine(); //Flush Scanner
		System.out.println("Enter Replacement Cost: ");
		double filmReplCost = input.nextDouble();
		input.nextLine(); 
		System.out.println("Enter Film Rating: ");
		String filmRating = input.nextLine();
		System.out.println("Enter Film Special Features: ");
		String filmSpecFeat = input.nextLine();
		Film newFilm = db.createFilm(new Film(filmTitle, filmDesc, filmReYear, filmLangId, filmRentDuration, filmRentRate, filmLength, filmReplCost, filmRating, filmSpecFeat));
		if(newFilm != null) {
			System.out.println(newFilm);
		}
  
}


}
