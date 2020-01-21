# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.create(username: "griffin", password:"ayyy")

j1 = Job.create(title: "Software Dev", company: "Youtube", post_date: Time.now, description: "Do stuff with video things")
j2 = Job.create(title: "Software Eng", company: "Google", post_date: Time.now, description: "Search Functions")
j3 = Job.create(title: "Food Maker", company: "Chipotle", post_date: Time.now, description: "Make food for hungry people")
j4 = Job.create(title: "Food Eater", company: "McDonalds", post_date: Time.now, description: "Take food from hungry people")

j5 = Job.create(title: "Mid Level Structural Engineer", company: "Manganaro Engineers, P.C. ", post_date: Time.now, description: "Seeking an experienced Senior Structural Engineer who has an exceptional track record in the design, analysis and detailing of structural systems. The ideal candidate will be self-motivated and be able to effectively carry out complete designs and also be able to supervise one or two entry-level engineers. Effective organizational and interpersonal skills are essential.")
j6 = Job.create(title: "Scheduler", company: "Randstad Engineering", post_date: Time.now, description: "Contract position Engineering & Construction client is looking for a Sr. Project Scheduler/Project Controls Specialist for a long term assignment in Westwood, MA. You need 8-20 years of experience in project planning & scheduling in support of heavy industrial engineering and/or construction projects. This position is heavily weighted on scheduling, but you should have some cost experience. ** Hourly rate is commensurate with experience & education **")
j7 = Job.create(title: "System Software Engineer Intern", company: "Hewlett Packard Enterprise", post_date: Time.now, description: "At Hewlett Packard Enterprise (HPE), we bring together the brightest minds to create breakthrough technology solutions and advance the way people live and work. Our legacy inspires us as we forge ahead dedicated to helping our customers make their mark on the world.")
j8 = Job.create(title: "Software Engineer", company: "Dawn Technologies", post_date: Time.now, description: "Skills: Visual Basic.Net, Java, HTML, XML, XSD, SQL, VB.NET, ASP.NET, Java Script, C#, XML,VB Script.Amazon WebServices (AWS), Web API, RESTful WebService, API Framework, COM/COM+, ActiveX, Microsoft Share Point Portal Server.Apache Tomcat, IIS Web Server.Oracle 10g/ 11g,SQL Server ,SQL ,PL/SQL,TOAD, SQL Developer on Windows XP/NT O/S.")
j9 = Job.create(title: "Software Engineer - Entry to Experienced Leve", company: "National Security Agency", post_date: Time.now, description: "The professionals at the National Security Agency (NSA) have one common goal: to protect our nation. The mission requires a strong offense and a steadfast defense. The offense collects, processes and disseminates intelligence information derived from foreign signals for intelligence and counterintelligence purposes. The defense prevents adversaries from gaining access to sensitive classified national security information.")



js1 = JobState.create(status: "applying", job_id: j1.id, user_id: u1.id)
js2 = JobState.create(status: "hired", job_id: j3.id, user_id: u1.id)
js3 = JobState.create(status: "applying", job_id: j4.id, user_id: u1.id)
js4 = JobState.create(status: "hired", job_id: j5.id, user_id: u1.id)
js5 = JobState.create(status: "applying", job_id: j6.id, user_id: u1.id)
js6 = JobState.create(status: "hired", job_id: j2.id, user_id: u1.id)
js7 = JobState.create(status: "applying", job_id: j7.id, user_id: u1.id)
js8 = JobState.create(status: "hired", job_id: j8.id, user_id: u1.id)
js9 = JobState.create(status: "applying", job_id: j9.id, user_id: u1.id)
