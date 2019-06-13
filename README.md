# INTRO TO ORMs

#### Author has many books

```SQL
books

id | title                 |author_id
--------------------------------------
1    "POODR"                     1
2    "Surviving Peanuts"         2
3    "99 bottles of oop"         1


authors

id | name
--------------------------------------
1    "Sandi Metz"
2    "Kevin McAlear"

```

#### Author has many books, mooks have many authors

```SQL
books

id | title
--------------------------------------
1    "POODR"
2    "Surviving Peanuts"
3    "99 bottles of oop"
3    "Sandi teaches Kevin to Code"


authors

id | name
--------------------------------------
1    "Sandi Metz"
2    "Kevin McAlear"


books_authors

id |    author_id     | book_id
--------------------------------------
1           1               1
2           2               2
3           1               3
4           1               4
5           2               4



```
