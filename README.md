```
Canterbury Christ Church University
Computing, Digital Forensics and Cybersecurity
BSc (Hons) Computer Science
Academic year 2021- 22
```
```
Individual Project 40 MCOMD3PRJ
```
### Full-stack Mobile Application Development with Swift

```
Jure Sunic
Supervisor: Senior Lecturer, Dr Alexios Louridas
j.sunic1240@canterbury.ac.uk
```
This report is submitted in partial fulfilment of the requirement for the BSc/BEng in Computer science at
Canterbury Christ Church University.

I declare that this report is my own original work containing no personal data as defined in the Data Protection Act
and that I have read, understood and accepted the University’s regulations on plagiarism/intellectual property
rights/research ethics (in particular, the Research Governance Handbook) and the Individual Project 20 Module
Handbook in its entirety.

```
Further, I accept that digital and/or hard copies of my Individual Project 40, or parts thereof, may be made
available to other students, individuals and organisations after it has been marked.
```
```
Finally, I accept that no copy of my Individual Project 20 will ever be returned, regardless of the circumstances.
```
```
Signed
```
```
Date of Submission: 9th of May 2022
```

## Abstract

This diploma thesis outlines the development process and the result of a mobile application that assists
individuals in finding a handyman for everyday concerns. The goal is to make a greater variety of
individuals aware of the applicability of such a service-related application. Industry-related problems are
researched, and existing home-service applications lacking certain features are introduced.

This determines the consequence of shortcomings that this application eliminates. Also, the existing
mobile application development technologies have been compared and selected to use in the project. The
proposed system design covers a combination of back-end and front-end services with a mediator, API.

Moreover, development methods have been presented with diagrams and figures to understand the
development process better. The resulting mobile application is thoroughly evaluated, and finally,
potential future additions are suggested. Ethical and legal requirements have been considered.


## Acknowledgements

I would like to express my gratitude to my mentor, Dr Alexios Louridas, for his excellent guidance during
the writing of my diploma thesis and for teaching me the fundamentals of object-oriented programming in
the first year of my studies.

Moreover, I want to thank Dr Vijay Sahota and lecturer Amina Souag for providing me with some extra
guidelines for the project. Their advice, experience, and support were invaluable in developing this
project. Therefore, part of its quality is significantly due to them.

I would also like to thank my Canterbury Christ Church University colleagues and students and others
who contributed to creating this work, particularly during the evaluation phase.


## Table of Contents

- Abstract
- Acknowledgements
- Table of Contents
- List of Figures
- List of Tables
- 1 Introduction
   - 1.1 Project Introduction
   - 1.2 Project Aims
      - 1.2.1 Mobile app Goals and Objectives
   - 1.3 Justification of the Project
   - 1.4 Learning Outcome
   - 1.5 Evaluation Method
      - 1.5.1 Technical Feasibility
      - 1.5.2 Schedule Feasibility
      - 1.5.3 Economic Feasibility
      - 1.5.4 Home-service Increase in the Future
   - 1.7 Summary of Report
- 2. Background Research
   - 2.1 Identifying the Application Users
   - 2.2 Competition Research
   - 2.4 Technology Stack
   - 2.5 Hardware and Software Requirements
- 3. Development Methods
   - 3.1 Agile Development
   - 3.2 Use Cases
      - 3.2.1 Use Case Diagram
      - 3.2.2 Use Case Scenarios
   - 3.3 User Flow Diagram
- 4. Design and Implementation
   - 4.1 Develop Minimum Viable Product
      - 4.1.1 Concept and Wire-framing
      - 4.1.2 Style Guide
      - 4.1.3 User interface (UI) & user experience (UX) design
      - 4.1.4 Software Architecture
   - 4.2 Code Development
      - 4.2.1 Back-end Development
      - 4.2.2 Application Programming Interface (API)
      - 4.2.3 Front-end Development
- 5. Testing and Evaluation
   - 5.1 Mini-scenarios
   - 5.2 Unit Testing
   - 5.3 Application Testing with Volunteers
- 6. Future Works and Conclusion
   - 6.1 Future Works
      - 6.1.3 Advanced Functionalities
      - 6.1.4 Deploying to the App Store
   - 6.2 Conclusion
- Legal Considerations
- Ethical Considerations
- References
- Bibliography
- Appendices
   - Appendix A: Glossary
   - Appendix B: Marking Scheme
   - Appendix C: Changes to the Project Initiation Document
   - Appendix D: Current Environment Investigation Report
   - Appendix E: Requirements Specification
   - Appendix F: Design Report
   - Appendix G: Implementation
   - Appendix H: Testing
   - Appendix I: User Guide
   - Appendix J: Project Management
- Appendix K: Meetings with Supervisor
- Appendix L: Agile Development


