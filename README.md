# Task 5:  SQL Joins (Inner, Left, Right, Full)

This task demonstrates how to use different types of SQL JOINs to combine data from two related tables: `Customers` and `Orders`.

## 📋 Tables Created
- **Customers**: Contains customer details (CustomerID, Name, Country)
- **Orders**: Contains order information linked to customers (OrderID, CustomerID, Date, Amount)

## 🔧 Sample Data
Three sample customers were added (Alex Turner, Gracie Abrams, Justin Bieber), along with four orders (one order includes a non-existent customer to test join behavior).

<img width="200" alt="image" src="https://github.com/user-attachments/assets/78fb7765-0157-447c-b489-b402bf3204a3" />

## 🔍 SQL Join Queries
The following types of JOINs are demonstrated:

- **INNER JOIN**: Returns only rows where there is a match in both `Customers` and `Orders`.
<img width="292" alt="image" src="https://github.com/user-attachments/assets/067795aa-07bc-4692-9921-237feacffd6e" />

- **LEFT JOIN**: Returns all customers, even if they haven't placed any orders. Unmatched order fields will show `NULL`.
<img width="299" alt="image" src="https://github.com/user-attachments/assets/67ba5c77-559c-49ec-812e-38e38c9b4efe" />

- **RIGHT JOIN**: Returns all orders, even if the customer doesn’t exist. Unmatched customer fields will show `NULL`.
<img width="299" alt="image" src="https://github.com/user-attachments/assets/4ea24260-c1e2-403d-ac8c-50fd05e19d61" />

- **FULL OUTER JOIN**: Returns all customers and all orders. Rows with no match on either side will contain `NULL`.
<img width="295" alt="image" src="https://github.com/user-attachments/assets/75fec24e-88d3-4eca-bc82-d0bc000c3836" />

## 📁 Files Included
- `task-5_script.sql` – Contains table creation and data insertion
- `task-5_queries.sql` – Contains JOIN queries

## 🛠 Tools Used
- MySQL Workbench
