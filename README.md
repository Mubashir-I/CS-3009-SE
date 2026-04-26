Project Setup:

1. Clone the Repository
git clone <repository-url>
cd <repository-folder>

2. Setup Database (Microsoft SQL Server)
- Navigate to the 'database' folder.
- Run the schema script to create the database structure.
- Run the seed data script to populate dummy data.

3. Configure Database User
- Open Microsoft SQL Server.
- Create or use an existing user for the application.
- Copy the username and password.

4. Configure Application Properties
Create a file at:
src/main/resources/config.properties

Add the following content:

db.url=jdbc:sqlserver://localhost:1433;databaseName=faculty_feedback;encrypt=true;trustServerCertificate=true;
db.user=YOUR_USERNAME
db.password=YOUR_PASSWORD
db.driver=com.microsoft.sqlserver.jdbc.SQLServerDriver
app.starting_view=LoginPage.fxml

Replace YOUR_USERNAME and YOUR_PASSWORD with your actual database credentials.

Setup complete. Run the application using IntelliJ.
