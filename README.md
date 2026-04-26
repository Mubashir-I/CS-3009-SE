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