## List of Figures
- FIGURE 1. PER CENT OF CONSUMERS THAT DID NOT HAVE ONE COMPANY IN MIND WHEN SEARCHING (RAY, 2021) List of Figures
- FIGURE 2. MOBILE APP OPERATING SYSTEM MARKET SHARE IN POPULAR COUNTRIES. (SAGAR, 2022)
- FIGURE 3. GROWTH IN SEARCHES FOR SELECTED SERVICES (RAY, 2021)
- FIGURE 4. UNDERSTANDING AGE’S ROLE ON HOME SERVICE DEMAND (MICETICH AND FISHER, 2022)
   - SERVICES MARKET SIZE, SHARE, TRENDS, OPPORTUNITIES AND FORECAST, 2022) REACH USD 2,247. 84 BILLION BY 2028, GROWING AT A CAGR OF 29.90% FROM 2021 TO 2028. (HOME
- FIGURE 5. HOME SERVICES MARKET SIZE WAS VALUED AT USD 346.66 BILLION IN 2020 AND IS PROJECTED TO
- FIGURE 6. XCODE INTERFACE
- FIGURE 7. FIREBASE LOGO
- FIGURE 8. SIMPLE EXAMPLE OF HOW GIT WORKS (GIT: REFERENCE SHEET, 2022)
- FIGURE 9. MY TRELLO BOARD
- FIGURE 10. EXAMPLE OF MY NOTION INTERFACE
- FIGURE 11. LIDAR SCANNER ON THE IPHONE 13 PRO (ZAWACKI, 2022)
- FIGURE 12. DIFFERENT STAGES OF SDLC
- FIGURE 13. DIAGRAM SHOWING STEPS IN AGILE DEVELOPMENT (1ST SPRINT, 2 ND SPRINT, N SPRINTS).
- FIGURE 14. SCRUM STRUCTURE (SCRUM - WHAT IT IS, HOW IT WORKS, AND WHY IT'S AWESOME, N.D.)
- FIGURE 15. SIMPLE EXAMPLE OF USE CASE DIAGRAM
- FIGURE 16. USE CASE DIAGRAM
- FIGURE 17. USE CASE DIAGRAM FOR ENTERING THE APP
- FIGURE 18. USE CASE DIAGRAM FOR THE MAIN MENU
- FIGURE 19. THE USER FLOW DIAGRAM OF ENTERING THE FIXIT MOBILE APP
- FIGURE 20. THE USER FLOW DIAGRAM FOR NAVIGATING IN THE MAIN MENU
- FIGURE 21. SOME OF THE WIREFRAMES FOR THE FIXIT APPLICATION
- FIGURE 22. FIXIT COLOUR PALETTE
- FIGURE 23. COLOUR WHEEL
- FIGURE 24. DIFFERENCES BETWEEN UX AND UI DESIGN (DUCKMANTON, 2019)
- FIGURE 25. THE USER-FLOW DIAGRAM MADE WITH UI DESIGNS
- FIGURE 26. SIMPLE REPRESENTATION OF MVC ARCHITECTURE WORKFLOW
- FIGURE 27. PROTOTYPE OF FIXIT SYSTEM ARCHITECTURE
   - 2022) FIGURE 28. DB-ENGINES RANKING OF DOCUMENT STORES (HISTORICAL TREND OF DOCUMENT STORES POPULARITY,
- FIGURE 29. THE DOCUMENT DATABASE MODEL REPRESENTATION IN JSON
- FIGURE 30. AUTHORIZATION CODE FLOW DIAGRAM
- FIGURE 31. TESTING CLASSES FOR THE FIXIT APPLICATION
- FIGURE 32 USER FLOW DIAGRAM EXAMINED IN DETAIL


## List of Tables
- TABLE 1. MARKET SIZE AND PROJECTS COMPLETED IN CERTAIN SECTORS List of Tables
- TABLE 2. PROJECT GOALS AND OBJECTIVES
- TABLE 3. TARGETED AUDIENCE FOR THE APPLICATION USE
- TABLE 4. NUMBER OF DOWNLOADS AND TOOLS THAT ABOVE MENTIONED APPLICATIONS USE
- TABLE 5. MAIN ADVANTAGES AND DISADVANTAGES OF OBJECTIVE-C AND SWIFT
   - DEVELOPER, N.D.) TABLE 6. MINIMUM AND RECOMMENDED SPECIFICATIONS TO RUN THE XCODE (XCODE - SUPPORT - APPLE
- TABLE 7. MVP EXPLANATION
- TABLE 8. MVP OF THE FIXIT MOBILE APPLICATION
- TABLE 9. TYPOGRAPHY GUIDELINES FOR THE IOS MOBILE DEVELOPMENT (KENNEDY, 2021)
- TABLE 10. FREE SERVICES PROVIDED BY FIREBASE (FIREBASE PRICING, 2022)
- TABLE 11. MAIN BENEFITS OF USING APIS
- TABLE 12. FOUR MAJOR API CATEGORIES AND THEIR USE DIFFERENCES.
- TABLE 13. API’S TO BE USED IN FIXIT
- TABLE 14. THE MOST IMPORTANT ADVANTAGES OF USING SWIFT PROGRAMMING LANGUAGE
- TABLE 15. LIST OF LIBRARIES THAT ARE GOING TO BE USED IN THE FUTURE DEVELOPMENT OF THE APPLICATION
- TABLE 16. ADVANCED FUNCTIONALITIES FOR FUTURE IMPLEMENTATION
- TABLE 17. PRODUCT BACKLOG, USER STORIES AND PRIORITISATION


## 1 Introduction

New technology has revolutionised our lives in ways we have never seen before. We can see a
progressive shift in every aspect of life. Our lives have grown easier, and we can utilise various devices to
accomplish the needed activities.

Though there are many other significant technologies, mobile technology has revolutionised the
technological paradigm in ways that could not have been predicted a few years ago. Its impact can be
seen in the fact that there are already more than 2 billion cell phones in use, and this figure is changing at
an alarming rate. This massive quantity of mobile devices, together with developing technologies like AI,
ML, and the Internet of Things, is significantly transforming the whole mobile sector.

Nowadays, mobile applications are gradually becoming the platform of choice for most individuals. More
and more apps are being developed to guarantee that most services available on a desktop computer can
also be accessed via mobile devices. The market for these applications is expanding rapidly. New and
inventive concepts and applications continue to emerge, expanding an already diverse variety of services
and functions to meet most customers' needs. (Mathur, 2022)

According to Statista, the annual app revenue has reached $111 billion. Moreover, it shows a tremendous
rise in the number of applications available on the Play Store and App Store. From a technical
perspective, developing a mobile app is a process or procedure for creating software that runs on
smartphones. The app is later downloaded and installed by a user from the App Stores. (Sagar, 2022)

What about people that have difficulties finding the right person to be able to help them around the
house? According to a study, increased consumer spending on remodelling, combined with an unexpected
jump in home equity, more household cash flow due to mortgage refinancing, spending substitutions due
to reduced spending on restaurants and vacations, cheap loans due to lower interest rates, and a spike in
prices and inflation due to Covid-19, has resulted in a 17% increase in the TAM^1 for home services,
growing from $506 billion to $595 billion. Households are completing over 728.3 million projects per
year across the three market categories: home improvement, maintenance, and emergency repairs.
(Micetich and Fisher, 2022)

##### 1

```
total addressable market
```

```
Market size Number of projects completed per
year
```
```
Home improvement $376.9 billion 148.5 billion
```
```
Home maintenance $157.7 billion 500.3 billion
```
```
Home emergency repairs $60.6 billion 79.5 billion
Table 1. Market size and projects completed in certain sectors
```
The total number of home service professionals is anticipated to be 5.8 million, 141.5 million dwelling
units in the United States, with a median structural age of 43 years. The housing stock increases as new
units are created to suit the growing population. However, even a million new units per year are
insufficient to keep the average residence age from rising further. Three hundred thirty-one million people
live in 128 million homes, with 2.5 persons per family. The population's median age is 38, with big
cohorts of millennials and boomers presently approaching the periods of life centred on house ownership
and ageing in place, respectively. Given the market's current state, more expenditure increases can be
anticipated.

### 1.1 Project Introduction

The idea is to make a mobile application that will help people solve their everyday issues by using the
app. Its primary objectives are to satisfy an unfilled need, be competitive based on quality, selection and
price and build something that users love, not just what they want or need.

Sometimes it is hard to find a person to repair a broken washing machine or a fridge that is no longer
working correctly, especially for people who moved to a new place where nothing is familiar to them,
their car may have stopped in the middle of nowhere, and they are on a family trip in a foreign country
but do not know whom to call.

FixIT is the name of the mobile application which will allow people to make a connection between the
handyman and a customer in need. Similar to Uber and Bolt, the primary reason behind connecting them
would be to repair the user's home, office, car, home appliance, gadgets, furniture or any other kind of
repair that could be done.


Seeking the simple connection and communication by renovating today's system, the application would
find the repairman showing his ratings and price for the job, which gives specific security and
transparency. It could help countries decrease illicit work and prevent debt and fraud by making payments
by credit or debit card.

### 1.2 Project Aims

This project intends to develop a mobile application for touch-screen phones that meets its requirements
to run. The main aim is to produce a product that will help people and show the knowledge gained by the
course Computer Science at CCCU. Essentially, it will be an app that will work only with an internet
connection while trying to pair the customer with a handyman to establish the link between them and
make both sides of the users satisfied with the app's service. Chapter 4 will go over the application in
detail. Home services are professionally guided or supervised simple household maintenance or
management services delivered to families in their own homes by trained handyman or individuals.

#### 1.2.1 Mobile app Goals and Objectives

As a result, app developers have to work hard during the iOS app development process and deliver a
product that is a cut above in one way or another.

As shown in the table below, the project will create several items.

1. In-depth research on the home service industry and case studies or analyses of current applications
    to address the problem.
2. A component of the FixIT mobile application, which assists individuals with home servicing and
    maintenance at any time.
3. Evaluation of application testing results and user feedback on extra functionality.
4. Complete the final report

## TABLE 2. PROJECT GOALS AND OBJECTIVES


A goal is to present the general app development flow, which requires proper planning, research, design,
development, testing, and a clear focus. Afterwards, it is possible to concentrate on the app launch and
further maintenance of the app.

### 1.3 Justification of the Project

The biggest motivation for making and developing mobile applications is the will and desire to learn new
things and expand the knowledge gained. Two-thirds of the world's population connect with a mobile
device, and it is rising. That is a sign that mobile app developers are in high demand, and there are many
positive things about doing it as a full-time job.

The definite motivation for FixIT is people that would put a smile on their faces while using the app,
which will help them with the current repair problem. People like Steve Jobs made our lives easier and
better with their inventions, so our mission is to create an experience for the users that will help them in
their everyday lives.

The App Store now includes over 1.5 million apps. Why are iOS users so fascinated with it? First and
foremost, it is straightforward. Second, the App Store submission procedure is stringent, ensuring that
customers receive high-quality mobile goods. Finally, Apple has said unequivocally that customer privacy
is a significant priority for the corporation.

The ease of access and convenience has resulted in a surge in the market for on-demand home services
app development. People have busy lives and do not have time to look for a handyman when the need
arises. They would rather have an app that can quickly locate a handyman that they can call whenever
they want. Because there are so many major and minor businesses in the home services sector, there is a
lot of competition. Something distinctive and original must be provided to prosper in this competitive
environment. Businesses are focused on this market due to the growing number of millennials who use
on-demand services. The on-demand home services booking applications are intended for companies of
all sizes. (Kaur, 2021)

Most people do not have a specific firm in mind when searching for home services. This provides a
chance for home services marketers to convert these indecisive searchers.


```
Figure 1. Per cent of consumers that did not have one company in mind when searching (Ray, 2021)
```
Within 24 hours, 78 per cent of local searches on mobile devices result in a purchase. Home services
marketers should optimise their methods to convert this significant cross-section of consumers who use
local mobile search engines. (Ray, 2021)

**Decisions on choosing the technology stack**
App development may be made in various languages. It is critical to understand consumers and the
operating systems they use. It has to be determined if a native or cross-platform application is needed.
iOS and Android are the two most popular app development platforms.
iOS programmes are run on Apple hardware such as the iPhone and iPad. The programme is created in
Objective C or Swift and then distributed through App Stores.
On the other hand, Android apps are developed on a modified version of the Linux and Java programming
environments.
The Google Play Store has 2.87 million apps, while the Apple’s App Store has 1.96 million apps.
Nonetheless, there is potential for new apps to go on the route and become successful.


## FIGURE 2. MOBILE APP OPERATING SYSTEM MARKET SHARE IN POPULAR COUNTRIES. (SAGAR, 2022)

The chosen development path is native development, as it is more scalable than cross-platform ones. The
iOS system is to provide first as the targeting customers are in the UK and USA, where iOS systems are
being used more than Android.

Currently, minimal effort is being made to specifically address the problem of finding a handyman and
assisting someone in need on a mobile device. This study aims to create a solution that will specifically
aid customers as service finders in having more access to locating a service provider. When completed,
the project may act as a stepping stone to a more effective solution in the future.

### 1.4 Learning Outcome

The learning outcomes of this project include an in-depth look at the daily struggles of people who have
difficulty finding a home service provider using mobile applications. These mobile application design
interfaces can be helpful to those who have difficulties adhering to standard Apple guidelines, building
mobile applications with accessibility in mind, and how potential solutions using IT and proper research
could be used.

The project aims to solve an issue related to home services through mobile applications and in-depth
research of the home service industry and how to integrate IT solutions into it. The project's output will
also use relatively new technologies that most mobile developers have yet to adopt, which can benefit the
IT community and help to generate even better mobile apps. The project's study findings will also shed
more light on the need to deliver better customer service to individuals who use mobile devices and


encourage organisations who build mobile apps to pay more attention to the customer's side of mobile
applications.

### 1.5 Evaluation Method

The FixIT mobile application will assist users in locating the service they require as well as providing the
service to those in need. This research investigates the most efficient approaches and tactics for quickly
and easily locating a handyman.

#### 1.5.1 Technical Feasibility

The primary platform for developing this mobile application would be Xcode Integrated Development
Environment with Firebase SDK.

#### 1.5.2 Schedule Feasibility

This project has a completion date of roughly thirty weeks and is divided into two parts. The first part is
completed in the first semester, and it comprises research and data analysis and a poster presentation of
the project. The second phase should occur during the second semester and includes creating the
application, the prototype, user acceptability testing, and project implementation.

#### 1.5.3 Economic Feasibility

The developer would provide the mobile devices to be utilised for testing the generated prototype and
application. Because Xcode is free source software, there will be no operating costs for developing the
iOS platform. It is available for free download on the Internet.

#### 1.5.4 Home-service Increase in the Future

The growing number of consumers who desire to use on-demand home services has increased the
demand. People value convenience, and this app is ideal for obtaining home services when they are
required. (Kaur, J., 2021)

The increased availability of smartphones and internet penetration has increased the use of on-demand
service applications. Push alerts, real-time order monitoring, and numerous payment methods are all


features of on-demand applications that contribute significantly to their popularity. Businesses can benefit
from the expansion in these sectors.

The on-demand applications accept a variety of payment methods. Users can pay with debit cards, credit
cards, e-wallets, and other payment methods. When it comes to payment options, various consumers have
varied preferences and levels of confidence. It benefits businesses when they provide different payment
options to their customers.

On-demand applications serve as a platform for companies and consumers to connect. Businesses can
reach out to potential customers.

People's lifestyles have changed because of rapid urbanisation. People today spend more money and live
a more hectic lifestyle. They prefer to hire someone for activities such as house cleaning and
maintenance. People prefer to book home services on their cell phones rather than sit in traffic.

All these explanations point to this project as a potential app that could develop and grow in the future.

### 1.7 Summary of Report

The report will be broken down into six sections. The first chapter, as previously said, is the introduction.
The background research part, the second chapter, examines the problem, how it is being handled, what
existing applications are available on the market, technological stack analysis, and hardware and software
requirements for the creation and usage of the app. The third chapter, Development Methods, will mainly
explain how the application relates to the background study and the research methodology used to
conduct the study and build the application. Chapter 4, Design and Implementation, describes how the
program's design was formed and how the application was designed and implemented, with details on
essential functions used. The fifth chapter, Testing and Evaluation, covers how the application was tested
and how the testing findings were appraised. Finally, Chapter 6, Future Work and Conclusion, will
provide a complete look at the proposals made by others and the technology available to carry them out.
A conclusion will be offered based on the findings and outcomes of the report.


## 2. Background Research

The research approach this project applies is constructive research. The main objective of constructive
research is to recognise and find solutions to real functional issues.

Constructive research is the most acceptable choice for developing an authentic product like a mobile
application. The gathered outcomes from the constructive research methods will be evaluated and used to
develop the hour tracking application. (Mihaleva, 2015)

On the App Store, there are over a million applications, and as a result, the market is very competitive.
After understanding the objective of the app and how it may benefit users, comprehensive market
research (benchmarking) had to be undertaken to identify what is in demand, as well as to comprehend
client expectations, analyse risks, and forecast the potential profitability of the solution.

Benchmarking is the process of comparing and contrasting current technologies, their capabilities, and
best practices to enhance or add features to the service that will be produced. The most outstanding
businesses in the researched sector are found throughout the process, and their offerings are compared to
their own.

In the figure 3 are growing percentages of mobile searches for in-home services such as heating,
ventilation and air conditioning, landscaping, plumbing and roofing.

## FIGURE 3. GROWTH IN SEARCHES FOR SELECTED SERVICES (RAY, 2021)


### 2.1 Identifying the Application Users

Before identifying the target audience, it is essential to know why this is essential.
No application will be made for everyone, and it is not conceivable. People in various groups have
distinct requirements and interests, and various groups of individuals are at various phases in their lives.

It is also pointless to create an app for only one individual. People in that group must have comparable
demographics, interests, and issues. When the group of individuals is known, it is simpler to plan: we
know whom to design for, what features they want, and how to reach them through marketing campaigns.
(How to Find Your Target Audience for Mobile Apps, 2019)

```
CONSUMERS DEMOGRAPHIC CATEGORIES TARGET AUDIENCE
```
```
GENDER Both female and male, but more female.
AGE 25+
INCOME LEVEL National minimum wage workers or more
EDUCATION /
```
```
RELIGION /
MARITAL STATUS /
GEOGRAPHIC LOCATION Major cities and smaller areas
```
## TABLE 3. TARGETED AUDIENCE FOR THE APPLICATION USE

The targeted gender would be both female and male. However, statistically, in the UK, Women make up
just 11% of the workforce overall in the construction industry. This number includes many women who
work behind a desk in design, management, or administration. It is believed that males make up 99 per
cent of the workforce on construction sites. So, it is assumed that the female gender will need more help
than the male population, although this does not need to be the case. (Tawse, n.d.)

This app would be provided to anyone older than 18 years of age. Still, the targeted audience would be
people older than 25, assuming newly moved-in couples, students, older people who cannot do heavy
work, and middle-aged people too occupied with their job. Hence, they have no time to fix around the


house or similar. The following diagram is the best visual representation of the age group currently
looking for the home-services.

## FIGURE 4. UNDERSTANDING AGE’S ROLE ON HOME SERVICE DEMAND (MICETICH AND FISHER, 2022)

Making this app affordable to anyone with a minimum national income is an ambitious but executable
challenge. With the right set of rules for handyman's work rate and low commissions, the service should
be available to almost anyone with a base income.

From a geographical point, the first target would be on the major cities in the UK to be able to grow a
user database and afterwards would make it available for every area in the country so anyone can see if
there is a handyman nearby. The next step would be to expand the app to countries in Europe and the
USA. The primary language would be English, and slowly try to implement other main languages such as
Spanish, French, German, Italian and others.


### 2.2 Competition Research

Extensive market research has been performed in the industrial area tightly connected to the application
and then selected the most acceptable alternatives for the app. Furthermore, the current market trends and
the issues the target audience faces have been recognised.

```
Figure 5. Home Services Market Size was valued at USD 346.66 Billion in 2020 and is projected to reach USD 2,247.84 Billion
by 2028, growing at a CAGR of 29.90% from 2021 to 2028. (Home Services Market Size, Share, Trends, Opportunities And
Forecast, 2022)
```
The rise of the home service market has dramatically helped the positive impact of smartphone adoption
on the online on-demand services market.

First, the most used app similar in the United Kingdom market and worldwide is TaskRabbit. This app
has been on the App Store for a while now (since 2011) and has gained a vast user base. In today's on-
demand financial industry, TaskRabbit is the most successful firm. A home service marketplace connects
professional service providers with people who need their jobs done quickly. (Vaidya, 2022)

How their app works is simple to explain. When a Task Poster publishes a task, the site recommends
Taskers' hourly rates, experience level, and comments. A Tasker can accept or decline a task request
depending on availability and convenience. Once they accept and finish the task, the tasker is paid quickly
through several payment channels. Once the tasker has completed the assigned task, the assignment poster
can evaluate its performance based on previous experience. All Taskers are only permitted to provide
their services after passing a background check and verifying.


Nevertheless, like any other app, TaskRabbit is not without flaws. Firstly, if the tasker does not show up,
the customer cannot leave a review on the tasker's profile as they did not do the job. Afterwards,
TaskRabbit customer service is not reaching the customer for the inconvenience, and they do not do
anything to the tasker that has not shown up. On the other side, if the tasker shows up but does not do the
entire job, the customer gets charged for the total price and does not get the right amount of money back.
Also, they cut messaging between the customer and the tasker, so it is impossible to contact them. There
are many more issues that TaskRabbit cannot improve, like cancellation 30 minutes before a task with no
consequences to the tasker, extensive fees (35% or more), poor design of the mobile app, and the website
that has not got many functionalities and many more. (TaskRabbit Reviews - 2.0 Stars, n.d.)

Some other apps are not developed and are widely accepted as TaskRabbit, like Handy, AirTasker and
Angie's List. They primarily work on the same principle and run the same problems as TaskRabbit, but
they both have even worse user interfaces and user experience while using the application. The apps do
not run smoothly, and the customer service is poorly educated and does not help or respond to customers.
Angie's List also requires a membership to use the app, which goes between $10 (dollars) and $65
(dollars). (Handy is rated "Great" with 3.9 / 5 on Trustpilot, n.d.)

FixIT mobile app would be an improved version of these applications and would aim at the customer
needs and experience more than making a profit from it.

The first improvement implemented is using the application with a better user interface, made by
following the official Apple-style guidance.
Secondly, there would be a professional but straightforward background check provided by a company
called "Identities Inc.". They produced a "Persona" system that provides background checks for your
company.
Maybe the most significant improvement that will distinguish this application from others is the
documentation for the self-repairs that will be provided in the separate tab that will guide customers to try
and fix the issue before renting service from a handyman. This way, many people would have an
opportunity to save some money and learn something new in their spare time.

The valuable mention is making the application available in all populated areas so anyone can search for
the local technicians who could help.


Google noticed 350 times more searches for "local" and "near me" in 2019 than 2009. Consumers demand
local agents to come to their homes. Hence these search phrases are widely used to identify home services
firms. (Ray, 2021)

These are just some of the enhancements that will be done during the development of this fantastic
project.

```
Application Downloads Tools
```
```
TaskRabbit +10 000 000 MySQL, Ruby, NGINX^2 , Amazon CloudFront
```
```
Handy +500 000 Python, React, Java, NGINX, AngularJS, Amazon
CloudFront, Ruby
```
```
AirTasker +500 000 JavaScript, Node.js, React, PostgreSQL, Ruby,
Objective-C
```
```
Angie’s List +1 000 000 JavaScript, Python, Node.js, React, php, Typescript
```
## TABLE 4. NUMBER OF DOWNLOADS AND TOOLS THAT ABOVE MENTIONED APPLICATIONS USE

### 2.4 Technology Stack

Nowadays, making a decent mobile application entails catering to a wide range of user preferences. It will
help cut app development costs, save time, open up new opportunities, and make future project
enhancement easier and more flexible. It is critical to delivering excellent work rapidly, with a high level
of security and an appealing interface. A robust technology stack had to be picked for mobile applications
to handle these aspects.

The mobile stack categories that were looked into are

1. Client-side development is another term for front-end development. It refers to the creation of an
    interface that will communicate with end-users.

##### 2

```
A high performance free open-source web server powering busiest sites on the Internet
```

2. A data access layer that is linked to databases, scripting, website architecture, and server-side
    programming, in general, is known as the back-end.
3. The tools that offer libraries and interfaces to construct the application are referred to as
    development.
4. Supporting, with the main goal of ensuring security, good functionality, and long-term
    development.

There are several variations and making the wrong decision might lead to a departure from the original
concept or even the use of the incorrect application architecture. This problem can result in a higher
ultimate cost, long-term mistake recovery, and a missed deadline.

For iOS app development, the two primary native languages used are Objective-C and Swift. They both
work specifically on macOS running systems, but there are ways to be able to run them on Windows OS
using virtual machines.

##### PROS CONS

```
Objective-C ● Lots of tools
● Vast
● Stable
● Precise documentation
```
```
● Not as fast as newer languages
● Decreasing community
● No new tools being released
```
```
Swift ● Receives new tools
● Can save up to 60% of lines of code
● Faster than Objective-C
● Lots of new tools
● Growing community
● Constantly updated documentation
```
```
● Still, not big community
```
## TABLE 5. MAIN ADVANTAGES AND DISADVANTAGES OF OBJECTIVE-C AND SWIFT

Objective-C is an Apple-supported programming language for creating iOS apps. It has the ability to be
object-oriented and has a dynamic runtime environment. However, given its complexity, Swift is


preferred by more engineers. According to a Stack Overflow poll, 68 per cent of objective-C developers
aren't interested in sticking with the language.

Swift is a new programming language and evolution of Objective-C. There are no string identifiers.
Hence there are fewer errors. There's a lot less code to write here, and it's a lot easier to comprehend,
change, and debug as it gives developers real-time feedback so they can cut down on development time.
Swift is the preferred open-source programming language in 2021 due to its speed, readability, and
simplicity.

There are a few well-known tools for iOS development, such as Xcode and App code.

Apple's Xcode IDE provides access to all of the main capabilities needed to create a native iOS mobile
app. This application’s highly intuitive interface gives developers access to all of the features they need
for user interface design, coding, and testing.

## FIGURE 6. XCODE INTERFACE

Frameworks for user interfaces that developers use frequently are UIKit and SwiftUI.

The UIKit framework provides the foundation for creating and managing graphical components in iOS
apps. SwiftUI and UIKit are pretty similar, and they can communicate with one another. However,
because SwiftUI was introduced later, it only works with the most recent versions of iOS. By utilising this


framework, there would be a risk of locking off consumers using older versions of iOS, which is not
preferred. So we will stick to the UIKit framework only. (Drozd, 2021)

The chosen back-end side is the Google Firebase system, as it is compatible with the majority of popular
online and mobile app languages. Its services provide helpful features for both product managers and
developers, the majority of which may be utilised independently. Authentication (allows users to access
your app using federated identity providers such as Google or GitHub), Crashlytics (allows for tracking
and analysing crashes in real-time), and Dynamic Links are a few of our favourites (allows to create
intelligent links that direct users to the most relevant pages in your app).

## FIGURE 7. FIREBASE LOGO

Furthermore, all development projects require an SCCS, which allows tracking the whole source code
version history. Having an SCCS prevents overwriting, assists in resolving code conflicts, and simplifies
merges across workstreams. Today, Git is the most extensively used SCCS. It is a free and open-source
project that works in practically any programming environment. It is recognised for being incredibly
versatile and quick. To access the code on different devices, GitHub has been used, which is a provider of
internet hosting for software development and version control using Git. It is a code sharing and
publishing tool for coders and developers so that they may cooperate on what they are working on. It
keeps the primary file in a location known as the "Repository" and allows project contributors to
download the file as a clone and make modifications to the clone. It is the most popular location to share
code with friends, co-workers, students, and strangers. (Armes, 2021)


## FIGURE 8. SIMPLE EXAMPLE OF HOW GIT WORKS (GIT: REFERENCE SHEET, 2022)

Collaboration and task management software keeps app development organised, increases responsibility,
and ensures that projects are completed on time.
To organise quickly, Trello has been incorporated into the project, which is similar to the popular Jira and
is used as a free tool for arranging everything related to the current project.

## FIGURE 9. MY TRELLO BOARD

Notion and Google Docs have been used for any notes that have been taken during the research.


## FIGURE 10. EXAMPLE OF MY NOTION INTERFACE

All this technology stack is picked as the concentration is on delivering the most important features while
thinking about scalability as the application grows. When users and traffic grow, the technologies being
used will have to be able to run a robust system architecture. When it comes to expanding the application,
the server, hosting provider, database, and even programming languages that have been chosen might
imply the difference between a bottleneck and a smooth operation.

Security is critical regardless of the platform on which the app is built. Malicious attackers may exploit
even the tiniest flaws, so it is not affordable to remain complacent. Thankfully, every prominent mobile
app technology has the required security safeguards. For developers, complexity has a distinct
connotation. Just because an app has many user interface components does not mean it is complicated.
Instead, complexity refers to how the app communicates with the backend and interacts with the
underlying mobile functionalities. (Furman, 2022)

Native mobile stacks are required for designing an app that requires data caching or gets data from the
phone's sensors and camera, which this application might do in the future. Native app technology allows
us to access device-specific functionality, something we cannot do if we work on a cross-platform project.


### 2.5 Hardware and Software Requirements

Next, it is necessary to point out the hardware and software minimum and recommended requirements for
the development and use of the app.
First, we need to determine specific requirements for the development program, Xcode.

##### MINIMUM RECOMMENDED

```
CPU Intel i5 or better M1 Apple Silicon or Intel i7 or better
```
```
RAM 4 GB or more 16 GB or more
```
```
STORAGE 128 GB Disk Storage or more 512 GB Flash Storage or more
```
```
macOS Mojave 10.14.4 or later Monterey 12 or later
```
```
Example computers Mac Mini Late 2012
MacBook Air Mid 2012
MacBook Early 2015
```
```
Macbook Pro 2020 or later
iMac Pro
Mac Pro 2015 or later
Table 6. Minimum and recommended specifications to run the Xcode (Xcode - Support - Apple Developer, n.d.)
```
The developer has used MacBook Pro 2021 with an Apple Silicon M1 Pro chip with the latest version of
macOS available at the time of the development, Monterey 12.3.1.

It is essential to determine which phones are targeted and which iOS versions they will require. Apple has
provided older phones with new iOS for around 5 to 6 years, and they continue to support the previous
three versions for bug and security fixes. So the minimum requirement for this application would follow
Apple’s support period, which is iPhone 6s/6s Plus with iOS 13 at the time of writing. On the other side,
the recommended solution would be the newer iPhones with LiDAR scanner (12 Pro/13 Pro) and iOS 15
or later. (Infographic: How long does Apple support iPhones? - iGeeksBlog, 2022)


## FIGURE 11. LIDAR SCANNER ON THE IPHONE 13 PRO (ZAWACKI, 2022)

## 3. Development Methods

**The software development life cycle (SDLC)** is used to structure and create this mobile application.
SDLC is a technique used in the software industry to ensure the design and production of high-quality
software with the lowest possible cost and in the quickest possible time.

SDLC achieves these seemingly varying aims by following a strategy that eliminates the common
problems of software development projects. The strategy begins with an assessment of current systems
for flaws.

It then describes the new system's needs. Furthermore, it goes through analysis, planning, design,
programming, testing, and deployment to build the software. SLDC may avoid superfluous rework and
after-the-fact corrections by predicting costly mistakes such as forgetting to request the end-user or
customer for a review. It is also vital to note that the testing phase receives much attention. Because the
SDLC is a repeatable approach, code quality must be assured at each cycle. (Altvater, 2020)


## FIGURE 12. DIFFERENT STAGES OF SDLC

### 3.1 Agile Development

The SDLC model chosen for this project is the Agile model. Agile SDLC focuses on quickly delivering
functioning software products through adaptable processes and constant user feedback.

Instead of relying on a massive launch, an agile provides work in tiny yet consumable increments.
Continuous evaluation of requirements, plans, and results provides teams with a natural mechanism for
adjusting to change swiftly. (What is Agile? | Atlassian, n.d.)

Figure 13 , Agile diagram illustrates the series of steps during the agile development process.

#### Requirement

#### Analysis

#### Planning Architectural

#### Design

#### Deployment Testing Software

#### Development


## FIGURE 13. DIAGRAM SHOWING STEPS IN AGILE DEVELOPMENT (1ST SPRINT, 2 ND SPRINT, N SPRINTS).

Moreover, the framework that has been used is scrum. People frequently confuse scrum and agile because
scrum emphasises continuous improvement, which is also a basic premise of agile. On the other hand,
scrum is a workflow structure, whereas agile is a mindset.
_Scrum_ is a heuristic framework based on constant learning and adapting to changing circumstances. It
recognises that the team does not know everything at the outset of a project and will learn as it progresses.
Scrum is designed to let teams adapt to changing conditions and user requirements naturally, with re-
prioritisation built into the process and short release cycles to ensure that the team is constantly learning
and improving. (Scrum - what it is, how it works, and why it's awesome, n.d.)


## FIGURE 14. SCRUM STRUCTURE (SCRUM - WHAT IT IS, HOW IT WORKS, AND WHY IT'S AWESOME, N.D.)

There are three primary artefacts in the scrum, which we make to solve a problem. Those three are
product backlog, a sprint backlog, and an increment with a definition of “done”.

1. Product backlog - a preliminary list of requirements, upgrades, and fixes that needs to be
    completed and that sprint backlog uses as an input. The FixIT project backlog can be seen in
    Table 17 in the appendices.
2. Sprint backlog - a collection of items, user stories, or bug fixes chosen for implementation by the
    development team for the current sprint cycle. The primary sprint goal cannot be compromised.
3. Increment or Sprint Goal - everything being accomplished throughout the sprint was shown
    during the end-of-sprint.

### 3.2 Use Cases

Use Cases are intended to capture the user's perspective while explaining the system's functional
requirements. They explain the step-by-step procedure that a user follows to accomplish a goal using a
software system.


## FIGURE 15. SIMPLE EXAMPLE OF USE CASE DIAGRAM

A Use Case describes all the ways an end-user can use a system. Use Cases document all potential
interactions between the user and the system that lead to the user reaching the desired outcome. They also
include all things that could go wrong along the road and hinder the user from completing the task.

A Use-Case model is made up of several model parts. The following are the most crucial model elements:
● Use Cases
● Actors
● and the relationships between them

#### 3.2.1 Use Case Diagram

A use case diagram in the UML^3 can summarise the details of mobile app users and their interactions with
the system. A use case is a series of steps that must be taken to complete a particular job or objective.

Use case diagrams in UML are great for defining:
● the objectives of system-user interactions
● and organising a system's functional requirements
● a system's context and requirements
● the basic flow of events in a use case

##### 3

```
Unified Modelling Language is the modelling toolkit used to make diagrams
```

## FIGURE 16. USE CASE DIAGRAM

#### 3.2.2 Use Case Scenarios

A use case is a goal with several procedures, and a case scenario is a straightforward path through one of
the procedures. A use case might have numerous pathways to the objective. Each is referred to as a use
case scenario.

## FIGURE 17. USE CASE DIAGRAM FOR ENTERING THE APP


## FIGURE 18. USE CASE DIAGRAM FOR THE MAIN MENU

### 3.3 User Flow Diagram

The flow chart is a graphical representation of the functions, features, and other processes of the
application system. During the application's development, it acts as a road map for the entire system
design.


## FIGURE 19. THE USER FLOW DIAGRAM OF ENTERING THE FIXIT MOBILE APP

## FIGURE 20. THE USER FLOW DIAGRAM FOR NAVIGATING IN THE MAIN MENU

A user flow diagram is included in the appendices for a more complete description of how the user
interacts with the programme.


## 4. Design and Implementation

Books, websites, blogs, and tutorials have been used to uncover the best mobile design and development
practices. The designer should strive for innovation while creating and developing software. It is critical
to be innovative to add new value to a specific area and period.

**Compliance with App Store Guidelines**
Furthermore, developing an iOS app demands adherence to Apple's rules. Apple only releases
programmes that fulfil its standards for design, security, user privacy, and other factors. Moreover, there
is no other option. That is why all iOS applications have a similar appearance and feel while maintaining
their distinctiveness and why the majority of them are well-made.

### 4.1 Develop Minimum Viable Product

A minimum viable product is required for application development since it allows for testing prior to
product launch. Furthermore, following the testing, what needs to be added to the programme will be
determined. Then the invitation will be given to the customers to try it out and provide feedback.
Customers are the only ones who will call out the application's flaws.

```
M (minimum) V (viable) P (product)
```
```
The application's most minimal,
“bare-bones” basis.
```
```
Enough to satisfy early adopters Something substantial that
people can utilise
```
## TABLE 7. MVP EXPLANATION

Although the first phases of the iOS application development process assist in getting all of the
requirements ready and the app's design finalised, the development phase is the essential element of the
entire operation.

```
MVP application matrix URGENT NOT URGENT
```
```
IMPORTANT DO (Include in MVP)
User login/sign up
```
```
PLAN (Develop for beta launch)
Calendar for handyman
```

```
Main menu
Service search
Task history
```
```
Reviews for customer
Statistics for tasks
In-app chat or call option
```
```
NOT IMPORTANT DELEGATE (Consider third-party
integrations)
Payment system
Background check system
```
```
ELIMINATE (Remove from
product roadmap)
Map navigation
Real-time tracking
```
## TABLE 8. MVP OF THE FIXIT MOBILE APPLICATION

An MVP product must have four key components: functionality, readability, design, and usability. Here is
a list of some of why we need an MVP product.

1. Experiment with app ideas.
2. One of the simplest methods for gathering user feedback on the application.
3. The MVP highlights the app concept and tests it in real-time.
4. Learn about the areas that may be improved.
5. For creating a better product with fewer or no bugs.
6. To deal with security more effectively.
7. Evaluate the app's performance and make any modifications necessary in the final release.
8. Maybe use it as a prototype for future items.

#### 4.1.1 Concept and Wire-framing

Wireframes are a type of digital drawing. Wireframes, also known as low fidelity mock-ups, are a graphic
representation of the mobile application's visual layout and capabilities. Getting the "Double P" (Pen and
Paper) is the easiest and quickest approach to bringing your wireframe to life.

Wireframes are a simple and affordable way to build app layouts and iterate through them during the
design review. They were created in this case study to illustrate the design and features of the mobile
application at an early stage of the project.


## FIGURE 21. SOME OF THE WIREFRAMES FOR THE FIXIT APPLICATION

#### 4.1.2 Style Guide

Style guides are "living papers" that detail an app's design standards, including anything from the app's
branding guidelines to the navigation symbols. Style guidelines enhance the design approach of an app.
The efficiency of a mobile app developer is improved by establishing a style guide early in the
development process. At the same time, sticking to a style guide will help the app maintain a consistent
appearance and feel. Apple's app design standards for iOS apps are considered part of the app design.
Their primary design principles are aesthetic integrity, consistency, direct manipulation for immediate
result, feedback to keep people informed, metaphors and complete user control. (Themes - iOS - Human
Interface Guidelines - Apple Developer, n.d.)

Three main themes distinguish iOS from other platforms:

**Clarity**. Negative space, colour, typefaces, images, and interface components highlight key material and
subtly express interaction. Text is legible at all sizes, icons are precise and transparent, discreet and
suitable adornments, and a heightened focus on usefulness drives the design.

**Deference**. People can comprehend and interact with content with fluid motion and a clean, elegant
interface that never competes with it. Translucency and blurring frequently hint at more, whereas content
generally covers the entire screen. Bezels, gradients, and drop shadows are used sparingly to make the
interface light and airy while prioritising information.

**Depth**. Different graphic layers and realistic motion help to portray hierarchy, life, and comprehension.
Touch and discoverability contribute to the enjoyment by allowing access to extra functionality and


material without losing context. As you travel through the information, transitions give you a sense of
depth.

UIKit is used in the majority of iOS apps. This framework allows programmes to have a uniform look
across the system while allowing for much customisation. UIKit components are adaptable and versatile,
allowing us to create a single programme that looks fantastic on every iOS device, and they update
themselves when the system adds new features.

The UIKit interface components are divided into three categories:

1. **Bars** show users where they are in the app, give them directions, and include buttons or other
    components for starting activities and transmitting the information.
2. Text, pictures, animations, and interactive components are all found in the **views** section of the
    app. Scrolling, insertion, deletion, and organisation are all possibilities with **views**.
3. **Controllers** convey information and initiate actions. **Controllers** can include buttons, switches,
    text fields, and progress indicators.

```
Typography Guidelines provided by Apple
ELEMENT SIZING NOTES
```
```
Titles 17 pt Font weight: medium; before scrolling, page names are
34pt, and after scrolling, they are 17pt.
```
```
Paragraph text, links 17 pt /
```
```
Secondary text 15 pt A lighter shade
```
```
Tertiary text, captions,
segmented buttons
```
```
13 pt /
```
```
From controls (buttons, text
inputs)
```
```
17 pt Use a medium font-weight to draw attention to essential
buttons.
```
```
Tab bar, action bar 10 pt Do not make it any smaller than this.
```
## TABLE 9. TYPOGRAPHY GUIDELINES FOR THE IOS MOBILE DEVELOPMENT (KENNEDY, 2021)


The following combination of the colours that have been used in the mobile app design is decided by the
rule of complementary colours scheme. This rule is used by many mobile designers when they need some
aspects of the app UI to stand out. Complementary colours are opposite each other on the colour wheel.
Red and green, orange and blue, and yellow and purple are examples of complementary colours. They are
starkly opposed to one another. The other three colours, white, black and grey, are just used for
background and text. (Mobile App Design: 14 Trendy Color Schemes, 2017)

```
Colour palette used in the app
```
## FIGURE 22. FIXIT COLOUR PALETTE

```
Example of two complementary colours
```
## FIGURE 23. COLOUR WHEEL

#### 4.1.3 User interface (UI) & user experience (UX) design

Users place a high value on the appearance and feel of a mobile app. Furthermore, here is where the app's
UI/UX design comes into play. The UX designer is in charge of how the user interface works, whereas
the UI designer is in charge of how the user interface looks.


## FIGURE 24. DIFFERENCES BETWEEN UX AND UI DESIGN (DUCKMANTON, 2019)

This is a crucial phase in the app development process since it influences the user experience and how the
app will appear. At this point, the objective is to produce a visually beautiful design and easy to use. A
dashboard must have all of the necessary functionalities, and finding important information must be
simple.

A graphical representation or layout of a mobile app is referred to as UI design. It does not matter where
you put the click button, sliders, photos, text entry boxes, or anything else the user interacts with. Each
piece of an app's UI is brought together by the app's UI design.

The primary purpose of a UX design is to connect all of the UI components and provide the user with
smooth navigation. The goal of a UX designer is to have a comprehensive grasp of how a user wants to
engage with the programme.

Mock-ups are a high-fidelity simulation of how the app design would look in the context of mobile app
design procedures. Mock-ups are created by combining the structure and logic of a wireframe with
images and user interface components. Furthermore, mock-ups assist in identifying real-world design
issues that may go unrecognised. Figure 25 shows mock-ups made using the Figma design program for
the FixIT mobile app that will be roughly followed in the development stage. Other design programs
could have been used, such as Sketch and AdobeXd, but Figma is accessible and versatile.


## FIGURE 25. THE USER-FLOW DIAGRAM MADE WITH UI DESIGNS


#### 4.1.4 Software Architecture

The planning of software architecture is another critical stage that occurs in tandem with UI and UX
design. It accounts for three components of the model view controller (MVC) paradigm, data, user, and
software, and is one of the essential phases in the iOS app development process. It includes all of the
steps to assure the app's scalability and stability.

The pattern used to produce the mobile app is called Model-View-Controller (MVC), a very effective
software architecture pattern for developing iOS apps, and its foundation is Object-Oriented
Programming. It organises the data flow and interactivity in the app.

The MVC architecture outlines three components:

```
● A model is a wrapper of data and includes logic for manipulating that data. When considering the
FixIt app, one message is a model. In Firebase, models are represented as JSON objects.
● View , a representation of a user interface (UI). A view in the FixIT app is a UILabel that displays
the category names.
● The controller is a mediator between the Model and the View. It sends signals from the View to
the Model and vice versa. (Khan, 2021)
```
## FIGURE 26. SIMPLE REPRESENTATION OF MVC ARCHITECTURE WORKFLOW


Reasons behind using MVC pattern:

```
● It prevents code from devolving into a jumbled mess.
● Ensures a seamless transition and collaboration.
● Improves code modularity and facilitates code reuse.
```
### 4.2 Code Development

The development phase focuses on bringing the app concept to life. At this point, we had to deal with
three distinct but essential components of the project: the back end, the API, and the front end of the
mobile app. Figure 27 shows a basic prototype of system architecture and a simple concept of how each

#### element of the app is connected.

## FIGURE 27. PROTOTYPE OF FIXIT SYSTEM ARCHITECTURE


#### 4.2.1 Back-end Development

As mentioned before, for the back-end development Firebase is used as a service and based on current
knowledge, it was the best optimal existing solution. The server should primarily be able to receive data
from users and return desired ones in order to show the needed information.

There was an option to build a server with a database that communicates with a bespoke API. However,
the issue is that constructing a bespoke server would take a significant amount of time and resources,
making this alternative unsuitable for meeting a deadline.

_Firebase_ is a mobile and online application, commonly known as BaaS, supported by Google since 2014.
It provides functionalities that save developers from building their APIs or managing servers, enabling
them to focus more on the consumers. Furthermore, Firebase delivers 20 products separated into three
categories: product development, product quality, and product growth this year, as well as many more
pre-packaged solutions that are possible to employ. (Firebase, n.d.)

```
Figure 28. DB-Engines ranking of Document stores (historical trend of document stores popularity, 2022)
```
In figure 28, we can see that Google's two database engines, Firebase Realtime Database and Cloud
Firestore, the total database popularity has increased the highest in the recent five years. Those are
Firebase's implementations of JSON-based cloud-hosted document-oriented databases. A Cloud Firestore
will be used for this project as it expands on the Realtime Database's success by introducing a new, more


user-friendly data model. Cloud Firestore also has more powerful, quicker searches and can scale further
than Realtime Database. According to Google Trends, Firebase is taking seventh place in most searched
database systems in 2022. (TOPDB Top Database index, 2022)

Document stores do not need a consistent structure, allowing for a more flexible approach to data
collection for different users. Records can also hold nested values or additional values in retrospective
arrays. This versatile technique is simpler to work with without an extensive understanding of another
programming language. It is prone to helpful scalability, where adding new functions to this project might
suddenly affect the growth of the application and the necessity for the scaling, as mentioned earlier.

The server and its capabilities are priced differently, with two options: a free Spark plan and a price-
scaled Blaze plan. A free Spark subscription will be employed because the app produced by this thesis
will not generate any revenue. The Spark plan's specifics are appropriate and suitable for low-middle
expectations, and if an unforeseen rise in popularity occurs, moving to the Blaze plan is reasonably
straightforward. The price will scale based on function consumption.

Table 10 shows all the functionalities provided by Firebase that are free of cost. The list only includes the
primary elements. Nevertheless, other unmentioned features, most notably Authentication and
Crashlytics, are free and will be utilised in development with great interest. Registered users utilise
Firebase Authentication to log in, identifying a user through trusted identity providers and granting access
to essential user information from those sources, ensuring that the email is securely linked to the unique
user id.

Also, when an app fails due to an unexpected fault, the logs are kept locally. The next time the user starts
the app while connected to the internet, Crashlytics immediately transmits the crash report to Firebase. If
there are more unknown crashes, Crashlytics automatically classifies them into lists, which may then be
prioritised based on crucial crash information.

Other possibilities investigated were MySQL and MongoDB, which were ruled out due to a lack of other
non-database services and the need to obtain hosting.

```
Cloud Firestore
```

**Estimated quantity Notes**

**GB stored** 1 GB About 20 M chat messages

**Document writes** 600,000 writes Number of times data is written

**Document reads** 1,500,000 reads Number of times data is read

**Document deletes** 600,000 deletes Number of times data is deleted

```
Cloud Storage
```
**GB stored** 5 GB About 2,500 high-res photos

**GB transferred** 30 GB About 15,000 high-res photos

**Operations (uploads and
downloads)**

```
2,100,000 operations About 210,000 uploads and 1,890,000
downloads
Cloud Functions
```
**Invocations** 2,000,000 invocations number of times a function is invoked

**GB-seconds** 400,000 GB-seconds time with 1 GB of memory provisioned

**CPU-seconds** 200,000 CPU-seconds time with 1 GHz CPU provisioned

**Networking (egress)** 5 GB outbound data transfer

**Cloud Build minutes** 120 min minutes used to build Cloud Functions

```
Phone Auth
```
**Phone verifications in US, Canada
or India**

```
10,000 verifications about 10,000 verified users
```
**Phone verifications in other
countries**

```
5,000 verifications about 5,000 verified users
```
```
Hosting
```
**GB stored** 10 GB about 5,000 pages of static content


```
GB transferred 10 GB about 5,000 pages of static content
Test Lab
```
```
Virtual Device Testing 1 hours per day about 12 tests
Physical Device Testing 30 minutes per day about 6 tests
```
```
Firebase ML
```
```
Cloud Vision API calls 1,000 calls/month
```
## TABLE 10. FREE SERVICES PROVIDED BY FIREBASE (FIREBASE PRICING, 2022)

The database, as described in the preceding section, is document oriented. Creating a database model for a
document-oriented database is likely to be a more complex undertaking because table relations to
everything are not required. It is also critical to assess what information needs to be gathered for future
statistics presentations.

The database model has been represented in figure 29 , where JSON data has been structured. This is the
most straightforward representation of the document database and how it stores the data.


## FIGURE 29. THE DOCUMENT DATABASE MODEL REPRESENTATION IN JSON

#### 4.2.2 Application Programming Interface (API)

API stands for Application Programming Interface, and it is a link between two software programmes that
allows them to interact with one another. When we utilise a mobile application, it transmits and receives
data to and from a distant server through the Internet. The programme receives the data from the server,
interprets it, performs the necessary steps, and delivers it back to the phone. The programme on our
phones then analyses the incoming data and displays it to us in a human-readable fashion. (Mathur, 2022)

Well-known API use is the ability to log in to social network accounts on many websites and platforms.
We commonly receive the "log-in using Google, Twitter, or Facebook" option to log in on websites


without creating a separate user profile. This is a feature of an API that maintains track of our Social
network accounts and allows users to log in quickly. (Mathur, 2022)

Instead of authenticating the user's social media accounts, applications with this feature utilise an API to
authenticate the user with each log-in.

```
Benefits of using API
```
```
Application service and
delivery
```
```
Because an API has direct access to the app components, the distribution of
information and services is more flexible, and the application is easier to
maintain.
```
```
Better efficiency An API ensures that material is available to all channels and provides the
flexibility to distribute it effectively.
Automation API provides a high level of automation, allowing you to update workflows
and make them more efficient, cost-effective, and productive.
```
```
Integration APIs enable material from any programme or website to be seamlessly
integrated. This ensures a more seamless user experience and information
delivery.
Personalization APIs enable developers and organisations to adjust the content and code to
their own needs, giving them the freedom to make modifications to their
products.
Service provision and
adaptation
```
```
Any application or service requires provisioning or updates over time; APIs
come in handy here since they assist us in predicting the changes. API makes
provisioning more flexible and also improves data movement.
```
## TABLE 11. MAIN BENEFITS OF USING APIS

```
Four major types of APIs
```
```
Open API Partner API Internal API Composite API
```
```
Because of their public
availability, these are
often known as Public
```
```
Because such APIs are not
available to the general
public, software
```
```
Because of their limited
scope of use. These are
often known as private
```
```
These APIs combine
several types of data APIs
and services. These APIs
```

```
APIs. These APIs are
open to everyone, with no
limitations.
```
```
corporations or developers
must get particular
permissions and licences
in order to use them.
```
```
APIs. These APIs are
designed for internal
usage within a company,
and their exposure is
limited to the enterprise's
internal systems.
```
```
have the capacity to
accelerate the execution
process and improve the
performance of web
interface listeners.
```
## TABLE 12. FOUR MAJOR API CATEGORIES AND THEIR USE DIFFERENCES.

**Rest API for iOS**
REST is the most used API design type, particularly in the mobile environment. A Rest API is an API
that manages and handles data via HTTP requests. It uses functions to PUT, GET, Delete, or POST data.

The web services are based on the REST architecture and return data in JSON format. While managing
and handling data, REST APIs rely on the HTTP protocol. Because each RESTful API uses a separate
URL to transport data, it is critical to map the URLs in order for requests to function correctly.

There are two options connecting with an already existing API when building or purchasing it. Because
building an API takes more development knowledge and experience due to the complexity of the process,
utilising an already existing API is considerably easier and faster. Some well-known websites, such as
RapidAPI, allow us to explore, evaluate, and purchase existing APIs. Several APIs, both premium and
free, are available on the market that may be readily incorporated into mobile applications. (Mathur,
2022)

```
APIs that are going to be implemented in the FixIT mobile app
API Explanation Requirements/notes Link
```
```
Firebase
API
```
```
Allows communication
between the app and the
database
```
```
Xcode 12.5 or later, iOS 10 or
later, macOS 10.12 or later, tvOS
12 or later,
watchOS 6 or later
```
```
https://firebase.google.com/docs/
ios/setup
```
```
Open
Weather
Map API
```
```
Weather and forecasts for
numerous cities are
available.
```
```
500 requests a month free, for
more: $10 a month
```
```
https://rapidapi.com/community/
api/open-weather-map/
```
```
GeoDB Get information on cities, 1000 requests a day, for more: https://rapidapi.com/wirefreetho
```

```
Cities regions, and countries
throughout the world. Filter
and show result in a variety
of languages.
```
```
$10 a month ught/api/geodb-cities/
```
## TABLE 13. API’S TO BE USED IN FIXIT

## FIGURE 30. AUTHORIZATION CODE FLOW DIAGRAM

#### 4.2.3 Front-end Development

Swift is described as a "full-stack" programming language. It is most likely one of the best full-stack
languages available. Swift has evolved tremendously since its inception in 2014 to become a full-stack
language. A full-stack development language is a hybrid of backend and frontend programming
languages. As a result, Swift may work on both the front and back ends of a website or app. That is, Swift
may be used to manage a database project and build user-facing websites.

Swift is an Apple-developed compiled, general-purpose, and multi-paradigm programming language that
is complex yet easy. The language was intended to replace Objective-C, which had become obsolete.
Despite Swift's additional feature possibilities, its architecture is entirely compatible with Apple's present
Objective-C code. Swift evolved due to substantial research and experience gained while creating Apple
platforms. Swift enables the development of interactive code with a concise yet expressive syntax.
Furthermore, the code is secure, and the total package is high-speed. Swift parameters are stated in simple
syntax, making APIs easier to understand and maintain. Even better, semicolons are no longer necessary.


Swift employs the high-performance LLVM compiler technology, which turns Swift code into optimised
native code that uses modern hardware. The modules add namespaces and eliminate headers, while the
inferred types yield clean code. Variable initialization before use, automatic memory management,
checking for overflow in integers and arrays, and exclusive access to memory enforcement all help to
prevent common programming problems. Because the strings are Unicode-compliant, Swift may support
other languages. Furthermore, for efficiency, they use a UTF- 8 - based encoding.

● **Swift Package Manager (SPM)**
Swift Package Manager with XCode 13 offers comprehensive integration, allowing developers to
integrate third-party dependencies with iOS apps. Swift aimed to push open-source Swift packages, tools,
and libraries to the server-side, which proved an extremely effective strategy.

The limits of SPM are that it cannot reload a single package in XCode. Instead, it would be best if the
whole dependency tree was refreshed. Working with the entire dependency tree, without a doubt, takes a
bit longer, especially if it is extensive.

```
Advantages of using Swift
Rapid App
Development
Technique
```
```
● Because of its simplified syntax, it is an expressive and clear language that is
straightforward to write and read
● Less code running than Objective-C
● Memory use is controlled through Automatic Reference Counting, which
saves the developer time
```
```
Application
scalability
```
```
● Scaling projects quickly to match the needs
● Permits to expand its capabilities as well as the team working on it
```
```
Performance and
safety have
improved
```
```
● Superior performance and speed (2.6 times quicker than Objective-C and 8.4
times faster than Python) (Bohon, 2021)
● Enhanced error-handling abilities, robust typing, and security
● a decreased likelihood of errors and code crashes
```
## TABLE 14. THE MOST IMPORTANT ADVANTAGES OF USING SWIFT PROGRAMMING LANGUAGE


Swift is built on current principles seen in other modern programming languages such as JavaScript,
Ruby, and Kotlin.

```
Libraries that are going to be used in the app (Brlas, 2020)
Libraries Explanation
```
```
Alamofire ● is a simple and flexible way to interact with HTTP network requests
● based on Apple's URL Loading System
● easy-to-use interface
● provides a wide range of capabilities required for contemporary application
development using HTTP networking
```
```
Lottie ● loads and renders animations and vectors supplied in JSON format from the
body moving
```
```
KeychainAccess ● Swift wrapper for Keychain that works on iOS and macOS
```
## TABLE 15. LIST OF LIBRARIES THAT ARE GOING TO BE USED IN THE FUTURE DEVELOPMENT OF THE APPLICATION

## 5. Testing and Evaluation

This chapter will show how testing was one of the most critical processes in app development. The app
was continually tested throughout the development process using many test approaches.
Many complications develop during testing, and implementation does not always proceed as planned.
Such situations regularly arose during the testing sessions and were frequently resolved quickly.
Unfortunately, the problem was sometimes significant enough that it could not be fixed right away and
took a few days to resolve.

The testing plan is needed to do a successful software project since it will help work through the project
swiftly and efficiently. A testing plan provides a quick guide for the testing process, helps avoid effort in
"out of scope" functionalities, defines roles and responsibilities for the tester, provides a schedule for
testing activities, outlines resource requirements and equipment, and acts as a source of proof if needed in
the future. Without a testing strategy in place, it is possible that roles and duties would be misunderstood.


### 5.1 Mini-scenarios

One type of testing is mini-scenarios. This form shows instances of app control results and feedback and
how they will react to a specific input.

**Launch of the App**
This scenario represents the successful launch of software to the main menu screen. To access the main
menu, the user must first enter their information using one of two methods: sign up or log in.

**App start scenario**
After the user launches the app:

1. The loading screen shows up.
    (a) User was previously logged in: Continue to step 3.
    (b) User was not previously logged in: Continue to step 2.
2. The login screen shows up.
    (a) The user never used the app: Clicks Sign Up button
    (b) User has an account but logged out: Clicks Login button
3. The menu screen shows up

When a person uses a log-in option or was previously logged in, he is successfully logged in and accesses
the main menu. After, the user has access to the main menu as well. If the person has never used the app
and needs to create the account, then they use a sign-up method by inserting their name, email, and
password, and the information is being stored in the database for future log-ins.

User authentication scenarios that extensively evaluate each log-in screen technique. In addition, tests use
the logout action, which allows for alternative log-in settings.

**Email login scenario**

1. The user is at the login screen and will use email as a method to log in to the app.
    (a) The user connects to the internet, enters their email address and password, and clicks the
"Login" button: Proceed to the main menu.
    (b) The user is offline and presses the "Login" button: Refer to log in A - Fallback.
    (c) The user has internet access, does not enter any information, and presses the "Login" button:
Refer to Fallback - Login C for further information.


(d) The user connects to the internet, enters the incorrect email format, and clicks the "Login"
button: Refer to Fallback - Login C for further information.
(e) The user has access to the internet, enters the right email format, and clicks the "Login"
button: Refer to Login D - Fallback.
(f) The user has an internet connection, enters the proper email format but the incorrect password,
and clicks the "Login" button: See Fallback - Login E.

The user is logged in with an email account and may access the main app functionality from the menu
screen. The user will still be presented with the login screen if he cannot log in due to a lack of internet
connectivity, allowing him to log in again. If he cannot log in due to invalid inputs, he will either go to
the sign-up screen or stay on the login screen to try again. As indicated, the software has been tested to be
functional.

**Log in as a fallback**
This section is about the unsuccessful acts mentioned previously. Based on the fallback, the user is
directed to a certain step of the accomplished scenario.
A. The error label reads, "There is no internet connection." Go back to step 1.
B. The error message reads, "Wrong email/password." Go back to step 1.
C. "Wrong email/password," says the error notice. Go back to step 2.
D. "Wrong email/password," says the error label. Go back to step 2.
E. The error label reads, "Wrong email/password" Go back to step 2.

**Logout scenario**
When a user logs in using any method and appears on the menu screen. The scenario determines whether
or not the user may successfully log out of the app.

1. User presses the log out button on the top right corner
2. The screen moves from the main menu to the sign-in/login option menu
3. The user is logged out
The scenario has been tested and proven to work.


### 5.2 Unit Testing

Unit testing is an Agile method for evaluating the quality and efficiency of individual user stories or for a
single feature (or unit) developed by the developers. This white box testing is the smallest testing unit,
ensuring that each feature/user narrative is designed and functionally sound. Detecting and fixing
problems at the unit level is less expensive than finding them later when there are more dependencies.
Unit testing helps assure a solid foundation of code that translates to a better end-user experience in the
real world because the programme is made up of multiple user stories. An application's unit can be a
single piece of functionality, a programme, or a specific procedure.

Unit testing can be used for a variety of purposes, including:

```
● The predicted cases or happy routes
● Edge cases.
● Boundary conditions.
● Logic.
```
The following are some of the advantages of unit testing to consider (Nabil, 2022):

```
● Reduces testing costs by catching flaws early in the process (test early and often).
● Documentation is provided.
● Code complexity is reduced.
● The code's complexity has been lowered.
● Improves code reworking and design.
```
We may use the XCTest framework in iOS to develop unit tests for Xcode projects that smoothly interact
with Xcode's testing workflow. Apple's XCTest and XCUITest are appropriate for white box testing
because they use libraries and Swift/Objective C.

When the iOS app was created, it created three directories, one of which is FixITTests, which contains the
following test classes:


## FIGURE 31. TESTING CLASSES FOR THE FIXIT APPLICATION

Then the unit tests may be added or create different classes to test how the programme works.

For writing effective unit tests, there are several requirements to consider:

```
● Tests should be completed rapidly.
● The tests should be entirely automated, with a "pass" or "fail" outcome.
● Tests should not exchange states; instead, they should be independent and isolated from one
another.
● Your tests should be written before the production code they test. Test-driven development is the
term for this approach.
```
A unit test will be run when the authentication and login user story are complete to ensure that the login
works as expected. Field length, character minimums, error warnings, and the login button's functionality
are all considered factors.

Unit tests concentrate on remote code, and there are numerous frameworks available to test units
simultaneously across multiple mobile frameworks. These unit tests are simple to run hourly, daily, or
any other logical timeframe to validate behaviour against any changes, allowing to immediately surface
issues.


Unit testing is a critical and highly recommended technical practice for developers and mobile engineers.
It reduces the cost of errors, code complexity, and bugs and allows for better code restructuring. However,
it is insufficient on its own. Other types of tests, such as integration and system testing, must be
considered to cover the functionality of mobile apps.

We have integration testing following unit testing, usually done right after unit testing. This test shows
how the components work together and ensure that the application runs smoothly and without errors.

The integration test would integrate the login user story with database authentication to continue with the
login user story. The integration test does not check for the correct next step (welcome page or login error
screen, for example), but connecting to the database to validate authentication works.

Integration testing can have dependencies (such as databases), but it is still a reasonably straightforward
and focused process. Continuously running the test ensures that new code/features do not introduce new
defects or performance problems.

After that, system testing may be performed, in which all the software's components are examined to
ensure that the entire product performs as planned.

### 5.3 Application Testing with Volunteers

User acceptance testing is the last step in the process. It determines whether the programme is ready for
release and whether the solution will meet the users' needs. It is commonly referred to as "Beta testing" by
software developers. The beta software will be distributed to people and assigned tasks to see whether
they can figure out how to use it and solve the problem. There are also various testing services, such as
Kobiton and Browser Stack, where anyone may check out the app for free to see if it is ready for launch.

The application must be examined by the handyman and people that often need help with repairs. This is
because people who are not firmly connected to the industry would not see the common issue by using the
app as the people who work in the same.
Testing should be done in small groups or one-on-one to open communication of feedback and
recommendations. A small group that is not firmly connected to the industry will still be approached to


test the app and be considered a first-time user. The testers would be given a printed questionnaire with
relatively simple items.

If more time becomes available, the current evaluation technique could be improved, and a more
extensive experiment could be done.

## 6. Future Works and Conclusion

### 6.1 Future Works

It is intended to utilise a more complex and sophisticated programme in the future. However, such an
application will demand far greater access to users' privacy.
Developing an app while focusing on such a diverse variety of tasks provides several potentials for future
improvement. Even though the app has not been finished in the end, future implementations still need to
be considered as an ongoing development plan. As a result, the following items are suggestions for the
future.

**Android version**
After finishing the iOS version of the app, the number one priority is to try and implement the app for
Android users. There are still more Android users globally, so it would significantly impact publishing the
app on the Google Play Store. Although this would require knowledge of some other programming
languages, Firebase could still be used as the back-end service and synced with the iOS platform.

**Email confirmation and password recovery**
Anyone can use any email address to generate a personalised login identification for the app utilising
email authentication. Signing in also entails creating a password linked to the email address. Spammers
can abuse this option, so it should be safeguarded with a token confirmation given by email. Token
confirmation also verifies the authenticity of the email.

Another enhancement to look forward to is creating an automatic password recovery system for this login
form. Unfortunately, if the user forgets their password, the app has no automatic way of recovering it.
Instead, the user must write an email requesting a password recovery email. If the user chooses to email
assistance, an admin with Firebase console access can manually send them a password recovery email
using the given email address.


**Web-based software**
A web application is an option to present the user's statistics from the app and allow desktop users to find
a service. This concept was conceived in the middle of the development process, but there was no time to
design a complete web page. The good news is that all of the data can be obtained from the Firebase
database, which already has a well-documented API. Creating a web application should then be a simple
way to promote the app's popularity among the public and provide multiple options for the users.

#### 6.1.3 Advanced Functionalities

Some of the advanced functionalities that have been considered to be implemented in the future can be
seen in Table 16.

```
Functionality Explanation
```
```
Sizeable screen design We may hide the controls in the contextual menu using the latest UX and
UI, making the app more attractive and spacious.
```
```
Easy user interface A tiny group of data in outlined boxes is visually appealing. A user can
access detailed information by tapping these boxes.
```
```
Swiping is key Motion is an added benefit when working with little sections of detailed
logos. It is easily adaptable by users.
```
```
Innovative scrolling and
navigation
```
```
Adding a little extra to make in-app moves easier are essential for mobile
designs. A user interfaces with a better user experience for scrolling, and
quick navigation will be successful shortly.
```
```
Storytelling and branding Add a few narrative columns, as users enjoy reading about other people's
experiences. A good logo can even help to tell a story. For branding,
understanding how the software works and is useful to them.
```
```
Animations in-app App design that uses functional animation to draw the user's attention.
Giving users a visual cue will pique their interest and keep them engaged
with the software.
```

```
Application Updates A server-side technique allows the programme to receive content changes
without having to download it again. This can be done by keeping the app's
current offline features and then connecting it to a server. Users can also
use the application to provide feedback and suggestions, which will be
saved on the server.
```
```
Tablet compatibility The user interface is not designed for tablets with huge screens. This can be
accomplished by creating large-screen user interfaces and merging them
into existing code.
```
## TABLE 16. ADVANCED FUNCTIONALITIES FOR FUTURE IMPLEMENTATION

#### 6.1.4 Deploying to the App Store

This is not an improvement because publishing to the App Store is a highly desirable necessity in the
future to complete this project fully. There is a registration cost for opening a developer account on the
App Store. Developing and publishing will be done through a personal account, which has yet to be
formed. For the time being, creating an App Store developer account is not required.

When the software is ready for distribution on the App Store, the terms and conditions must be agreed to.
However, this does not safeguard against legal threats since app retailers defend their companies rather
than their users. As a result, rules must be established that app users must agree to and obey to download
and use the mobile app. It is also critical to include the appropriate disclaimer.

### 6.2 Conclusion

This dissertation began with an introduction that outlined the project, its goals and objectives, why
specific technologies were employed, and an assessment of the project's future. Furthermore, background
research on users, competition, technology stack, and development needs have been conducted to help
comprehend the project's commencement. While implementing all of the front-end and back-end
requirements, development approaches were described. Finally, some testing was performed on the
implemented code.


As an outcome of this project, the mobile iOS and server applications were developed. Despite both sides'
incompleteness, the application's future looks promising.

Moreover, the study revealed the application's positive impact on persons needing home assistance being
located and completed swiftly. However, more thorough tests with a significantly bigger sample size are
required to prove its efficacy.
As mentioned in the sections of the future work, much more can be done to improve and expand the
application's capabilities. However, the biggest problem would be finding future talent willing to bring
the idea forward.

The chat app and weather app that have been done before hand, would be integrated in the FixIT mobile
app at one point of the project.

Overall, the findings show that with adequate research, practical and straightforward solutions for on-
demand services may be developed, encouraging other developers to investigate this emerging industrial
mobile development sector.
On-demand applications have become a vital part of people's lives, and in the future, we will see many
intriguing features as people's reliance on home services apps grows.


## Legal Considerations

In the development of mobile apps, privacy standards are vital legal considerations. When collecting
personal information from users, it is necessary to provide a privacy policy and be honest with users about
what data may be accessed and why it is required. People must have confidence that their personal
information is safe and secure. As this app collects users' names, email addresses and passwords, it is
essential to have a privacy policy. The privacy policy must state how and why the app will save and
utilise users' data. These regulations must also outline end users' rights regarding their data and how they
may use their rights to ensure compliance with data protection and privacy regulations.

It must be ensured that the app conforms with the General Data Protection Regulation of the European
Union, as well as other international and local data protection laws, rules, legal guidelines, and
regulations. (Top 7 Legal Issues To Consider In Mobile App Development, n.d.)

A guideline provided by Apple called "Protecting the User's Privacy" explains all the App Store privacy
requirements for publishing the app in detail.


## Ethical Considerations

First, Terms and Conditions are legal agreements that app developers engage in with their app's
customers. When a user instals and uses the programme, this agreement takes effect automatically. It
defines the app, how the user must use it, what constitutes inappropriate or illegal app usage, and the
repercussions of harmful use. A Terms of the Service agreement is essential because it spells out the
guidelines for how the app should be used and lowers the chance of legal troubles for the organisation if a
user mishandles the product.
The Terms and conditions will include a description of what the application accomplishes, registration
conditions, such as age restrictions and deleting the account, and when the agreement is concluded and
when it is cancelled between the app provider and the user. Because the application is a computer
programme that will be made available to users via a licence, the terms of the licence agreement must be
defined.
Furthermore, it is needed to include the rules of complaints processing and information on how to contact
app providers. It is good practice to establish a straightforward procedure for complaints, including
multiple ways of contacting the service. (Zadorozna, 2021)
It is necessary to consider all Terms and Conditions at the start as this can help avoid redesigning an app
before the launch because it does not meet all requirements.


## References

Altvater, A., 2020. What Is SDLC? Understand the Software Development Life Cycle. [online] Stackify. Available
at: <https://stackify.com/what-is-
sdlc/#:~:text=SDLC%20or%20the%20Software%20Development,and%20ready%20for%20production%20use>
[Accessed 2 March 2022].

Armes, P., 2021. The best mobile app development tech stack (2021) | Pendo Blog. [online] Pendo Blog. Available
at: <https://www.pendo.io/pendo-blog/best-mobile-app-development-tech-stack/> [Accessed 23 March 2022].

Bohon, C., 2021. Apple's Swift programming language: Cheat sheet. [online] TechRepublic. Available at:
<https://www.techrepublic.com/article/apples-swift-programming-language-the-smart-persons-guide/> [Accessed
12 April 2022].

Brlas, G., 2020. Top 10 Most Useful iOS Libraries in 2020 | Infinum. [online] Infinum. Available at:
<https://infinum.com/blog/top- 10 - most-useful-iOS-libraries/> [Accessed 18 April 2022].

Drozd, M., 2021. Best Tech Stack for Mobile App Development in 2021. [online] Lanars - Web and App
development company. Available at: <https://lanars.com/blog/best-tech-stack-for-mobile-app-developmen>
[Accessed 27 March 2022].

Duckmanton, D., 2019. Why UX and UI should remain separate. [online] Medium. Available at:
<https://uxdesign.cc/why-ux-and-ui-should-remain-separate-7d6e3addb46f> [Accessed 4 April 2022].

Firebase. 2022. Firebase Pricing. [online] Available at: <https://firebase.google.com/pricing> [Accessed 6 March
2022].

