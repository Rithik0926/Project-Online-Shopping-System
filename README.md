# 🛒 Online Shopping System (MySQL Project)

## 📌 Description
A backend SQL project simulating order placement with stock management and error handling.

## 🗂️ Features
- Tables: Product, Customer, Orders, Order_Details
- Stored Procedure: PlaceOrder
- Stock update and error checks

## 🏗️ Setup Instructions
1. Start XAMPP and go to phpMyAdmin
2. Create a database, e.g., `online_shop_db`
3. Import:
    - schema.sql
    - insert_data.sql
    - procedures.sql

## 🧪 Testing
CALL PlaceOrder(101, 1, 1); -- valid  
CALL PlaceOrder(101, 2, 999); -- invalid

## 📸 Screenshots
Place your phpMyAdmin screenshots in the `screenshots/` folder.

## 👤 Created By
Your Name
