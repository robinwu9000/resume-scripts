require 'mechanize'

agent = Mechanize.new

page = agent.get('https://accounts.careerbuilder.com/share/login.aspx')


# logging in
login_form = page.form('aspnetForm')

login_form['JobSeekerLoginV3:cbsys_login_email'] = "trong@sharklasers.com"
login_form['JobSeekerLoginV3:cbsys_login_password'] = "Trong12345"
page = agent.submit(login_form)


# accessing resume
page.link_with(href: "#resumes").click
page = page.links_with(href: /www.careerbuilder.com\/jobseeker\/resumes\/myresumes.aspx/).first.click


# uploading resume
resume_form = page.form('aspnetForm')
resume_form.file_uploads.first.file_name = "sample.txt"
resume_form.submit
