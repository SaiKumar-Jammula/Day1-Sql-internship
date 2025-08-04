# Day1-Sql-internship
# 🛒 E-Commerce Database Schema

This project defines a relational database schema for an E-Commerce system using **MySQL**. It includes entities such as `Customers`, `Orders`, `Products`, `Categories`, `Payments`, and more — designed with normalization and real-world relationships in mind.

---

## 📦 Project Structure

- **Database Name**: `e_commerce`
- **Tables**:
  - `categories`
  - `products`
  - `customers`
  - `orders`
  - `order_items`
  - `payments`

---

## 🔗 Entity Relationships

- Each product belongs to a category.
- Each customer can place multiple orders.
- Each order can contain multiple products (`order_items`).
- Each order has one payment record.