Furman, R., 2022. A Definitive Overview on Mobile App Technology Stack. [online] Uptech.team. Available at:
<https://www.uptech.team/blog/mobile-app-technology-stack> [Accessed 27 March 2022].

support.nesi.org.nz. 2022. Git: Reference Sheet. [online] Available at: <https://support.nesi.org.nz/hc/en-
gb/articles/360001508515-Git-Reference-Sheet> [Accessed 25 March 2022].

Db-engines.com. 2022. historical trend of document stores popularity. [online] Available at: <https://db-
engines.com/en/ranking_trend/document+store> [Accessed 7 March 2022].

Verified Market Research. 2022. Home Services Market Size, Share, Trends, Opportunities And Forecast. [online]
Available at: <https://www.verifiedmarketresearch.com/product/global-home-service-market-size-and-forecast-to-
2025/> [Accessed 16 March 2022].

App Radar. 2019. How to Find Your Target Audience for Mobile Apps. [online] Available at:
<https://appradar.com/blog/how-to-find-your-target-audience-for-mobile-apps> [Accessed 3 March 2022].

iGeeksBlog. 2022. Infographic: How long does Apple support iPhones? - iGeeksBlog. [online] Available at:
<https://www.igeeksblog.com/how-long-apple-supports-iphones-infographic/> [Accessed 2 April 2022].


