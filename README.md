# Login-Register-Servlet

## Description
This project is a simple login and registration system implemented using Servlets. It allows users to register by providing their name, email, and password, which are stored in a MySQL database named "loginregisterdb". Users can then log in using their registered credentials, and upon successful authentication, they can access the system. Additionally, the project includes a logout feature to end the user session.

## Demo 

https://www.linkedin.com/posts/anandini18git_java-backend-learningjourney-activity-7184973870699884544-3TRA?utm_source=share&utm_medium=member_desktop

## Set Up Database
To set up the project, follow these steps:
1. Create a MySQL database named "loginregisterdb".
2. Inside the "loginregisterdb" database, create a table named "user" with columns for name, email, and password.
3. Ensure that the necessary dependencies are included in the project, such as the MySQL JDBC driver.
4. Deploy the Servlets in a servlet container like Apache Tomcat.
5. Run the application.

![image](https://github.com/Anandini18/Login-Register-Servlet/assets/88365547/65d09ac7-751c-4230-8bef-d007373a99b5)

### First Page 

![image](https://github.com/Anandini18/Login-Register-Servlet/assets/88365547/4df1a0c2-4bbb-480d-8a8a-f092c0e7fb1d)


### Login
- Users can log in using their registered credentials.
- If the entered credentials match those stored in the database, the user is logged in.
- If the entered credentials are incorrect, an "Invalid username or password" error message is displayed.

![image](https://github.com/Anandini18/Login-Register-Servlet/assets/88365547/60e86e0c-5d47-4f21-ad24-7ba79f0ea707)
![image](https://github.com/Anandini18/Login-Register-Servlet/assets/88365547/2643a971-f77e-4235-a9ba-000bd1f450ad)
![image](https://github.com/Anandini18/Login-Register-Servlet/assets/88365547/6ae012cf-1c28-4e7a-a0d6-34ad0d006592)
![image](https://github.com/Anandini18/Login-Register-Servlet/assets/88365547/2af35c2a-6338-484f-9aac-92a8137a6c8e)


### Registration
- Allows users to register by providing their name, email, and password.
- Upon registration, a new row is inserted into the "user" table in the database.

![image](https://github.com/Anandini18/Login-Register-Servlet/assets/88365547/3b2d8af1-9c81-4fbd-8fc5-fdf0a3063d49)
![image](https://github.com/Anandini18/Login-Register-Servlet/assets/88365547/2d62c7b2-1926-411c-bf11-32fd2491d24c)
![image](https://github.com/Anandini18/Login-Register-Servlet/assets/88365547/a30db319-6287-4f0d-a660-5aac70d2380f)
![image](https://github.com/Anandini18/Login-Register-Servlet/assets/88365547/144dc0f8-89d6-4bba-ad85-e8168810faab)
![image](https://github.com/Anandini18/Login-Register-Servlet/assets/88365547/e78abadc-3237-44ec-858d-9f47773f3f6c)


### Back To Home
- Will redirect to the index.html page.

![image](https://github.com/Anandini18/Login-Register-Servlet/assets/88365547/34366f92-929b-4c26-9206-39a0a5f9e3c3)

### Logout
- Includes a logout feature to end the user session and log the user out of the system.

![image](https://github.com/Anandini18/Login-Register-Servlet/assets/88365547/186eb60c-a83a-438b-989a-efba01035126)


## Usage
1. Visit the registration page and fill in the required details.
2. Upon successful registration, log in using the registered credentials.
3. Navigate through the system and perform desired actions.
4. Click on the logout button to end the session and log out of the system.

## Technologies Used
- Java Servlets
- MySQL

## Contribution
Contributions are welcome. Feel free to submit bug reports, feature requests, or pull requests.

## Author
[Nandini Agarwal]

