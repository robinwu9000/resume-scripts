# Basic Rundown of things
So this repo will be primarily for the scripts that our web
app will run. We don't need to worry about any Rails or
JavaScript or that shit.

## Todos:
  + resume updating scripts for all the websites
   - name the files after the website you're scraping
   from
   eg: monster.rb, dice.rb, indeed.rb, etc
   - if you run into any problems, it's fine just make a
   note of it and we can try addressing it together
   - make a fake account to test that it works
  + we might need to make another script to run all these
  scripts, but we can worry about it when the time comes

## notes and tips:
  + for your first version, we can just use set login
  credentials. just make sure it works, thats priority #1
  + eventually, they will probably have to accept arguments
  like `form["email"] = ARGV[0], form["password"] =
  ARGV[1]` (that's how we'll automate them)
  + I'm not doing error checking, but we should add it
  later on
  + you're going to have to use the Chrome Inspector to
  navigate your way around the websites
  + **Mechanize does not work with JavaScript events,
  like the ones where `href = javascript:void(0);`.
  Mechanize will break, so try and look for a work
  around**
  + docs for `Mechanize`:
  http://docs.seattlerb.org/mechanize/
  + print stuff out all the time while you're making it,
  like `pp page, pp form, page.links.each {|l| print
  l.text}, etc.`
  + run your code multiple times, since things might
  change every session. this is very important because a
  link ID may go from `#link-5` to `#link-73`. In these
  cases, you'll have to find a different selector
  + use regex in that case, try and make it as selective
  as possible
