# Web Services and Push Notifications Testing Project

## Overview

This project aims to test the functionalities of web services and push notifications implemented using Flutter for the client-side and PHP and MySQL for the server-side. The primary objective is to establish communication between a Flutter application and a PHP server, specifically focusing on making HTTP POST requests from the client and processing the received data on the server.

## Functionality Testing

### 1. HTTP POST Request from Flutter Application

- The Flutter application will initiate HTTP POST requests to the PHP server.
- Data containing usernames and passwords will be sent as part of the request payload.

### 2. PHP API Implementation

- The PHP server hosts an API that reads the POST data from the HTTP request.
- It verifies the received username and password by querying the MySQL database.
- The server sends back a response in JSON format indicating the authentication status.

## Components

- **Flutter Application**: Client-side application built using Flutter framework.
- **PHP Server**: Server-side implementation using PHP to handle HTTP requests and interact with MySQL database.
- **MySQL Database**: Database used for storing user credentials and other relevant data.

## Workflow

1. The Flutter application sends HTTP POST requests to the designated PHP API endpoint.
2. The PHP server receives the request and extracts the username and password data.
3. PHP queries the MySQL database to match the received credentials.
4. Based on the database query result, the server constructs a JSON response.
5. The Flutter application processes the JSON response and handles authentication accordingly.

## Setup

### Flutter Application Setup

- Clone or download the Flutter application project.
- Ensure Flutter SDK is installed and configured.
- Open the project in your preferred IDE.
- Modify the API endpoint URL in the Flutter code to match your PHP server.

### PHP Server Setup

- Set up a web server environment (e.g., Apache, Nginx) with PHP support.
- Clone or download the PHP server project files.
- Configure the database connection settings in the PHP code.
- Import the provided MySQL database schema and data.

## Testing

1. Start the PHP server.
2. Launch the Flutter application on a compatible device or emulator.
3. Interact with the application to trigger HTTP POST requests.
4. Monitor the server logs and database interactions to verify functionality.
5. Test scenarios including correct and incorrect credentials to ensure robustness.

## Contributors

- [Hillary Chesaro]
- [Saro Labs]

## License

[Distributed under Saro Labs License]
