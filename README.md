README
======

CV creator system for SEC Placement Team at Kingston University.

Authors:
- Sebastian Muszynski
- Ibrahim Sadiq
- Andrew Hirst
- Ace Shaulov
- Adam Kerr

How to run the project
------

1. Install all the gems.

  ```
  bundle install
  ```

2. Create the database, run all the migrations and load sample data.

  ```
  rake db:create && rake db:migrate && rake db:seed
  ```

3. Run the server.

  ```
  rails s
  ```

4. Visit the site and enjoy!

  ```
  localhost:3000
  ```