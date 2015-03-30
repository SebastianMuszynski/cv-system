# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

User.create(id: 1, email: "K123456@kingston.ac.uk", password: "123123123", photo: "", first_name: "Sebastian", last_name: "Muszynski")
User.create(id: 2, email: "K395671@kingston.ac.uk", password: "Hell6666", photo: "https://s3.amazonaws.com/uifaces/faces/twitter/gerrenlamson/128.jpg", first_name: "Abraham", last_name: "McLeod")
User.create(id: 3, email: "K193486@kingston.ac.uk", password: "Jingle12", photo: "https://s3.amazonaws.com/uifaces/faces/twitter/idiot/128.jpg", first_name: "John", last_name: "Smith")
User.create(id: 4, email: "K432354@kingston.ac.uk", password: "KerrySpy", photo: "https://s3.amazonaws.com/uifaces/faces/twitter/adellecharles/128.jpg", first_name: "Pamela", last_name: "Henderson")
User.create(id: 5, email: "K735692@kingston.ac.uk", password: "Chirka1234", photo: "https://s3.amazonaws.com/uifaces/faces/twitter/minipunk/128.jpg", first_name: "Craig", last_name: "Farber")
User.create(id: 6, email: "K174682@kingston.ac.uk", password: "GoatsAreCrazy", photo: "https://s3.amazonaws.com/uifaces/faces/twitter/stylecampaign/128.jpg", first_name: "Jane", last_name: "McAllison")
User.create(id: 7, email: "K222987@kingston.ac.uk", password: "EBELLARp", photo: "https://s3.amazonaws.com/uifaces/faces/twitter/annapickard/128.jpg", first_name: "Emily", last_name: "Bellar")
User.create(id: 8, email: "K876401@kingston.ac.uk", password: "RocknRoll", photo: "https://s3.amazonaws.com/uifaces/faces/twitter/davitferreira/128.jpg", first_name: "Alice", last_name: "Booper")
User.create(id: 9, email: "K111116@kingston.ac.uk", password: "Chiseng1", photo: "https://s3.amazonaws.com/uifaces/faces/twitter/5key/128.jpg", first_name: "Jet", last_name: "Li")
User.create(id: 10, email: "K243513@kingston.ac.uk", password: "SwimProf", photo: "https://s3.amazonaws.com/uifaces/faces/twitter/joostvanderree/128.jpg", first_name: "Kim", last_name: "Phillips")

StaffMember.create(id: 1, email: "K123456@kingston.ac.uk", password: "123123123", first_name: "Sebastian", last_name: "Muszynski")
StaffMember.create(id: 2, email: "KSM0001@kingston.ac.uk", password: "Elephant1", first_name: "John", last_name: "Bennon")
StaffMember.create(id: 3, email: "KSM0002@kingston.ac.uk", password: "MonkeyPunch", first_name: "Adam", last_name: "Plunder")
StaffMember.create(id: 4, email: "KSM0003@kingston.ac.uk", password: "HelloWorld", first_name: "Eva", last_name: "Dendez")
StaffMember.create(id: 5, email: "KSM0004@kingston.ac.uk", password: "Chap1979", first_name: "Boris", last_name: "Jobson")
StaffMember.create(id: 6, email: "KSM0005@kingston.ac.uk", password: "Oscars2014", first_name: "Nicole", last_name: "Stiegman")