Kaur, J., 2021. Top Reasons Why On-Demand Home Services App Have a Bright Future. [online] Cerebrum
Infotech. Available at: <https://www.cerebruminfotech.com/blog/top-reasons-why-on-demand-home-services-apps-
have-a-bright-future#:~:text=The%20ease%20of%20access%20and,can%20call%20whenever%20one%20wants>
[Accessed 19 February 2022].

Kennedy, E., 2021. The iOS Font Size Guidelines (Updated for iOS 15) – Learn UI Design. [online] Learnui.design.
Available at: <https://learnui.design/blog/ios-font-size-guidelines.html> [Accessed 17 April 2022].

Khan, A., 2021. Model-View-Controller (MVC) on iOS - AppyPie. [online] Appy Pie. Available at:
<https://www.appypie.com/model-view-controller-mvc-
swift#:~:text=Model%2DView%2DController%20(MVC)%20is%20an%20exceptionally%20powerful,%2DOriente
d%20Programming%20(OOP)> [Accessed 14 March 2022].

Mathur, R., 2020. API Development: A Complete Guide for Building APIs for Mobile Apps. [online] | Technology
Insights By Arka Software. Available at: <https://www.arkasoftwares.com/blog/detailed-guide-on-api-development-
for-mobile-apps/> [Accessed 16 February 2022].

