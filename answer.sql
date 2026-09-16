-- ==========================================
-- Database: Library Management System
-- Description: This script creates a database 
-- to manage books, library members, and book borrowings.
-- ==========================================

-- 1. Create the database
CREATE DATABASE IF NOT EXISTS library_management;

-- 2. Tell MySQL to use this newly created database
USE library_management;

-- 3. Create the 'books' table to store book details
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(100) NOT NULL,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    published_year INT,
    available_copies INT DEFAULT 0
);

-- 4. Create the 'members' table to store library member details
CREATE TABLE members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    join_date DATE NOT NULL
);

-- 5. Create the 'borrowings' table to track which member borrowed which book
CREATE TABLE borrowings (
    borrowing_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT NOT NULL,
    book_id INT NOT NULL,
    borrow_date DATE NOT NULL,
    return_date DATE,
    status ENUM('borrowed', 'returned') DEFAULT 'borrowed',
    -- Link member_id to the members table
    FOREIGN KEY (member_id) REFERENCES members(member_id),
    -- Link book_id to the books table
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

-- 6. Insert some sample data into the tables to test them
INSERT INTO books (title, author, isbn, published_year, available_copies) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', '9780743273565', 1925, 5),
('To Kill a Mockingbird', 'Harper Lee', '9780060935467', 1960, 3);

INSERT INTO members (first_name, last_name, email, join_date) VALUES
('John', 'Doe', 'john.doe@example.com', '2026-09-01'),
('Jane', 'Smith', 'jane.smith@example.com', '2026-09-05');

INSERT INTO borrowings (member_id, book_id, borrow_date, status) VALUES
(1, 1, '2026-09-10', 'borrowed');