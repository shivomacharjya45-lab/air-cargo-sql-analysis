# Air Cargo Business Analysis using SQL

## Project Overview

This project performs SQL-based business analysis for an air cargo and aviation company to analyze customer behavior, ticket sales, passenger traffic, and route performance.

The project focuses on using relational databases and advanced SQL techniques to extract actionable insights that can support customer experience improvement and operational efficiency.

## Business Problem

Air Cargo provides transportation services for passengers and freight. The company aims to improve customer satisfaction and optimize its operations by analyzing passenger, ticket, and route data.

The primary business objectives of this project are:

* Identify regular and active customers.
* Analyze passenger traffic and route performance.
* Evaluate ticket sales and business-class revenue.
* Identify high-demand routes.
* Analyze customer booking behavior.
* Improve SQL query performance.
* Generate structured reports for business decision-making.

## Dataset

The project uses four relational datasets.

### Customer

Contains customer demographic information.

Key attributes:

* Customer ID
* First Name
* Last Name
* Date of Birth
* Gender

### Passengers on Flights

Contains passenger travel information.

Key attributes:

* Aircraft ID
* Route ID
* Customer ID
* Departure Location
* Arrival Location
* Seat Number
* Travel Class
* Travel Date
* Flight Number

### Ticket Details

Contains ticket purchase information.

Key attributes:

* Purchase Date
* Customer ID
* Aircraft ID
* Travel Class
* Number of Tickets
* Airport Code
* Price Per Ticket
* Airline Brand

### Routes

Contains airline route information.

Key attributes:

* Route ID
* Flight Number
* Origin Airport
* Destination Airport
* Aircraft ID
* Distance in Miles

## Tools and Technologies

* MySQL
* SQL
* MySQL Workbench
* Relational Database Management System (RDBMS)

## SQL Concepts Used

The project demonstrates practical implementation of:

* SELECT Statements
* WHERE Clauses
* Aggregate Functions
* GROUP BY
* HAVING
* SQL Joins
* Subqueries
* Window Functions
* IF Statements
* ROLLUP
* Views
* Stored Procedures
* Database Indexing
* Execution Plans
* User and Access Management
* Database Design
* ER Diagrams

## Project Workflow

### 1. Database Creation

Created an `AirCargo` relational database and imported customer, passenger, ticket, and route datasets into structured SQL tables.

### 2. Database Design

Analyzed relationships between the datasets and created an Entity Relationship Diagram to understand the relational database structure.

### 3. Passenger and Route Analysis

Used SQL queries to:

* Identify passengers travelling across selected routes.
* Analyze passenger activity by route.
* Examine aircraft and route performance.
* Calculate average route distance and passenger volume.

### 4. Revenue Analysis

Analyzed ticket sales data to:

* Calculate total business-class revenue.
* Determine passenger and ticket volumes.
* Identify maximum ticket prices across travel classes.
* Calculate total ticket expenditure by customers.

### 5. Customer Analysis

Performed customer-level analysis to:

* Combine customer first and last names.
* Identify customers who registered and booked tickets.
* Analyze customers based on airline brands.
* Identify Economy Plus passengers.
* Evaluate customer ticket purchasing behavior.

### 6. Advanced SQL Analysis

Implemented advanced SQL techniques including:

* Window functions to identify maximum ticket prices by class.
* ROLLUP for hierarchical ticket price aggregation.
* Views to organize business-class customer data.
* Stored procedures to retrieve long-distance routes.
* GROUP BY analysis for customer ticket purchases and spending.

### 7. Query Performance Optimization

Improved SQL query performance through database indexing.

Execution plans were analyzed to evaluate query execution and optimize passenger searches for specific routes.

### 8. Database Access Management

Created database users and implemented access permissions to demonstrate basic SQL database administration and security concepts.

## Business Insights

The analysis supports the identification of:

* High-demand airline routes.
* Customer booking patterns.
* Business-class revenue performance.
* Frequent and active customers.
* Long-distance flight routes.
* Passenger distribution across aircraft.
* Ticket purchasing behavior.

These insights can support aircraft allocation, customer targeting, operational planning, and revenue analysis.

## Business Value

This project demonstrates how SQL can be used to transform aviation data into actionable business information.

The analysis can help organizations:

* Improve route planning.
* Optimize aircraft allocation.
* Identify valuable customer segments.
* Analyze ticket revenue.
* Monitor passenger traffic.
* Improve operational decision-making.

## Repository Structure

```text
air-cargo-sql-analysis/
│
├── air_cargo_analysis.sql
├── customer.csv
├── passengers_on_flights.csv
├── ticket_details.csv
├── routes.csv
├── er_diagram.png
└── README.md
```

## Future Improvements

Future enhancements could include:

* Building a Power BI dashboard for route and revenue analysis.
* Automating SQL reporting workflows.
* Performing customer segmentation.
* Developing route demand forecasting models.
* Integrating Python for advanced exploratory data analysis.
* Creating an end-to-end aviation business intelligence solution.

## Author

**Shivom Acharjya**

Aspiring Data Analyst

**Skills:** SQL | Python | Excel | Power BI | Tableau

**GitHub:** Add GitHub Profile Link

**LinkedIn:** Add LinkedIn Profile Link
