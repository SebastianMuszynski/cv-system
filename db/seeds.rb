# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

User.create(email: "K123456@kingston.ac.uk", password: "123123123", photo: "", first_name: "Sebastian", last_name: "Muszynski")
User.create(email: "K395671@kingston.ac.uk", password: "Hell6666", photo: "https://s3.amazonaws.com/uifaces/faces/twitter/gerrenlamson/128.jpg", first_name: "Abraham", last_name: "McLeod")
User.create(email: "K193486@kingston.ac.uk", password: "Jingle12", photo: "https://s3.amazonaws.com/uifaces/faces/twitter/idiot/128.jpg", first_name: "John", last_name: "Smith")
User.create(email: "K432354@kingston.ac.uk", password: "KerrySpy", photo: "https://s3.amazonaws.com/uifaces/faces/twitter/adellecharles/128.jpg", first_name: "Pamela", last_name: "Henderson")
User.create(email: "K735692@kingston.ac.uk", password: "Chirka1234", photo: "https://s3.amazonaws.com/uifaces/faces/twitter/minipunk/128.jpg", first_name: "Craig", last_name: "Farber")
User.create(email: "K174682@kingston.ac.uk", password: "GoatsAreCrazy", photo: "https://s3.amazonaws.com/uifaces/faces/twitter/stylecampaign/128.jpg", first_name: "Jane", last_name: "McAllison")
User.create(email: "K222987@kingston.ac.uk", password: "EBELLARp", photo: "https://s3.amazonaws.com/uifaces/faces/twitter/annapickard/128.jpg", first_name: "Emily", last_name: "Bellar")
User.create(email: "K876401@kingston.ac.uk", password: "RocknRoll", photo: "https://s3.amazonaws.com/uifaces/faces/twitter/davitferreira/128.jpg", first_name: "Alice", last_name: "Booper")
User.create(email: "K111116@kingston.ac.uk", password: "Chiseng1", photo: "https://s3.amazonaws.com/uifaces/faces/twitter/5key/128.jpg", first_name: "Jet", last_name: "Li")
User.create(email: "K243513@kingston.ac.uk", password: "SwimProf", photo: "https://s3.amazonaws.com/uifaces/faces/twitter/joostvanderree/128.jpg", first_name: "Kim", last_name: "Phillips")

StaffMember.create(email: "K123456@kingston.ac.uk", password: "123123123", first_name: "Sebastian", last_name: "Muszynski")
StaffMember.create(email: "KSM0001@kingston.ac.uk", password: "Elephant1", first_name: "John", last_name: "Bennon")
StaffMember.create(email: "KSM0002@kingston.ac.uk", password: "MonkeyPunch", first_name: "Adam", last_name: "Plunder")
StaffMember.create(email: "KSM0003@kingston.ac.uk", password: "HelloWorld", first_name: "Eva", last_name: "Dendez")
StaffMember.create(email: "KSM0004@kingston.ac.uk", password: "Chap1979", first_name: "Boris", last_name: "Jobson")
StaffMember.create(email: "KSM0005@kingston.ac.uk", password: "Oscars2014", first_name: "Nicole", last_name: "Stiegman")

Job.create(title: "Software Engineer", description:"A major part of this role will be the development, maintenance and upgrading of key software packages that are critical to the E.ON Group. The software packages involved could cover numerous specialist areas of our engineering business, from risk assessments to control systems, and integrity management to thermodynamic modelling.", remote_logo_url:"http://www.thedrum.com/uploads/drum_basic_article/91161/main_images/eon.png", deadline: Date.today + 4.months, category:"Computing", salary:14000 )

Job.create(title: "Junior Business System Analyst", description:"As a Junior Business System Analyst within the IS/IT team you’ll work with key contacts from each of our business units, gaining key experience and extensive insight into their operations. An opportunity that we feel is unrivalled anywhere else.", remote_logo_url:"http://www.thegrocer.co.uk/Pictures/300xAny/3/3/9/21339_DANONE.JPG", deadline: Date.today + 6.months, category:"Computing", salary:12000 )

Job.create(title: "IT and Digital Communications", description:"Throughout the year, you'll be embedding yourself within our global IT community. You can expect to learn a huge amount about technology and GSK as an organisation, constantly taking on new challenges and enhancing your technical or functional expertise, while also improving your business knowledge. You'll also gain valuable communication, planning, problem-solving, team-working and networking skills.", remote_logo_url:"https://pbs.twimg.com/profile_images/378800000532716624/4f04e6a303341df5bbe81beafdf29f33_400x400.jpeg", deadline: Date.today + 3.months, category:"Computing", salary:13500 )

Job.create(title: "Various Roles", description:"Industrial placement at IBM will get you a global leader’s name on your CV. It is also a year filled with challenges that will stretch you and will kick start your professional career.

We’re looking for enthusiastic, driven and innovative individuals.", remote_logo_url:"http://i.forbesimg.com/media/lists/companies/ibm_416x416.jpg", deadline: Date.today + 7.months, category:"Computing", salary:13000 )

Job.create(title: "Various Roles", description:"We offer student programmes that provide opportunities to gain quality career experience.  Employing a hands-on approach, students apply their ideas and innovative attitudes to challenging projects throughout the entire year.", remote_logo_url:"https://pbs.twimg.com/profile_images/458704019897061377/GPLhINBv.png", deadline: Date.today + 4.months, category:"Computing", salary:16000 )

Job.create(title: "Engineer", description:"Learning and supported by the best in the business, you will be given practical experience and taught valuable skills. You will also experience real-life assignments that will test you like never before. Perform well enough, and you may get a chance to join our graduate programme - a fantastic start to an international career with one of the worlds most prestigious companies.", remote_logo_url:"http://upload.wikimedia.org/wikipedia/en/1/13/Rolls_Royce_logo.jpg", deadline: Date.today + 4.months, category:"Engineering", salary:15000 )

Job.create(title: "Building Surveyor", description:"Our placement year opportunities generally last between 10-12 months. You will work within a team (reporting to an Associate Director or Senior Surveyor) you will work on a variety of projects. ", remote_logo_url:"http://www.waterprojectsonline.com/images/atkins_logo.jpg", deadline: Date.today + 5.months, category:"Engineering", salary:13000 )

Job.create(title: "Research Scientist", description:"The key objective of the placement is to support in the development of Curran® a bio-derived material that is produced from agri-food by products, in particular sugarbeet (after sugar extraction). Curran® is a nano-cellulose based product which has a range of potential applications ranging from paints and coatings to composite materials. ", remote_logo_url:"http://cellucomp.com/wp-content/themes/cellucomp/img/logo_footer.png", deadline: Date.today + 5.months, category:"Science", salary:14500 )

Job.create(title: "Clinical Project Administrator", description:"Covance is one of the world’s largest and most comprehensive drug development services companies, having helped pharmaceutical and biotech companies develop one-third of all prescription medicines in the market today. In this role, Covance interns will gain a unique insight and understanding of clinical research in the UK, working as a Clinical Project Administrator. You will get the opportunity to liaise with interfacing departments such as drug safety, data management; regulatory as well as visiting study sites with our Clinical Research Associates.", remote_logo_url:"http://upload.wikimedia.org/wikipedia/de/5/51/Covance_logo.svg", deadline: Date.today + 6.months, category:"Science", salary:16000 )