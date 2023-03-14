-- EDR Dealership


CREATE TABLE salesperson (
    salesperson_id SERIAL PRIMARY KEY,
    s_first_name VARCHAR(100),
    s_last_name VARCHAR(100),
    s_email VARCHAR(50),
    s_phone VARCHAR(50)
);

CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    c_first_name VARCHAR(50),
    c_last_name VARCHAR(20),
    c_address VARCHAR(50),
    c_billing_address VARCHAR(150),
    c_phone_number VARCHAR(100)
);

CREATE TABLE mechanic (
mechanic_id SERIAL PRIMARY KEY,
	m_first_name VARCHAR(100),
	m_last_name VARCHAR(100),
	m_email VARCHAR(100),
	m_phone VARCHAR(100)
);
	
	
	
CREATE TABLE newVehicle (
    vehicle_id SERIAL PRIMARY KEY,
    car_make VARCHAR(100),
    car_model VARCHAR(100),
    car_year VARCHAR(20),
    car_price NUMERIC(10, 2),
    car_vin VARCHAR(50),
    car_type VARCHAR(100)
);

CREATE TABLE serviceVehicle (
	vehicle_id SERIAL PRIMARY KEY,
	car_make VARCHAR(100),
    car_model VARCHAR(100),
    car_year VARCHAR(20),
    car_vin VARCHAR(50),
    car_type VARCHAR(100)
);


CREATE TABLE serviceTicket (
    ticket_id SERIAL PRIMARY KEY,
    ticket_date DATE,
    ticket_time TIME,
    customer_id INT,
    s_vehicle_id INT,
    service_description VARCHAR(1000),
    cost_of_serv NUMERIC(5, 2),
    cost_of_parts NUMERIC(5, 2),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (s_vehicle_id) REFERENCES serviceVehicle(s_vehicle_id)
);

CREATE TABLE ServiceHistory (
    service_hist_id SERIAL PRIMARY KEY,
    ticket_id INT,
    customer_id INT,
    s_vehicle_id INT,
    service_description VARCHAR(1000),
    FOREIGN KEY (s_vehicle_id) REFERENCES serviceVehicle(s_vehicle_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (ticket_id) REFERENCES serviceTicket(ticket_id)
);


create table invoice (
    invoice_id SERIAL PRIMARY KEY,
    invoice_date DATE,
    salesperson_id INT null,
    mechanic_id INT null,
    n_vehicle_id INT null,
    s_vehicle_id INT null,
    customer_id INT,
    ticket_id INT null,
    cost_of_serv NUMERIC(5, 2),
    cost_of_parts NUMERIC(5, 2),
    sub_total NUMERIC(10, 2),
    total NUMERIC(10, 2),
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (n_vehicle_id) REFERENCES newVehicle(n_vehicle_id),
    FOREIGN KEY (s_vehicle_id) REFERENCES serviceVehicle(s_vehicle_id),
    FOREIGN KEY (ticket_id) REFERENCES serviceTicket(ticket_id)
);


ALTER TABLE newVehicle
RENAME COLUMN vehicle_id TO n_vehicle_id;

ALTER TABLE serviceVehicle
RENAME COLUMN vehicle_id TO s_vehicle_id;



--ALTER ROLE edomqbva CONNECTION LIMIT 100;

INSERT INTO salesperson (s_first_name, s_last_name, s_email, s_phone) 
VALUES 
('John', 'Smith', 'john.smith@email.com', '561-258-7777'),
('Ivan', 'Angelo', 'ivan.a@email.com', '561-258-5555'),
('Carlos', 'Duarte', 'cduarte@email.com', '561-333-4545'),
('Patricia', 'Altman', 'paltman-smith@email.com', '561-215-8798'),
('Evan', 'Orourke', 'eorourke@email.com', '213-555-8585');


ALTER TABLE customer ADD COLUMN c_email VARCHAR(100);


ALTER TABLE newVehicle
ALTER COLUMN car_type TYPE VARCHAR(100);

ALTER TABLE serviceVehicle
ALTER COLUMN car_type TYPE VARCHAR(100);
