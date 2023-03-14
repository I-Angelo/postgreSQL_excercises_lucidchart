INSERT INTO salesperson (s_first_name, s_last_name, s_email, s_phone) 
VALUES 
('John', 'Smith', 'john.smith@email.com', '561-258-7777'),
('Ivan', 'Angelo', 'ivan.a@email.com', '561-258-5555'),
('Carlos', 'Duarte', 'cduarte@email.com', '561-333-4545'),
('Patricia', 'Altman', 'paltman-smith@email.com', '561-215-8798'),
('Evan', 'Orourke', 'eorourke@email.com', '213-555-8585');



INSERT INTO customer (c_first_name, c_last_name, c_email, c_phone_number, c_address, c_billing_address) 
VALUES 
('John', 'Valdez', 'john.valdez@email.com', '203-777-7777', '123 coronado st, sanata monica, CA 09210', '123 coronado st, sanata monica, CA 09210'),
('Ivan', 'Angelo', 'ivan.a@email.com', '414-258-5256', '555 Landrum rd, boca raton, FL 33432', '555 Landrum rd, boca raton, FL 33432'),
('Pat', 'Landrum', 'plandrum@email.com', '713-333-3535', '9210 breezeway st, stuart, FL 34525', '9210 breezeway st, stuart, FL 34525'),
('Patricia', 'weisman', 'pweisman@email.com', '561-215-7575', '565 Renaissance st, sanata monica, CA 09555', '123 coronado st, sanata monica, CA 09210'),
('Charles', 'Paek', 'cpaeke@email.com', '213-555-6644', '85 main st, new yor, NY 03254', '5897 backstreet ave, new york, NY 23545');


INSERT INTO mechanic  (m_first_name, m_last_name , m_email , m_phone) 
VALUES 
('Patrick', 'Stwart', 'pstwart@erddealer.com', '414-567-8888'),
('John','Leguizamo','jleguizamo@erddealer.com','516-323-4444');

INSERT INTO newVehicle (car_make, car_model, car_year,car_price, car_vin, car_type)
VALUES
('BMW', 'X8', '2023', '95000.00', 'JTHBB1BA2A2013500', 'SUV'),
('BMW', 'M6', '2023', '120000.00', 'JH4KA4640KC013757', 'Sedan'),
('Mercedes Benz', 'E350', '2023', '83000.00', '5LMJJ2J57CEL03980', 'Sedan'),
('Lexus', 'RX350', '2023', '65000.00', '1GKEV16K8LF538649', 'SUV'),
('Toyota', 'Sienna', '2023', '450000.00', 'WP1AB29P88LA47599', 'Minivan'),
('Toyota', 'Lexus', 'LX350', '110000.00', '5NPDH4AE6BH023266', 'SUV'),
('Toyota', 'Tundra', '2023', '68000.00', '1C4NJPBA1CD661292', 'Pickup Truck');


INSERT INTO servicevehicle  (car_make, car_model, car_year, car_vin, car_type)
VALUES
('Jeep', 'Cherokee', '1988', '1J4GX48S81C511876', 'SUV'),
('Mazda', 'CX 9', '2010', 'JH4KA4660JC005061', 'Sedan'),
('GEO', 'Metro', '1996', 'SAJWA0HEXDMS56024', 'Sedan'),
('BMW', '3 Series', '2006', '1FVACWDU1BHBB3474', 'Sedan'),
('Honda', 'Prelude', '1992', 'ZCFJS7458M1953433', 'Sedan'),
('Dodge', 'Neon', '2003', '1FTEF14N5KNB30636', 'Sedan'),
('Toyota', 'Tundra', '2010', '5TFUM5F18AX006026', 'Pickup Truck');

INSERT INTO serviceTicket (ticket_date, ticket_time, customer_id, s_vehicle_id, service_description, cost_of_serv, cost_of_parts)
VALUES ('2023-03-13', '13:30:00', 3, 5, 'Oil Change', 50.00, 20.00);

UPDATE serviceTicket
SET cost_of_serv = '75.00', cost_of_parts = '30.00'
WHERE ticket_id = 1;

ALTER TABLE serviceticket 
ALTER COLUMN cost_of_serv TYPE NUMERIC(5, 2);

INSERT INTO ServiceHistory (ticket_id, customer_id, s_vehicle_id, service_description)
VALUES (1, 3, 5, 'Performed oil change and tire rotation');



INSERT INTO invoice (invoice_date, salesperson_id, mechanic_id, n_vehicle_id, s_vehicle_id, customer_id, ticket_id, cost_of_serv, cost_of_parts, sub_total, total)
VALUES ('2023-03-13', null , 2, null, 5, 3, 1, '75.00', '30.00', '100.00', '107.50');