Medium. 2017. Mobile App Design: 14 Trendy Color Schemes. [online] Available at:
<https://medium.com/@Adoriasoft/mobile-app-design- 14 - trendy-color-schemes-2669b5bb77d3> [Accessed 11
April 2022].

Micetich, M. and Fisher, M., 2022. The Economy of Everything Home | Angi Research and Economics. [online]
Angi Research and Economics. Available at: <https://www.angi.com/research/reports/market/> [Accessed 19
February 2022].

Mihaleva, E., 2015. The Design and Development of a Mobile Application Using SOAP Web Services for
Increasing Business Mobility: a Case Study of Evolvit Oy. [online] Theseus.fi. Available at:
<https://www.theseus.fi/bitstream/handle/10024/104129/Thesis%20Final.pdf?sequence=1> [Accessed 6 March
2022].

Nabil, M., 2022. What is unit testing in mobile development? | Bitrise. [online] Blog.bitrise.io. Available at:
<https://blog.bitrise.io/post/what-is-unit-testing-in-mobile-development> [Accessed 2 March 2022].

Ray, O., 2021. 29 Statistics Home Services Marketers Need to Know in 2021. [online] Invoca.com. Available at:
<https://www.invoca.com/blog/home-services-marketing-stats> [Accessed 22 February 2022].

