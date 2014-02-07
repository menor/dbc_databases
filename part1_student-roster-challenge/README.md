# Database Drill Student Roster 
 
##Learning Competencies 

* Design database schema from problem data

##Summary 

 Take a look at the text representation of a database.  It looks similar to an Excel spreadsheet, which is a helpful way of visualizing how databases store information.

<table class="table">
  <thead>
    <tr>
      <th>id</th><th>first_name</th><th>last_name</th><th>gender</th><th>birthday</th><th>email</th><th>phone</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td><td>Nikolas</td><td>Friesen</td><td>female</td><td>1998-12-24</td><td>agustina_braun@wintheiser.info</td><td>449.897.7415</td>
    </tr>
    <tr>
      <td>2</td><td>Randi</td><td>Halvorson</td><td>male</td><td>1997-01-29</td><td>heber.upton@bechtelarwisozk.biz</td><td>(697)436-2633</td>
    </tr>
    <tr>
      <td>3</td><td>Sally</td><td>Buckridge</td><td>female</td><td>1997-10-30</td><td>nora@treutel.name</td><td>1-351-672-6358x02502</td>
    </tr>
    <tr>
      <td>4</td><td>Morris</td><td>Swift</td><td>male</td><td>1995-06-27</td><td>cordell@sanfordkuhlman.org</td><td>(600)142-5639x9380</td>
    </tr>
    <tr>
      <td>5</td><td>Sidney</td><td>Ortiz</td><td>male</td><td>1997-04-04</td><td>erling@davis.name</td><td>554.170.3265</td>
    </tr>
    <tr>
      <td>6</td><td>Reid</td><td>Skiles</td><td>male</td><td>1994-10-13</td><td>mike_harvey@nikolaus.com</td><td>(543)511-2123</td>
    </tr>
    <tr>
      <td>7</td><td>Violet</td><td>Dickens</td><td>female</td><td>1994-11-19</td><td>rubye_olson@collins.biz</td><td>1-410-486-1411x5058</td>
    </tr>
    <tr>
      <td>8</td><td>Marguerite</td><td>Flatley</td><td>female</td><td>1995-05-28</td><td>wanda_okon@hane.name</td><td>572.978.5828x07860</td>
    </tr>
    <tr>
      <td>9</td><td>Cary</td><td>Schoen</td><td>male</td><td>1996-07-31</td><td>fay@runolfon.biz</td><td>1-828-134-7828x66958</td>
    </tr>
    <tr>
      <td>10</td><td>Mazie</td><td>Gibson</td><td>female</td><td>1995-09-23</td><td>doug@roberts.biz</td><td>144.038.7351x24117</td>
    </tr>
  </tbody>
</table>


Each column (or in DB speak **field**) has a name.  We can describe the structure of this table independently of what data is in it.  We'd write the structure like this:

<pre>
+------------+
| students   |
+------------+
| id         |
| first_name |
| last_name  |
| gender     |
| birthday   |
| email      |
| phone      |
+------------+
</pre>

### Conventions

We can use any field names and table names we want, but there are some conventions that we follow for our own sanity.  These are conventions &mdash; you might see other conventions used elsewhere.

1. Table names are pluralized, e.g., "students," "products," "todos," etc.
2. Each row is uniquely identified by an automatically-incrementing integer field called <code>id</code>.  [ActiveRecord migrations](http://guides.rubyonrails.org/migrations.html) do this for you automatically, but you'll have to be explicit when designing your tables by hand.
3. We use snake_case_like_this to name fields, rather than camelCaseLikeThis &mdash; the latter looks weird and out of place in Ruby.
4. Fields that involve dates or times end in <code>&#95;at</code> or <code>&#95;on</code> (<code>created&#95;at</code>, <code>updated&#95;at</code>, <code>completed&#95;at</code>, etc.) unless it's really obvious they already refer to something time-related.  We'd say <code>birthday</code> rather than <code>born_on</code>, for example.
5. When in doubt, make your field and table names as self-explanatory as possible.  Avoid field names like <code>type</code>, <code>kind</code>, <code>status</code>, etc.  They could refer to anything!  Err on the side of clarity, even if it seems verbose.  Other coders will appreciate it, and computers don't care if your field name is 20 characters long rather than 5 characters long.
6. Rails includes <code>created&#95;at</code> and <code>updated&#95;at</code> fields by default, which record when a row is first added to a table and when it was last updated.  This is good record-keeping, so we'll generally include the same fields in our tables.


### Primary Keys

Each row in a database table should have a <strong>primary key</strong>.  This is a field (or collection of fields) which uniquely identify that row from all other rows.  Rails defaults to using a <strong>synthetic primary key</strong>, which is just an arbitrary, auto-incrementing integer usually denoted by the field name <code>id</code>.  It's called "synthetic" because it doesn't have any inherent meaning.

The assumption that the primary key is an auto-incrementing integer called <code>id</code> is baked deeply into Rails.  Most web apps follow this convention, and we will, too.

##Releases

###Release 0 : Design the schema

Visit the [SQL Designer](https://socrates.devbootcamp.com/sql.html) on Socrates and recreate the <tt>students</tt> table above.

In SQL Designer, you'll notice that you can pick a "type" for each field.  For example, the birthday field should be a "date" type.  There's a core set of datatypes that all SQL-based databases support, but many have additional types.
You can read more about that at [w3schools.com Data Types][] or on [Wikipedia : Data Types][].

This is what the [table](http://f.cl.ly/items/0z3p0i1Y0G3h1A3V1d2p/Screen%20Shot%202012-05-17%20at%205.04.38%20PM.png) should look like, colors and all.

When you are done, save the XML of your schema and copy it into the `student_schema.md` file. Then, take a screenshot of your final schema design, and upload it using a free image-upload service like [Min.us](http://minus.com).  Paste the URL of the screenshot at the top of the file (before your XML code).  

<!-- ##Optimize Your Learning  -->

##Resources

* [w3schools.com Data Types](http://www.w3schools.com/sql/sql_datatypes.asp)
* [Wikipedia : Data Types](http://en.wikipedia.org/wiki/SQL#Data_types)