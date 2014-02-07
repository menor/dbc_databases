# require the gem sqlite3.  You must type `gem install sqlite3` at the command line
# if not, you'll get this error: `cannot load such file -- sqlite3`
require 'sqlite3'

# Faker makes fake data.  Same deal on the gem
require 'faker'


# Set up a connection to the database you have created
# Simply running this command creates a database in your working directory
db_connection = SQLite3::Database.new 'sqlite.db'

# use the methods provided by the Database class in the gem to
# interact with the database

# Create a table: students
db_connection.execute( "
  drop table if exists students;

  create table students
  (
  lastname  varchar(255),
  firstname varchar(255),
  cohort    varchar(255),
  phase     int
  );
")


# ---------------------------------------
# INSERT
# ---------------------------------------

db_connection.execute("
  insert into students
  values ('Lubaway', 'Topher', 'Fence Lizard', 14);
")

10.times do
  db_connection.execute("
    insert into students
    values ('#{Faker::Name.last_name}', '#{Faker::Name.first_name}', '#{Faker::Company.bs}', rand(4));
  ")
end


# ---------------------------------------
# SELECT
# ---------------------------------------

# todo

# ---------------------------------------
# UPDATE
# ---------------------------------------

# todo

# ---------------------------------------
# DELETE
# ---------------------------------------

# todo

