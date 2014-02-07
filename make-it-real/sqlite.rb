# ---------------------------------------
# ---------------------------------------
# Introduction:
#
# this file is all you need to create a database, setup that database,
# connect to it and interact with it using SQLite3.
#
# if you're not sure what this is about, just keep reading and try running
# this script, look at the output and think about what's happening.
#
# if you're already comfortable with all of this, good for you.  rejoice!
# ---------------------------------------
# ---------------------------------------

# first, choose to name your database.  SQLite databases live in one file:
# feel free to be creative.  this will be the name of your file
DATABASE_NAME = 'first-sqlite-database'

# require the gem sqlite3.  You must type `gem install sqlite3` at the command line
# if not, you'll get this error: `cannot load such file -- sqlite3`
require 'sqlite3'

# Faker makes fake data.  Same deal on the gem
require 'faker'


# Set up a connection to the database you have created
# Simply running this command creates a database in your working directory
db_connection = SQLite3::Database.new "#{DATABASE_NAME}.db"

# the following warning message comes up when you run this script.
# if you want to avoid it, uncomment this single following line:

# I18n.enforce_available_locales = false # uncomment THIS line to avoid the message below

# ---------------------------------------
# [deprecated] I18n.enforce_available_locales will default to true in the future.
# If you really want to skip validation of your locale you can set
#   I18n.enforce_available_locales = false
# to avoid this message.
# ---------------------------------------

# use the methods provided by the Database class in the gem to
# interact with the database

# ---------------------------------------
# cleanup (if we've run this more than once)
# ---------------------------------------

db_connection.execute("drop table if exists students;")

# ---------------------------------------
# create the table we'll use later
# ---------------------------------------

# you don't need to use the word SQL below.  it's a "heredoc" (read about it) in Ruby
# that lets you declare multi-line string variables.  we use <<-SQL ... SQL  to specify
# the heredoc so that Sublime notices it and highlights the contents as SQL
db_connection.execute(<<-SQL
  create table students
  (
    lastname  varchar(255),
    firstname varchar(255),
    cohort    varchar(255),
    phase     int
  );
  SQL
)

# ---------------------------------------
# INSERT
# ---------------------------------------
puts "-"*50
print "inserting some data ... "

db_connection.execute(<<-SQL
  insert into students
  values ('Lubaway', 'Topher', 'Fence Lizard', 14);
  SQL
)

10.times do
  phase = rand(4)

  # prepare the data.  this is definitely WAY more complicated than it needs to be
  data = Faker::Name.first_name, Faker::Name.last_name, Faker::Company.bs
  labels = %w[fname lname company]
  fake_data = Hash[labels.map(&:to_sym).zip data.map{|d| d.gsub("'", "''")}]

  # it could have been this simple, for example.  the goal is to escape apostrophes
  # fn, ln, co = Faker::Name.first_name.gsub("'", "''"),
  #              Faker::Name.last_name.gsub("'", "''"),
  #              Faker::Company.bs.gsub("'", "''")

  db_connection.execute(<<-SQL
    insert into students (lastname, firstname, cohort, phase)
    values ('#{fake_data[:fname]}', '#{fake_data[:lname]}', '#{fake_data[:company]}', #{phase});
  SQL
  )
end

puts "done."

# ---------------------------------------
# SELECT
# ---------------------------------------
puts "-"*50
print "selecting some data ... "


# grab everything in the table
results = db_connection.execute("select * from students;") # note that sometimes quotes are enough

puts "done."
puts "verifying selection ..."
puts

p results

puts "and done. "

# ---------------------------------------
# UPDATE
# ---------------------------------------
puts "-"*50
print "updating some data ... "


# update the table
db_connection.execute(<<-SQL
  update students
  set firstname = 'Homer', lastname = 'Simpson'
  where phase <= 1;
  SQL
)

puts "done."
puts "verifying changes ..."
puts

# verify that the data was changed
results = db_connection.execute("select * from students;")
p results

puts "and done."

# ---------------------------------------
# DELETE
# ---------------------------------------
puts "-"*50
print "deleting some data ... "

# update the table
db_connection.execute(<<-SQL
  delete from students
  where phase <= 1;
  SQL
)

puts "done."
puts "verifying changes ..."
puts

# verify that the data was changed
p  db_connection.execute("select * from students;")

puts "and done."
