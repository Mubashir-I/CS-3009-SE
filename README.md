# Faculty Evaluation and Feedback System
From Feedback Forms and Reviews to Actionable Insights - Faculty Growth System

## Introduction
Faculty Evaluation System is no longer the optional component of the academic 
institutions, yet most underrated system among administration, faculty and 
students. Many existing problems of today’s classroom from students struggling 
with teachers teaching methodologies, classroom management, concerns over the 
grading policies, confusion with learning resources and many others can be 
solved just by few measures like effective communication and constructive 
feedback from students for teachers. Unfortunately, existing system fails in curing 
these nuisances. The students are sometime not interested in the end semester 
forced ticking of radio buttons, faculty on the other side might have to face 
comments that have no relevance to their teaching in the classroom. This results 
in no fruitful or constructive growth from the feedback ritual students perform 
each semester. Also, the results are so delayed that the students who provide 
feedback will not be able to see any results ruining their whole semester, 
struggling with the new teacher next semester and same process loops till the end 
of the degree. Teachers may also get frustrated, because by the time they are 
provided with the results they have got new batch of students to teach with new 
concerns. Concluding nothing but the equipping us with the “Faculty Grading 
System” not with the “Faculty Growth System” that is meant and needed.

## Project Overview
**Simple to use** faculty evaluation system, that students can use to honestly share their experiences, 
teachers can use to get constructive feedback on their _teaching methodologies_, 
_classroom management_, _interpersonal skills_, _LMS utilization_, _assessment fairness 
and transparency_. While administration can utilize the system to track faculty 
weakness and arrange specific workshops for improvement, teachers’ growth rate 
over semesters, actionable responses for teachers based on the data and active 
response on the students concerns so they feel listened.

## Intended Use of System
The system will mainly be used by students, faculty members, administrators, and heads of departments. 
1. **Students** will use the system to submit scheduled feedback for the courses they are enrolled in, as well as submit their comments _(reviews / suggestions)_ any time during the semester.  
2. **Faculty members** will receive this feedback in an anonymized form _(graphical insights and anonymized comments)_, allowing them to understand 
student concerns and improve their teaching methods.
3. **Administrators** will manage the overall system, including registering users, assigning faculty to 
courses, and enrolling students.  
4. **Heads of Departments** will use the system to review feedback across courses and identify 
patterns, helping them make informed decisions regarding faculty’s performance and quality.

## Key Features
- Allow system administrators to create digital surveys and feedback forms by choosing or adding qualitative and quantitative questions allowing different formats like Likert scale (strongly disagree to strongly agree), frequency scales (never to rarely), slider/percentage input, binary answers, text-based answers etc. 
- Allow system administrators to save digital surveys and feedback forms templates for future use. 
- Allow students to respond to the digital surveys and feedback forms posted. 
- Allow students to provide generic feedback messages. 
- Allow teachers to view their performance scores categorized among teaching methods, classroom management, interpersonal skills, quality of learning resources, assessment fairness and transparency, inclusivity and accessibility, professionalism and time management, emotional intelligence and approachability. 
- Allow teachers to see their growth chart over semesters and provide skills that still need to be enhanced. 
- Allow teachers to mark specific comments retaliatory, or potentially biased. 
- Generate performance reports for HODs and teachers to view common weakness among the faculty, faculty performance growth over time, high performers based on subject for future faculty allocations.  
- Allow HODs to filter teachers based on historical performance scores in specific subjects.
## Tech Stack
- Backend: Java
- Frontend: JavaFx
- Database: Microsoft SQL Server
## Project Setup

### Clone the Repository
```
git clone <repository-url>
cd <repository-folder>
```
### Setup Database (Microsoft SQL Server)
- Navigate to the _'database'_ folder.
- Run the schema script to create the database structure.
- Run the seed data script to populate dummy data.

### Configure Database User
- Open Microsoft SQL Server.
- Create or use an existing user for the application.
- Copy the username and password.

### Configure Application Properties
Create a file at:
_src/main/resources/config.properties_

Add the following content:
```
db.url=jdbc:sqlserver://localhost:1433;databaseName=faculty_feedback;encrypt=true;trustServerCertificate=true;
db.user=YOUR_USERNAME
db.password=YOUR_PASSWORD
db.driver=com.microsoft.sqlserver.jdbc.SQLServerDriver
app.starting_view=LoginPage.fxml
```

Replace **YOUR_USERNAME** and **YOUR_PASSWORD** with your actual database credentials.

Setup complete. Run the application using **IntelliJ**.

## Designed and Developed By
- [Muhammad Qasim](https://github.com/mq-0)
- [Muhammad Zia-ul-Baqa](https://github.com/zia5686)
- [Muhammad Mubashir Islam](https://github.com/Mubashir-I)