Sagar, P., 2022. Mobile Application Development Process. [online] Excellent Webworld. Available at:
<https://www.excellentwebworld.com/mobile-app-development-process/> [Accessed 18 February 2022].

Web And Mobile Apps Development, UI/UX Design | OpenGeeksLab. n.d. Top 7 Legal Issues To Consider In
Mobile App Development. [online] Available at: <https://opengeekslab.com/blog/top-legal-issues-in-mobile-app-
development/> [Accessed 7 April 2022].

Atlassian. n.d. Scrum - what it is, how it works, and why it's awesome. [online] Available at:
<https://www.atlassian.com/agile/scrum> [Accessed 6 May 2022].

Tawse, H., n.d. Gender diversity in the construction industry is incredibly low! - Pennyfarthing Homes. [online]
Pennyfarthing Homes. Available at: <https://www.pennyfarthinghomes.co.uk/gender-diversity-construction-


industry-incredibly-
low/#:~:text=05%20Jan%20Gender%20diversity%20in%20the%20construction%20industry%20is%20incredibly%
20low!&text=Women%20make%20up%20just%2011,99%25%20of%20workers%20are%20men> [Accessed 14
March 2022].

Developer.apple.com. n.d. Themes - iOS - Human Interface Guidelines - Apple Developer. [online] Available at:
<https://developer.apple.com/design/human-interface-guidelines/ios/overview/themes/> [Accessed 6 April 2022].

