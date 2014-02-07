# require the gem pg.  You must type `gem install pg` at the command line
# if not, you'll get this error: `cannot load such file -- pg`
require 'pg'

# Faker makes fake data.  Same deal on the gem
require 'faker'


# ---------------------------------------
# IMPORTANT!  don't skip this step
# ---------------------------------------
# From the command line `createdb YOUR_DATABASE_NAME`
#
# otherwise your database won't exist when you try to connect to it

# set up a connection to the database you just created
pg_connection = PG.connect( dbname: 'YOUR_DATABASE_NAME' )


# use the methods provided by the PG class in the gem to
# interact with the database

# create a table: students
pg_connection.exec( "
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
  pg_connection.exec("
    insert into students
    values ('#{Faker::Name.last_name}', '#{Faker::Name.first_name}', '#{Faker::Company.bs}', #{rand(4)});
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

