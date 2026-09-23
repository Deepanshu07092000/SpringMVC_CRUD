# Gun Armory - Spring MVC CRUD Application

## 📌 Project Overview

Gun Armory is a web-based inventory management application developed using **Java, Spring MVC, Hibernate, MySQL, and JSP**.

The application allows users to manage weapon/gun inventory through basic CRUD operations such as:

- Add a new weapon
- View all weapons
- Search weapons by ID or name
- Update weapon details
- Delete weapons
- Log incoming HTTP requests using a Servlet Filter

The project follows a layered architecture with separate **Controller, Service, DAO, and Model** layers.

---

## 🛠️ Technologies Used

| Technology | Purpose |
|------------|---------|
| Java | Programming Language |
| Spring MVC | Web MVC Framework |
| Hibernate | ORM / Database Interaction |
| MySQL | Database |
| JSP | View Layer |
| JSTL | JSP Tag Library |
| HTML / CSS | Frontend |
| Bootstrap | UI Styling |
| Font Awesome | Icons |
| Maven | Dependency Management |
| Apache Tomcat 10 | Application Server |
| Servlet Filter | Request Logging |

---

## 🏗️ Project Architecture

The application follows a layered architecture:

```text
Client / Browser
       |
       v
Servlet Filter
       |
       v
DispatcherServlet
       |
       v
Controller
       |
       v
Service
       |
       v
DAO
       |
       v
Hibernate
       |
       v
MySQL Database
