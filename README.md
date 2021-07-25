# README

A simplified version of the game ![Countdown!](https://www.youtube.com/watch?v=GvV8aVEJmiU) using Rails.

* Ruby version:
ruby 2.6

* System dependencies:
rails 6.0 (flagged --skip-active-storage to pass on cloud storage services)

* Configuration:
```bash
bundle install
```

* Deployment instructions:

From parent directory, launch the server to see the Rails' welcome page.
```bash
rails s
```
You are given a random set of letters.
* You have to enter the longest english word you can find using only letters in the grid.
* After typing your answer, you get your score combined with the time you took, and eventually an error message if you failed.


