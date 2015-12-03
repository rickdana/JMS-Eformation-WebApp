# JMS-Eformation-WebApp

The application manages the training courses offered by a private school.
The school offers to people a Web application listing available courses and for each, the 
next training sessions scheduled.
The end user should be able to:
- filter the list of courses by a keyword potentially present in the title of the course
- filter the list of courses by a date corresponding to the period of a training session
- filter the list of courses by a location, the location coming from a drop-down 
menu.
The end user selects a training session and subscribe to it providing their personal details
(First and Last name, Address, Phone, Email).
To simplify the model, we will consider that an end user subscribing to many training 
sessions will be registered in multiple occurrences in the DB.

The database will be composed of the following tables:
LOCATION
 ID → Number AUTO (PK)
 CITY → Char Not Null
COURSE
 CODE → Char Not Null (PK)
 TITLE → Char Not Null
COURSE_SESSION
 ID → Number AUTO (PK)
 START_DATE → Date Not Null
 END_DATE → Date Not Null
 COURSE_CODE → Char Not Null (FK)
 LOCATION_ID → Number Not Null (FK)
CLIENT
 ID → Number AUTO (PK)
 LASTNAME → Char Not Null
 FIRSTNAME → Char Not Null
 ADDRESS → Char Not Null
 PHONE → Char Not Null
 EMAIL → Char
 COURSE_SESSION_ID → Number Not Null (FK)
Use MySQL.

each  registration is added in a JMS TOPIC that is observed by a Listener
