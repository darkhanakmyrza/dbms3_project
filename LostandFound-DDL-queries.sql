CREATE TABLE user(
	student_id INT PRIMARY KEY AUTO_INCREMENT,
	password VARCHAR(45) NOT NULL
);

CREATE TABLE faculty(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL
);

CREATE TABLE speciality(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    faculty_id INT,
    FOREIGN KEY (faculty_id) REFERENCES faculty(id)
);


CREATE TABLE profile(
	id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(45) NOT NULL,
	last_name VARCHAR(45) NOT NULL,
    student_id INT,
    photo VARCHAR(45),
    course INT NOT NULL,
    speciality_id INT,
    phone_number VARCHAR(45) NOT NULL,
    FOREIGN KEY (student_id) REFERENCES user(student_id),
    FOREIGN KEY (speciality_id) REFERENCES speciality(id)
);

CREATE TABLE item(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(45) NOT NULL,
    description VARCHAR(1000) NOT NULL,
    date DATETIME NOT NULL,
    student_id INT,
    status VARCHAR(25),
    FOREIGN KEY (student_id) REFERENCES user(student_id)
);

CREATE TABLE comment(
	id INT PRIMARY KEY AUTO_INCREMENT,
    item_id INT,
    text VARCHAR(1000) NOT NULL,
    author_id INT,
    date DATETIME NOT NULL,
    FOREIGN KEY (item_id) REFERENCES item(id),
    FOREIGN KEY (author_id) REFERENCES user(student_id)
);

CREATE TABLE item_image(
	id INT PRIMARY KEY AUTO_INCREMENT,
    image VARCHAR(45) NOT NULL,
    item_id INT,
    FOREIGN KEY (item_id) REFERENCES item(id)
);
