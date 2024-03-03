-- init.sql

-- Create the user table
CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    username VARCHAR(255) NOT NULL
);

-- Create the thread table
CREATE TABLE IF NOT EXISTS thread (
    id INT AUTO_INCREMENT PRIMARY KEY,
    author_id INT,
    content TEXT,
    tag VARCHAR(255),
    images_url TEXT,
    title VARCHAR(255),
    likes INT DEFAULT 0,
    dislikes INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (author_id) REFERENCES user(id)
);
