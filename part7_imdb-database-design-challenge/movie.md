![](http://i.minus.com/ibyHdLKVa7VqyA.png)



which actor works the most?
  select name, COUNT(person_id)
  from roles
  where COUNT(person_id) = MAX
  join person on id=person.id
  group_by COUNT(person_id)


which movie was the most expensive assuming that people are the biggest cost?

  select title, budget
  From movies join roles on id=roles.movie_id
  Where count(movie_id) MAX

which person is the most versatile, playing the greatest number of different roles?

  select DISTINCT role, person_id from roles
  where COUNT (person_id) = MAX

who is the most awarded actor?
  select COUNT (person_id), name
  from people_awards JOIN person on person_id = id
  where count(person_id) == MAX
  ==> 10, Brad Pitt

who is the most jaded actor, working the most without an award?

  select person_id from roles
  where COUNT (person_id) = MAX
  person_id not in people_awards

