# Alpha Blog

This is the repo for the first rails app I developed while studying the Complete Ruby on Rails Developer Course on Udemy.

# Issue & Fixes:

Issue: 09.07.2019 - I was having an issue deploying the app to Heroku. After running ```git push heroku master```, the task would not execute and the terminal would return:

```bash
Could not detect rake tasks
remote:  !     ensure you can run `$ bundle exec rake -P` against your app
remote:  !     and using the production group of your Gemfile.
remote:  !     Activating bundler (2.0.1) failed:
remote:  !     Could not find 'bundler' (2.0.1) required by your /tmp/build_2e6c96ff8cd3ab115ee56c51d05c7a28/Gemfile.lock.
remote:  !     To update to the latest version installed on your system, run `bundle update --bundler`.
remote:  !     To install the missing version, run `gem install bundler:2.0.1`
remote:  !     Checked in 'GEM_PATH=/tmp/build_2e6c96ff8cd3ab115ee56c51d05c7a28/vendor/bundle/ruby/2.6.0', execute `gem env` for more information
remote:  !     
remote:  !     To install the version of bundler this project requires, run `gem install bundler -v '2.0.1'`
```

Fix: I read through this Stack Overflow [thread](https://stackoverflow.com/questions/36394297/heroku-push-error-could-not-detect-rake-tasks) and found a helpful suggestion that said I should remove "BUNDLED WITH <bundler version #>" from the Gemfile.lock file. Thankfully this worked. This suggestion referenced this [link](https://github.com/bundler/bundler/issues/6882#issuecomment-469858087) as the reason for the solution.
