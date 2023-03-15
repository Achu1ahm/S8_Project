-- Create a new database
CREATE DATABASE ITServices;

-- Use the ITServices database
USE ITServices;

-- Create a table for companies
CREATE TABLE Companies (
  CompanyID INT PRIMARY KEY,
  CompanyName VARCHAR(50),
  Location VARCHAR(50)
);

-- Insert sample data into the Companies table
INSERT INTO Companies (CompanyID, CompanyName, Location)
VALUES
  (1, 'ABC Corporation', 'New York'),
  (2, 'XYZ Inc.', 'San Francisco'),
  (3, 'Acme Enterprises', 'London'),
  (4, 'Tech Solutions', 'Tokyo'),
  (5, 'Global IT Services', 'Sydney');

-- Create a table for IT services
CREATE TABLE ITServices (
  ServiceID INT PRIMARY KEY,
  ServiceName VARCHAR(50),
  Description VARCHAR(200),
  Price DECIMAL(8,2),
  CompanyID INT,
  FOREIGN KEY (CompanyID) REFERENCES Companies(CompanyID)
);

-- Insert sample data into the ITServices table
INSERT INTO ITServices (ServiceID, ServiceName, Description, Price, CompanyID)
VALUES
  (1, 'Web Development', 'Design and develop custom websites', 5000.00, 1),
  (2, 'Mobile App Development', 'Create native mobile apps for iOS and Android', 8000.00, 2),
  (3, 'Cloud Computing', 'Provide cloud hosting and management services', 15000.00, 3),
  (4, 'Data Analytics', 'Analyze and report on business data', 12000.00, 4),
  (5, 'Cybersecurity', 'Secure networks and data against cyber threats', 10000.00, 5);
