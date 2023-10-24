CREATE TABLE Employers (
 Employer_id SERIAL PRIMARY KEY,
 employer_name TEXT,
 employer_surname TEXT,
 employer_position TEXT, 
 employer_salary TEXT,
 employer_contact_information TEXT
);

CREATE TABLE Mechanics (
 Mechanic_id SERIAL PRIMARY KEY,
 Employer_id INT,
 CONSTRAINT Emp_key 
 FOREIGN KEY(Employer_id) REFERENCES Employers(Employer_id)
);

CREATE TABLE Car_characteristics (
 Car_characteristics_id SERIAL PRIMARY KEY,
 Engine TEXT,
 Date_of_issue DATE,
 Engine_capacity INT,
 Fuel_type TEXT,
 Car_color TEXT
);

CREATE TABLE Payment (
 Payment_id SERIAL PRIMARY KEY,
 Amount_sum INT,
 Amount_date DATE
);

CREATE TABLE Rental (
 Rental_id SERIAL PRIMARY KEY,
 Start_date DATE,
 End_date DATE,
 Rental_rate_id INT,
 Insurance_charge_id INT	
);

CREATE TABLE Cars_category (
 Cars_category_id SERIAL PRIMARY KEY,
 Rental_id INT,
 Car_characteristics INT,
 Payment_id INT,
 CONSTRAINT Rent_key
 FOREIGN KEY(Rental_id) REFERENCES Rental(Rental_id),
 CONSTRAINT Car_char_key
 FOREIGN KEY(Car_characteristics) REFERENCES Car_characteristics(Car_characteristics_id),
 CONSTRAINT Paym_key
 FOREIGN KEY(Payment_id) REFERENCES Payment(Payment_id)
);

CREATE TABLE Clients (
 Client_id SERIAL PRIMARY KEY,
 Client_name TEXT,
 Client_surname TEXT,
 Client_number INT
);

CREATE TABLE Orders (
 Order_ID SERIAL PRIMARY KEY,
 Order_amount INT,	
 Cars_category_id INT,
 Client_id INT,
 Order_status TEXT,
 CONSTRAINT Car_cat_key
 FOREIGN KEY(Cars_category_id) REFERENCES Cars_category(Cars_category_id),
 CONSTRAINT Client_key
 FOREIGN KEY(Client_id) REFERENCES Clients(Client_id)
);

CREATE TABLE Discounts_n_promotions (
 Discount_id SERIAL PRIMARY KEY,
 Discounts_in_percentage TEXT,
 Cars_category_id INT,
 CONSTRAINT Car_cat_key
 FOREIGN KEY(Cars_category_id) REFERENCES Cars_category(Cars_category_id)
);

CREATE TABLE Ordered_goods (
 Ordered_goods_id SERIAL PRIMARY KEY,
 Order_id INT,
 Client_name TEXT,
 Client_surname TEXT,
 CONSTRAINT Order_key
 FOREIGN KEY(Order_id) REFERENCES Orders(Order_id)
);

CREATE TABLE Stock (
 Stock_ID SERIAL PRIMARY KEY,
 Name_of_product TEXT,
 Quantity_of_stock INT,	
 Unit_cost INT,
 Ordered_goods_id INT,
 CONSTRAINT Ordered_key
 FOREIGN KEY(Ordered_goods_id) REFERENCES Ordered_goods(Ordered_goods_id)
);

CREATE TABLE Managers (
 Manager_ID SERIAL PRIMARY KEY,
 Employer_ID INT,
 Manager_name TEXT,
 Manager_surname TEXT,	
 CONSTRAINT Emp_key
 FOREIGN KEY(Employer_ID) REFERENCES Employers(Employer_ID)
);

CREATE TABLE Service_Station (
 Service_station_id SERIAL PRIMARY KEY,
 Mechanic_ID INT,
 Cars_category_id INT,
 CONSTRAINT Mech_key
 FOREIGN KEY(Mechanic_ID) REFERENCES Mechanics(Mechanic_ID),
 CONSTRAINT Car_cat_key
 FOREIGN KEY(Cars_category_id) REFERENCES Cars_category(Cars_category_id)
);