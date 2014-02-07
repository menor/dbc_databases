# University Course Database Design 
 
##Learning Competencies 

* Design database schema from problem data
* Model relationships in a relational database (one-to-one, one-to-many, many-to-many)

##Summary 

 Let's build a course database for a University!

There will be lots of missing data at first, but we'll fill it in.

1. Students can attend many classes
2. Classes can have many students
3. For each class a student attends, they have a final grade (think carefully about what table this data lives in)
4. Each class has a teacher
5. A teacher can teach only one class

##Releases

###Release 0 : Basic schema

Design a basic "course database" using the requirements described in the challenge description.

###Release 1 : Updated requirements

New requirements!  These replace the ones above.

1. Classes have many sections
2. Sections have a start time and an end time
3. Sections can either be Monday/Wednesday/Friday or Tuesday/Thursday
4. Students can attend many classes and must be assigned to a specific section,
   but they can only attend one section per class
5. Students are given a grade per section
6. Teachers can teach multiple sections, but a section is taught by only one teacher
7. Classes belong to a single department, but a department has multiple classes

Design an advanced "course database" using the requirements above.

###Release 2 : Enforcing time constraints

How would you enforce time constraints?  For example, students can't attend and teachers can't teach two sections whose times overlap.

With your pair, talk about how you'd do this.  Hint: you might want to use a whiteboard.

Are you able to infer if student and teacher data violate this constraint?  Even if the database itself doesn't have this constraint built in, if you can infer a violation, you could conceivably write ruby code to ensure this violation doesn't occur.  

What are the potential costs if you are relying on supporting ruby code to help validate your data?  Write an explanation in your gist.

#### Cross-listing classes

Sometimes schools allow courses to be cross-listed in multiple departments.  For example, a Combinatorics class might be in both the Mathematics and Computer Science departments.  

How would you alter the schema above to accommodate that?

Use [SQL Designer](https://socrates.devbootcamp.com/sql.html) to create your schema.  When you are done, save the XML of your schema and copy it into the source file `forum.md`. Then, take a screenshot of your final schema design, and upload it using a free image-upload service like [Min.us](http://minus.com).  Paste the URL of the screenshot into your source file (before your XML code). 

<!-- ##Optimize Your Learning  -->

##Resources

* [SQL Designer](https://socrates.devbootcamp.com/sql.html)