Job.create(id: 1, title: "Software Engineer", description:"A major part of this role will be the development, maintenance and upgrading of key software packages that are critical to the E.ON Group. The software packages involved could cover numerous specialist areas of our engineering business, from risk assessments to control systems, and integrity management to thermodynamic modelling.", remote_logo_url:"http://www.thedrum.com/uploads/drum_basic_article/91161/main_images/eon.png", deadline: Date.today + 4.months, category:"Computing", salary:14000 )
Job.create(id: 2, title: "Junior Business System Analyst", description:"As a Junior Business System Analyst within the IS/IT team you’ll work with key contacts from each of our business units, gaining key experience and extensive insight into their operations. An opportunity that we feel is unrivalled anywhere else.", remote_logo_url:"http://www.thegrocer.co.uk/Pictures/300xAny/3/3/9/21339_DANONE.JPG", deadline: Date.today + 6.months, category:"Computing", salary:12000 )
Job.create(id: 3, title: "IT and Digital Communications", description:"Throughout the year, you'll be embedding yourself within our global IT community. You can expect to learn a huge amount about technology and GSK as an organisation, constantly taking on new challenges and enhancing your technical or functional expertise, while also improving your business knowledge. You'll also gain valuable communication, planning, problem-solving, team-working and networking skills.", remote_logo_url:"https://pbs.twimg.com/profile_images/378800000532716624/4f04e6a303341df5bbe81beafdf29f33_400x400.jpeg", deadline: Date.today + 3.months, category:"Computing", salary:13500 )
Job.create(id: 4, title: "IMB Engineer", description:"Industrial placement at IBM will get you a global leader’s name on your CV. It is also a year filled with challenges that will stretch you and will kick start your professional career. We’re looking for enthusiastic, driven and innovative individuals.", remote_logo_url:"http://i.forbesimg.com/media/lists/companies/ibm_416x416.jpg", deadline: Date.today + 7.months, category:"Computing", salary:13000 )
Job.create(id: 5, title: "Web developer", description:"We offer student programmes that provide opportunities to gain quality career experience.  Employing a hands-on approach, students apply their ideas and innovative attitudes to challenging projects throughout the entire year.", remote_logo_url:"https://pbs.twimg.com/profile_images/458704019897061377/GPLhINBv.png", deadline: Date.today + 4.months, category:"Computing", salary:16000 )
Job.create(id: 6, title: "Engineer", description:"Learning and supported by the best in the business, you will be given practical experience and taught valuable skills. You will also experience real-life assignments that will test you like never before. Perform well enough, and you may get a chance to join our graduate programme - a fantastic start to an international career with one of the worlds most prestigious companies.", remote_logo_url:"http://upload.wikimedia.org/wikipedia/en/1/13/Rolls_Royce_logo.jpg", deadline: Date.today + 4.months, category:"Engineering", salary:15000 )
Job.create(id: 7, title: "Building Surveyor", description:"Our placement year opportunities generally last between 10-12 months. You will work within a team (reporting to an Associate Director or Senior Surveyor) you will work on a variety of projects. ", remote_logo_url:"http://www.waterprojectsonline.com/images/atkins_logo.jpg", deadline: Date.today + 5.months, category:"Engineering", salary:13000 )
Job.create(id: 8, title: "Research Scientist", description:"The key objective of the placement is to support in the development of Curran® a bio-derived material that is produced from agri-food by products, in particular sugarbeet (after sugar extraction). Curran® is a nano-cellulose based product which has a range of potential applications ranging from paints and coatings to composite materials. ", remote_logo_url:"http://upload.wikimedia.org/wikipedia/en/1/13/Rolls_Royce_logo.jpg", deadline: Date.today + 5.months, category:"Science", salary:14500 )
Job.create(id: 9, title: "Clinical Project Administrator", description:"Covance is one of the world’s largest and most comprehensive drug development services companies, having helped pharmaceutical and biotech companies develop one-third of all prescription medicines in the market today. In this role, Covance interns will gain a unique insight and understanding of clinical research in the UK, working as a Clinical Project Administrator. You will get the opportunity to liaise with interfacing departments such as drug safety, data management; regulatory as well as visiting study sites with our Clinical Research Associates.", remote_logo_url:"http://upload.wikimedia.org/wikipedia/de/5/51/Covance_logo.svg", deadline: Date.today + 6.months, category:"Science", salary:16000 )

cv_params = { 
  personal_profile: "I am a focused individual, with an analytical mind preferring subjects involving logic and numeracy. Through an early interest in chemistry combined with the study of maths and physics, I have developed a keen intention to pursue a career in the industrial chemistry sector; particularly the petrochemical industry. Currently in my second year at Kingston University, I am studying Chemistry with Honours. Through development academically as well as utilising life skills learnt through work experience, I see myself as anorganized, punctual and amiable individual now seeking invaluable work experience in the aforementioned field. I have a methodical approach by dividing a problem in its constituent units and analysing each of them in order to individuate the fault in the process. This has been enhanced by personal experience of moving from abroad to U.K. which involved analysis and resolution of many challenges: learning a new language and integrating into a new social environment.", 
  education:"BSc Hons Chemistry, Kingston University, Sept 2010 – Sept 2014, First Year Modules Grade Second year modules Grade, Inorganic Chemistry I A Pharmaceutical Chemistry pending, Inorganic Chemistry II B Foundation Chemistry I pending, Organic Chemistry I B Foundation Chemistry II pending, Organic Chemistry II C Modern Laboratory Techniques pending, On track for a 2:1, A Levels and GCSE’s, Kingston College, Sept 2006 – June 2010, A Level’s 3 - Chemistry (A), Biology (B), Maths (C), GCSE’s 10 - including Chemistry, Biology, English and Maths", 
  technical_skills:"Familiar with the following analytical techniques: 13Carbon NMR; 1H NMR; I.R. Spectroscopy; Mass Spectroscopy; U.V. Spectroscopy;  Gas Chromatography; Thin-Layer Chromatography; Gel-Electrophoresis; Familiar with the following laboratory techniques: - Acid-Base Titration; - Re-crystallization; - Simple and Fractional Distillation; - Hickman Still micro-scale Distillation; - Bomb Calorimeter for Enthalpy Changes determination; - Reflux Heating; - Vacuum Filtration; - Flame Test", 
  project_work:"This project was an element of my degree as a part of the Essential Laboratory techniques module. Its purpose was so I could become familiar with using a spectrophotometer. We prepared a series of dilutions using dyes and measured the absorbance of each concentration. For this I had to utilise skills which I had learnt in a previous lab session where I learnt the appropriate techniques for measuring accurately. The results were then plotted on a graph. In this experiment I worked with a peer in order to finish the tasks in the given time limit, demonstrating good team working and time management skills. The completion of this experiment was only possible through the utilisation of our communication and organisational skills. I encountered a difficulty towards the end of my experiment causing me to get outlier results. In this situation, having little time, we had to prepare replacement dilutions quickly and efficiently, demonstrating that I can remain calm and focused as well as working well under pressure. I gained valuable knowledge of the Beer- Lambert's law and how to analyse and use the results which I got from this experiment to answer questions. For this experiment, I got a mark of 70%. ", 
  professional_experience:"Freshers Angel, Kingston University Student Union, Jan 2011 - Present I am responsible for welcoming new students, providing guidance in the first phase of University life, providing information on organisations and facilities and promoting events. The skills I have acquired were empathic abilities in order to understand other people’s expectations and feelings, ability to interact with people from different social, cultural, religious backgrounds, proactive listening and communication and team working skills Front of House Team Member, Kingston Theatre, Sept 2010 – Dec 2010 I was responsible greeting and welcoming guests, ensuring public health and safety in the auditoriums, monitoring public areas to ensure absence of risks, assisting customers with enquires and complaints, and promoting preview and events. I developed teamwork skills by interacting with colleagues and customers in order to provide good service to the public and to reach the company's goals. I also improved my communication skills by interacting with customers in order to assist with enquiries and complaints. I worked effectively under pressure effectively managing my time and various tasks.", 
  interests_and_achievements:"I enjoy travelling as it is a good way of acquiring knowledge of different cultures and societies and of developing a mutual understanding between people. It is also valuable for learning new languages, improving communication skills, organisational and problem solving abilities. I have been travelling in India, China and the USA.", 
  references:"References available on request" 
}

