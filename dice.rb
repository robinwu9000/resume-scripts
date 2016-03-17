require 'mechanize'

agent = Mechanize.new

page = agent.get('https://www.dice.com/dashboard/login')

#logging in
login_form = page.form('signInForm')

login_form['email'] = "trong@sharklasers.com"
login_form['password'] = "Trong12345"
# pp login_form
page = agent.submit(login_form)

pp page