Pypl.github.io. 2022. TOPDB Top Database index. [online] Available at: <https://pypl.github.io/DB.html>
[Accessed 7 March 2022].

Vaidya, S., 2022. How TaskRabbit Work, TaskRabbit Business Model and Revenue Insights. [online]
Elluminatiinc.com. Available at: <https://www.elluminatiinc.com/how-taskrabbit-works-revenue-business-model/>
[Accessed 19 March 2022].

Atlassian. n.d. What is Agile? | Atlassian. [online] Available at: <https://www.atlassian.com/agile> [Accessed 6
March 2022].

Developer.apple.com. n.d. Xcode - Support - Apple Developer. [online] Available at:
<https://developer.apple.com/support/xcode/> [Accessed 29 March 2022].

Zadorozna, A., 2021. 5 Key Legal Issues to Consider in your Mobile App Development in 2022. [online] Droids On
Roids. Available at: <https://www.thedroidsonroids.com/blog/legal-issues-in-mobile-app-development#stores>
[Accessed 7 April 2022].

Zawacki, E., 2022. iPhone lidar with applications for the geosciences | OpenTopography. [online]
Opentopography.org. Available at: <https://opentopography.org/blog/iphone-lidar-applications-geosciences>
[Accessed 2 April 2022].


## Bibliography

