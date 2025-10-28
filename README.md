# 🎓 Student Management System (JSP + Servlet + MySQL + Tomcat 10)

A modern, full-stack **Student Management Web Application** built using **Java (JSP/Servlet)**, **MySQL**, and **Bootstrap 5**.  
It allows you to **add**, **view**, **edit**, and **delete** student records easily through a clean, professional UI.

---

## 🧩 Features

✅ Add new students (name, email, course, phone)  
✅ Edit or delete existing student records  
✅ View all students in a responsive Bootstrap table  
✅ MySQL-based persistent storage  
✅ Clean & professional UI (Poppins font, soft blue theme)  
✅ Deployable as a `.war` file on Apache Tomcat 10  
✅ Compatible with AWS EC2 or any Java web server  

---

## 🏗️ Project Structure

StudentManagement/
├── WEB-INF/
│   ├── web.xml
│   ├── classes/
│   │   ├── com/student/controller/RegistrationController.class
│   │   ├── com/student/controller/EditStudent.class
│   │   ├── com/student/controller/DeleteStudent.class
│   │   ├── com/student/controller/SaveEditedStudent.class
│   │   ├── com/student/controller/ViewStudents.class
│   │   ├── com/student/dao/*.class
│   │   └── com/student/model/*.class
│   └── lib/
│       └── mysql-connector-java-8.0.xx.jar
├── index.jsp
├── home.jsp
├── NewFile.jsp
└── assets/
    └── css/styles.css

    
---

## 🗄️ Database Setup (MySQL)

### Create Database
```sql
CREATE DATABASE student_management;
USE student_management;

CREATE TABLE student (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  course VARCHAR(100) NOT NULL,
  phone VARCHAR(15),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

**##  Optional Sample Data**
INSERT INTO student (name, email, course, phone)
VALUES
('Rahul Sharma', 'rahul@example.com', 'BCA', '9876543210'),
('Priya Singh', 'priya@example.com', 'MBA', '9123456789');

⚙️ Backend Configuration
DB Connection (DBConnection.java)
private static final String URL = "jdbc:mysql://localhost:3306/student_management";
private static final String USER = "root";          // your MySQL username
private static final String PASSWORD = "password";  // your MySQL password


Make sure you have the MySQL JDBC driver (mysql-connector-java-8.0.xx.jar)
inside WEB-INF/lib/ or /opt/tomcat/lib/.

🧠 How It Works
Component	Description
index.jsp	Welcome / quick navigation page
home.jsp	Displays all students using Bootstrap table
NewFile.jsp	Add / edit student form
RegistrationController	Handles new student creation
ViewStudents	Lists students from DB
EditStudent	Loads existing student data for editing
SaveEditedStudent	Updates edited student data
DeleteStudent	Deletes student by ID
🧩 Building the WAR File

If your folder is structured like above:

cd StudentManagement
jar -cvf StudentManagement.war *


This generates StudentManagement.war ready for deployment.

☁️ Deploying on AWS EC2 (Tomcat 10)

Launch EC2 Instance (Ubuntu 22.04)

Open inbound port 8080 (Tomcat)

SSH using your .pem key

Install Java & Tomcat

sudo apt update
sudo apt install -y openjdk-17-jdk wget unzip


Install Tomcat 10

cd /tmp
wget https://downloads.apache.org/tomcat/tomcat-10/v10.0.30/bin/apache-tomcat-10.0.30.tar.gz
sudo mkdir /opt/tomcat
sudo tar xzf apache-tomcat-10.0.30.tar.gz -C /opt/tomcat --strip-components=1
sudo chmod +x /opt/tomcat/bin/*.sh


Deploy the WAR File

scp -i my-key.pem StudentManagement.war ubuntu@<EC2_PUBLIC_IP>:/home/ubuntu/
ssh -i my-key.pem ubuntu@<EC2_PUBLIC_IP>
sudo mv /home/ubuntu/StudentManagement.war /opt/tomcat/webapps/


Access Your App

http://<EC2_PUBLIC_IP>:8080/StudentManagement/


(Optional) Use Amazon RDS for Database
Replace DBConnection URL with your RDS endpoint.

🔐 Common Issues & Fixes
Issue	Cause	Solution
HTTP 404	Wrong servlet mapping	Verify web.xml or @WebServlet path
ClassNotFoundException: com.mysql.cj.jdbc.Driver	Missing MySQL JAR	Place mysql-connector-java.jar in Tomcat /lib
Access denied for user	MySQL user permissions	Update DB user privileges
Tomcat 10 Jakarta errors	Using javax.* imports	Change to jakarta.* packages
🧑‍💻 Technologies Used

Frontend: JSP, Bootstrap 5, HTML5, CSS3

Backend: Java Servlet (Jakarta), JDBC

Database: MySQL 8

Server: Apache Tomcat 10

Hosting: AWS EC2 (Optionally RDS for DB)

🏁 License

This project is open-source and free to use for educational and learning purposes.

💬 Author

Shubham Pandey
🚀 Java Full-Stack Developer | Cloud Enthusiast
📧 Email: shubhamcedc@gmail.com  

🌐 GitHub: https://github.com/kush150/

