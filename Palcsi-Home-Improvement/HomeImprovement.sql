CREATE TABLE users (
	user_id serial PRIMARY KEY,
	first_name varchar (250) NOT NULL,
	last_name varchar (250) NOT NULL,
	email varchar (100) UNIQUE NOT NULL,
	billing_address varchar (250) NOT NULL,	
	phone varchar (15),
	payment_method VARCHAR (50),
	username varchar(250) UNIQUE NOT NULL,
	password varchar (255),
	role varchar (10),
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE projects (
  	project_id serial,
  	project_name varchar(80) NOT NULL,      -- Name of the task
  	priority varchar(50) NOT NULL,     	  	-- Priority of task
  	start_date date NOT NULL, 				-- start date
	end_date date NULL,						-- end date
	emergency boolean default false, 		-- emergency project?
	description varchar(500)  NULL	       -- Description of project
);

CREATE TABLE appointment (
	appointment_id serial,
	user_id INT NOT NULL,
	apt_date date NOT NULL,
	description varchar (500) NULL,
	FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);


INSERT INTO users(username, password)
VALUES ('paul', '$2a$10$9cWTb5cC90z0GAqHFzYBlOax5kYv9U/7cDAxBBOnCrv7BSA0HsTPi');

INSERT INTO roles (username, role) 
VALUES ('paul', 'ADMIN');

INSERT INTO users (username, password)
VALUES ('user1', '$2a$10$FvhoMEdUf.FrQ23g53gqmeqX/3QlJGF/P3AouwF0vuAHhTihP4pQS');

INSERT INTO roles (username, role) 
VALUES ('user1', 'USER')