Christian Dawson (2015) Projects in Computing and Information Systems: A Student's Guide
(3rd ed.), Pearson Higher Education, ISBN-10: 1292073462

D Dambul, N., 2014. _MOBILE APPLICATION DESIGN AND DEVELOPMENT ON TOUCH SCREEN PHONES
FOR ADULTS WITH DYSLEXIA_. [online] Studentnet.cs.manchester.ac.uk. Available at:
<https://studentnet.cs.manchester.ac.uk/resources/library/thesis_abstracts/MSc14/FullText/Dambul-NormanD-
fulltext.pdf> [Accessed 7 February 2022].

Kapoor, A., 2021. _A 5-Step Guide to Mobile App Testing Automation_. [online] netsolutions.com. Available at:
<https://www.netsolutions.com/insights/mobile-app-testing-automation/> [Accessed 2 March 2022].

Firebase. n.d. Firebase. [online] Available at: <https://firebase.google.com/> [Accessed 6 March 2022].

Pears, R. and Shields, G. (2013) Cite them Right: The Essential Guide to Referencing and
Plagiarism (9th ed.), Palgrave Macmillan

Sitejabber.com. n.d. TaskRabbit Reviews - 2.0 Stars. [online] Available at:
<https://www.sitejabber.com/reviews/taskrabbit.com> [Accessed 20 March 2022].

Trustpilot. n.d. Handy is rated "Great" with 3.9 / 5 on Trustpilot. [online] Available at:
<https://uk.trustpilot.com/review/handy.com?stars=1> [Accessed 20 March 2022].


## Appendices

### Appendix A: Glossary

AI Artificial Intelligence
API Application Programming Interface
BaaS Back-end as a Service
CCCU Canterbury Christ Church University
CPU Central Processing Unit
DB Database
GB Gigabyte
HTTP Hypertext transfer Protocol
HTTPS Hypertext transfer Protocol Secure
IDE Integrated Development Environment
iOS iPhone Operating System
IT Information Technology
JSON JavaScript Object Notation
LLVM Low-Level Virtual Machine
M Million
ML Machine Learning
MVC Model-View-Controller
OS Operating System
REST Representational State Transfer
SCCS Source Code Control System
SDLC Software Development Life Cycle
SPM Swift Package Manager
TAM Total Addressable Market
UI User Interface
UK United Kingdom
UML Unified Modelling Language
URL Uniform Resource Locator
USA United States of America
UTF Unicode Transformation Format
UX User Experience


### Appendix B: Marking Scheme

Default Marking Scheme.


### Appendix C: Changes to the Project Initiation Document

"Deliberately Left Blank"


### Appendix D: Current Environment Investigation Report

Not applicable.


### Appendix E: Requirements Specification

Not applicable. Requirements have been set in the table 6 of the report.


### Appendix F: Design Report

Not applicable. The design model has been explained in the chapter 3 of the report.


### Appendix G: Implementation

Not applicable. The implementation has been explained in the chapter 4 of the report.


### Appendix H: Testing

Not applicable. The testing has been examined in the chapter 5 of the report.


### Appendix I: User Guide

## FIGURE 32 USER FLOW DIAGRAM EXAMINED IN DETAIL


### Appendix J: Project Management

The following link is a link to a GitHub profile with a project code:
https://github.com/JS1240/FixIT.

The next two links of a code that will be integrated in the future of the project that has also been done:
https://github.com/JS1240/Chat_app
https://github.com/JS1240/Weather_App.


## Appendix K: Meetings with Supervisor

18 th October 2021 – initial meeting, proposing the project and requirements, discussed about feasibility
25 th October 2021 – double checking on the requirements and tasks that need to be executed
9 th of March 2022 – poster presentation and suggestions for the ongoing project
28 th of April 2022 – project suggestions, dissertation writing
9 th of May 2022 – project overview


## Appendix L: Agile Development

```
Priority Project backlog
Story
point(s)
1 As a project owner, I want to have defined mobile app goals and objectives. 2
2 As a project owner, I want to have a brief evaluation of the project. 1
```
```
3 As a project owner, I want to have a detailed market analysis, with user identification and
competition research.
```
```
4
```
```
4 As a project owner, I want to have extensive analysis on technology stacks being used for
mobile development.
```
```
5
```
```
5 As a project owner, I want to have hardware and software specifications for development
and utilisation of the app.
```
```
3
```
```
6 As a project owner, I want to have defined use cases that are going to be implemented in
the app.
```
```
3
```
```
7 As a project owner, I want to have detailed user flow diagrams that are going to be used
for the designing the application.
```
```
4
```
```
8 As a project owner, I want to have simple wireframes that are going to be a foundation for
the future design.
```
```
4
```
```
9 As a project owner, I want to have a UI and UX design of the application so the developer
could follow the steps while implementing the code.
```
```
5
```
```
10 As a project owner, I want to have a detailed software architecture examination so the
future scalability of the app would be quicker and easier.
```
```
3
```
```
11 As a user, I want to have a simple opening screen, so I can quickly sign up or log in to the
app.
```
```
3
```
```
12 As a database manager, I want to have a data model diagram, so I can implement the
relation between the customers, workers and server and store their data in the system.
```
```
5
```
```
13 As a user, I want to have the main menu which is showing categories that the app provides
and the menu at the bottom, so I can smoothly browse the app.
```
```
4
```

14 As a customer, I want to have a screen showing available workers so I can see their price,
picture and rating.

```
4
```
15 As a customer, I want to see the workers profile and reviews so I can determine if he is
suitable for the job.

```
5
```
16 As a customer, I want to have a way to message the handyman so we can both agree on
time and price.

```
4
```
17 As a user, I want to have a detailed Privacy Policy and Terms of Use when entering the
app so I can see what data is being used.

```
2
```
18 As a customer, I want to be able to review the worker so others can see their previous
experience.

```
5
```
19 As a user, I want to have a switch button so I can switch between being a customer and a
handyman.

```
3
```
20 As a user, I want to have an option to sign in or log in with different platforms, so it can
save me time with entering the app.

```
2
```
21 As a handyman, I want to have a calendar so I can easily see when my next on-demand
service is.

```
4
```
22 As a customer, I want to have a sort button so I can easily search my favourite way. 1

23 As a customer, I want to have a filter button so I can reduce the number of workers
straight at the beginning.

```
1
```
24 As a user, I want to have profile settings so I could change my information and settings
anytime.

```
3
```
25 As a user, I want to have a payment history so I can keep track of my money flow. 4

26 As a customer, I want to have a map with available workers so I can see which workers
are nearby.

```
7
```
27 As a user, I want to have an option to share the app with others so I can get some promo
codes and help others.

```
3
```
28 As a user, I want to have customer support so if any problem occurs, I can get help with it. 6

## TABLE 17. PRODUCT BACKLOG, USER STORIES AND PRIORITISATION


