# IMDB Database Design 
 
##Learning Competencies 

* Design database schema from problem data
* Model relationships in a relational database (one-to-one, one-to-many, many-to-many)

##Summary 

 You know the Internet Movie Database?  Let's figure out their schema.

Requirements:

1. A person has a first and last name
2. A person has many roles
3. A person with a roles is in a movie (e.g., "Producer of X", "Supporting Actor in Y")
4. A movie has a title, rating, and release date
5. A movie has a genre, and a genre has many movies
6. A person can have awards, and awards can be won by multiple people (e.g., "Best Actor" is an awards, won by someone in 2010 and 2011)

##Releases

###Release 0 : Design schema

Design a database schema for IMDB that meets the requirements.

Use [SQL Designer](https://socrates.devbootcamp.com/sql.html) to create your schema.  When you are done, save the XML of your schema and copy it into the source file `imdb.md`. Then, take a screenshot of your final schema design, and upload it using a free image-upload service like [Min.us](http://minus.com).  Paste the URL of the screenshot into your source file (before your XML code). 


<!-- ##Optimize Your Learning  -->

##Resources

* [SQL Designer](https://socrates.devbootcamp.com/sql.html)