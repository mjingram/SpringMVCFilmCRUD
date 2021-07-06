## Spring MVC Film C.R.U.D.

### Overview
This is a dynamic web application called "Film Query", designed by Michael Ingram and David Estrada. Film Query is a Spring C.R.U.D. (create, read/retrieve, update and delete) application that centers around film data from a local MySQL DBMS, which can be displayed to and manipulated by a user through web forms.

### Technical Skills Used
* Java 8 and Eclipse IDE
* Spring framework & MVC (Model-View-Controller) pattern
* ORM (Object-Relation Mapping) Software Development
* MAMP Software & MySQL DBMS
* JDBC API
* DAO pattern (for CRUD operations)
* HTML, CSS, BootStrap 5
* DOM manipulation with JavaScript ES6
* Encapsulation, Abstraction, Inheritance, Polymorphism
* JSP Views and JSTL for Dynamic Web Pages

### Spring MVC and Separation of Concerns
By using the MVC pattern, we can implement a clear separation of concerns for our application's development and testing. With separate components such as the Dispatcher Servlet, Controllers, View Resolvers, and ModelAndView, we are able to designate each of them with individual tasks and responsibility. For example, in our project, our primary view resolvers are JSP files that allow us to render our models in the browser, which are only accessible to the Spring infrastructure and not by direct URL access

### How to Run
This program can be run on Eclipse IDE and requires connection to a local host server (preferably Tomcat v8.5), as well as a local database--in our case, we have been using a MySQL DBMS.
On the home page, Films can be searched by either Film ID or keyword. After searching for a film, the results will be displayed in a table on a results page. If you search by film ID, buttons at the bottom of the results allow you to either update or delete that film.
Don't worry if you forget the BB-8 droid gives helpful suggestions on each page.

### Front End Design
The design for the app is mainly done with CSS and BootStrap 5 and follows a Star Wars theme. Color Scheme was meant to be similar to "Block Buster" colors although they are not exact. Both the home page and the two result pages have a 2 second splash page that shows a character with a quote. The splash page is controlled via JavaScript ES6 scripts files for DOM manipulation. JavaScript files also show and hide various divs when buttons are pressed for functionality. The stars background animation is a static image and a filter is linearly dragged across it on an infinite loop creating the effect that the stars are shining. The BB-8 animated helper droid is made entirely with CSS divs and animation. Credit goes to Frank's Laboratory for the CSS droid design. JavaScript controls the droids speech bubbles in a similar fashion to the results, update and delete divs.

### Lessons Learned
We learned how to properly implement Spring MVC to our dynamic web application to utilize its prime function: separation of concerns. We can fully take advantage of this by our main controller, which implements our Java DAO (Data Access Object) interface, and ultimately controls the functionality of our application. We learned more about configuring our XML servlet file, such as adding the <mvc:annotation-driven> tag, allowing us to add annotations in our MVC application, or the <context:component-scan> tag, pointing to the correct Java package, both helping to direct the framework.
