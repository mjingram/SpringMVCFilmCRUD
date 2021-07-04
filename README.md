## Spring MVC Film C.R.U.D.

### Overview
This is a dynamic web application called "Film Query", designed by Michael Ingram and David Estrada. Film Query is a Spring C.R.U.D. (create, read/retrieve, update and delete) application that centers around film data from a local MySQL DBMS, which can be displayed to and manipulated by a user through web forms. 

### Technical Skills Used
* Java and Eclipse IDE
* Spring framework & MVC (Model-View-Controller) pattern
* ORM (Object-Relation Mapping) Software Development
* MAMP Software & MySQL DBMS
* JDBC API
* DAO pattern (for CRUD operations)
* HTML and CSS
* Encapsulation (getter and setter methods)
* Constructors

### Spring MVC and Separation of Concerns
By using the MVC pattern, we can implement a clear separation of concerns for our application's development and testing. With separate components such as the Dispatcher Servlet, Controllers, View Resolvers, and ModelAndView, we are able to designate each of them with individual tasks and responsibility. For example, in our project, our primary view resolvers are JSP files that allow us to render our models in the browser, which are only accessible to the Spring infrastructure and not by direct URL access

### How to Run
This program can be run on Eclipse IDE and requires connection to a local host server (preferably Tomcat v8.5), as well as a local database--in our case, we have been using a MySQL DBMS.

### Lessons Learned
We learned how to properly implement Spring MVC to our dynamic web application to utilize its prime function: separation of concerns. We can fully take advantage of this by our main controller, which implements our Java DAO (Data Access Object) interface, and ultimately controls the functionality of our application. We learned more about configuring our XML servlet file, such as adding the <mvc:annotation-driven> tag, allowing us to add annotations in our MVC application, or the <context:component-scan> tag, pointing to the correct Java package, both helping to direct the framework.
