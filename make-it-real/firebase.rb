# require the gem sqlite3.  You must type `gem install sqlite3` at the command line
# if not, you'll get this error: `cannot load such file -- sqlite3`

# 1. Require the gem firebase.  You must type `gem install firebase` at the command line
# if not, you'll get this error: `cannot load such file -- firebase`
require 'firebase'
# read more about this gem here: https://github.com/oscardelben/firebase-ruby


# you can use faker to help you generate fake data easily.
# it's another gem you'll have to install with `gem install faker`
require 'faker'

# sign up for a firebase account and set the uri here.
base_uri="https://YOUR_PRIVATE_URL.firebaseio.com/"

# set up a connection to the database you have created
db_connection = Firebase.new(base_uri)

# ---------------------------------------
# INSERT
# ---------------------------------------

# use the methods provided by the Firebase class to write data
db_connection.push("students",
{
  lastname:   "Lubaway",
  firstname:  "Topher",
  cohort:     "Fence Lizard",
  phase:      "14"
  })

10.times do
  db_connection.push("students",
  {
    lastname:   Faker::Name.last_name,
    firstname:  Faker::Name.first_name,
    cohort:     Faker::Company.bs,
    phase:      rand(10)
    })
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

