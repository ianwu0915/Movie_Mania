# Project Setup Instructions

Follow these steps to set up and run the project:

### 1. Unzip the Project Files

Start by unzipping the zip file containing the project files to your desired location.

### 2. Import the Database

Import the data from the `movie_mania.sql` file into your MySQL database.

### 3. Install Server Dependencies

Navigate to the server folder using the terminal and run the following command to install the necessary dependencies:
```npm install```

This step is necessary if you have cloned the project.

### 4. Configure Environment Variables

Create a `.env` file at the root level of the server folder. Inside this file, add the following line:
``` MYSQLPASSWORD=your_password ```

Replace `your_password` with the password you use to log in to the MySQL Workbench. Ensure you save the file after making these changes.

### 5. Verify Database Configuration

Open the `index.js` file in the server folder and verify that the host, user, and database configurations are correct in the `mysql.createPool` function.

### 6. Install Client Dependencies

Navigate to the client folder using the terminal and run:
```npm install```

This step is also necessary if you have cloned the project.

### 7. Start the Back-End Server

Go back to the server folder and start the back-end server by running either:

```node index.js```

or, if you have `nodemon` installed:

```nodemon index.js```


### 8. Start the Client Application

Open another terminal, navigate to the client folder, and run:

```npm run start```

You can then access the application via `http://localhost:3000` in your web browser.

## Troubleshooting Database Connection Errors

If you encounter an error like "Access denied for user 'root@localhost' (using password: NO)" when the application makes its first attempt to connect to your MySQL database, you can resolve this by executing the following commands in your MySQL Workbench:

```ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'your-chosen-password'; ```

```FLUSH PRIVILEGES;```

Replace `your-chosen-password` with the password you wish to use for the `root` user.








