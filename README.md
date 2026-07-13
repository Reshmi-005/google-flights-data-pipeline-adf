# ✈️ Live Google Flights Data Pipeline using Azure Data Factory

## 📌 Project Overview

This project is an end-to-end Azure Data Engineering solution that retrieves live Google Flights data using the SearchAPI.io REST API, stores raw JSON files in Azure Data Lake Storage Gen2, transforms nested data using Azure Data Factory Mapping Data Flows, and loads the cleaned data into Azure SQL Database.

The pipeline includes monitoring, scheduling, and error handling to simulate a production-ready ETL workflow.

---

## 🛠️ Technologies Used

- Azure Data Factory
- Azure Data Lake Storage Gen2
- Azure SQL Database
- SearchAPI.io (Google Flights API)
- REST API
- Mapping Data Flow
- SQL

---

## 🏗️ Architecture

```
SearchAPI.io (Google Flights API)
            │
            ▼
Azure Data Factory (Copy Activity)
            │
            ▼
Azure Data Lake Storage Gen2
            │
            ▼
Mapping Data Flow
(Source → Flatten → Derived Column → Flatten → Derived Column → Select)
            │
            ▼
Azure SQL Database
            │
            ▼
Monitoring & Schedule Trigger
```

---

## 🔄 Pipeline Workflow

1. Fetch live Google Flights data from SearchAPI.io.
2. Store raw JSON files in Azure Data Lake Storage Gen2.
3. Transform nested JSON using Mapping Data Flow.
4. Extract airline, airport, duration, travel class, and other details.
5. Load curated data into Azure SQL Database.
6. Monitor pipeline execution.
7. Handle failures using Fail activities.
8. Schedule automated execution using Schedule Trigger.

---

## ✨ Features

- REST API Integration
- JSON Data Ingestion
- Nested JSON Flattening
- Derived Columns
- Azure SQL Loading
- Error Handling
- Schedule Trigger
- Pipeline Monitoring

---

## 📂 Repository Structure

```
google-flights-data-pipeline-adf/
│
├── README.md
├── Architecture/
├── Pipeline/
├── SQL/
├── Screenshots/
└── docs/
```

---

## 📸 Project Screenshots

### Screenshot 1
![Screenshot1](Screenshots/Screenshot%202026-07-14%20024900.png)

### Screenshot 2
![Screenshot2](Screenshots/Screenshot%202026-07-14%20024936.png)

### Screenshot 3
![Screenshot3](Screenshots/Screenshot%202026-07-14%20025002.png)

### Screenshot 4
![Screenshot4](Screenshots/Screenshot%202026-07-14%20025038.png)

### Screenshot 5
![Screenshot5](Screenshots/Screenshot%202026-07-14%20025231.png)

### Screenshot 6
![Screenshot6](Screenshots/Screenshot%202026-07-14%20025249.png)

### Screenshot 7
![Screenshot7](Screenshots/Screenshot%202026-07-14%20025307.png)

### Screenshot 8
![Screenshot8](Screenshots/Screenshot%202026-07-14%20025327.png)

### Screenshot 9
![Screenshot9](Screenshots/Screenshot%202026-07-14%20025400.png)

### Screenshot 10
![Screenshot10](Screenshots/Screenshot%202026-07-14%20025628.png)

## 📊 Sample SQL Queries

```sql
SELECT * FROM FlightSearchResults;

SELECT COUNT(*) FROM FlightSearchResults;

SELECT TOP 10 * FROM FlightSearchResults;
```

---

## 👩‍💻 Author

**Reshmi Rakesh P**

Data Engineer | Azure Data Factory | SQL | Python