Cv.create(cv_params.merge({status: [:accepted, :rejected].sample, name:"Sebastian Muszynski",address:"34 Duffield Rd, Salford, Lancashire, M6 7RD", email:"K123456@kingston.ac.uk", phone_number:"07437840050", user_id: 1, job_id: 9}))
Cv.create(cv_params.merge({status: [:accepted, :rejected].sample, name:"Abraham McLeod",address:"64 Zoo Lane, Kingston, Surrey, KT1 3LK", email:"K395671@kingston.ac.uk", phone_number:"07537585563", user_id:2, job_id:7}))
Cv.create(cv_params.merge({status: [:accepted, :rejected].sample, name:"John Smith",address:"12 Ipreth av, Manchester, Lancashire, M4 1MG", email:"K193486@kingston.ac.uk", phone_number:"07367754746" , user_id:3, job_id:4}))
Cv.create(cv_params.merge({status: [:accepted, :rejected].sample, name:"Pamela Henderson",address:"74 Portland rd, Clapham, Surrey,SW1 3HD", email:"K432354@kingston.ac.uk", phone_number:"07353789443" , user_id:4, job_id:2}))
Cv.create(cv_params.merge({status: [:accepted, :rejected].sample, name:"Craig Farber",address:"23 Bulls St, Wimbledon, Surrey,SW1 5BV", email:"K735692@kingston.ac.uk", phone_number:"07459371044" , user_id:5, job_id:7}))
Cv.create(cv_params.merge({status: [:accepted, :rejected].sample, name:"Jane McAllison",address:"54 Johnfosters Av, Norbiton, Surrey, SW1 7SH", email:"K174682@kingston.ac.uk", phone_number:"07445684463" , user_id:6, job_id:9}))
Cv.create(cv_params.merge({status: [:accepted, :rejected].sample, name:"Emily Bellar",address:"34 Pillsbury Rd, Surbiton, Surrey, SW2 1YT", email:"K222987@kingston.ac.uk", phone_number:"07357451736" , user_id:7, job_id:1}))
Cv.create(cv_params.merge({status: [:accepted, :rejected].sample, name:"Alice Booper",address:" Penrhyn Road, Kingston upon Thames, Surrey KT1 2EE", email:"K876401@kingston.ac.uk", phone_number:"07753672385" , user_id:8, job_id:7}))
Cv.create(cv_params.merge({status: [:accepted, :rejected].sample, name:"Jet Li",address:"93 Legger St, Strawberry Hill, Twickenham, TW1 4ST", email:"K111116@kingston.ac.uk", phone_number:"07563735599" , user_id:9, job_id:9}))
Cv.create(cv_params.merge({status: [:accepted, :rejected].sample, name:"Kim Phillips",address:"Sherpa Pl, Pimlico, Surrey SW1 9KM", email:"K243513@kingston.ac.uk", phone_number:"07111346855" , user_id:10, job_id:9}))

Cv.find_each do |cv|
  Feedback.create(status: cv.status, personal_details: "You can provide your personal email.", personal_profile: "A little bit too short.", education: "Perfect!", technical_skills: "You can also mention about programming skills.", project_work: "Detailed description, good.", professional_experience: "Try to be as specific as it is possible when it comes to writing the dates.", interests_and_achievements: "What about achievements?", references: "OK.", other_comments: "It's good! Try to spend some time on improving Interests and Achievements section.", staff_member_id: (1..StaffMember.count).to_a.sample, cv_id: cv.id)
end