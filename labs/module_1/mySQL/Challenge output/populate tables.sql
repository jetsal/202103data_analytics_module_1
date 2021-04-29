USE lab_mysql;

INSERT INTO car(VIN, manufacturer, model, builtyear, color)
VALUES
('3K096I98581DHSNUP' , 'Volkswagen' , 'Tiguan' , '2019' , 'Blue'),
('ZM8G7BEUQZ97IH46V' , 'Peugeot' , 'Rifter' , '2019' , 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford' , 'Fusion' , '2018' , 'White' ),
('HKNDGS7CU31E9Z7JW' , 'Toyota' , 'RAV4'  , '2018' , 'Silver'),
('DAM41UDN3CHU2WVF6' , 'Volvo' , 'V60', '2019' , 'Gray'),
('DAM41UDN3CHU2WVF6' , 'Volvo' , 'V60 Cross Country' , '2019' , 'Gray')
;

INSERT INTO customer (cust_name, phone, email, address, city, state_province, country, zipcode)
VALUES
('Pablo Picasso', '34636176382', '0', 'Paseo de la Chopera, 14','Madrid', 'Madrid','Spain', '28045'),
('Abraham Lincoln', '13059077086', '0', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
('Napoléon Bonaparte','33179754000', '0', '40 Rue du Colisée','Paris','Île-de-France', 'France', '75008')
;

INSERT INTO salesperson (staff_name, store_loc)
VALUES
('Petey Cruiser', 'Madrid'),
('Anna Sthesia', 'Barcelona'),
('Paul Molive', 'Berlin'),
('Gail Forcewind', 'Paris'),
('Paige Turner','Mimia'),
('Bob Frapples','Mexico City'),
('Walter Melon','Amsterdam'),
('Shonda Leer','São Paulo')
;


"THIS DIDNT WORK not on invoice or invoice_test"
INSERT INTO invoice(invoice_date, car_ID, cust_ID, staff_ID)
VALUES
('2018-08-22', '0','1','3'),
('2018-12-31', '3', '0', '5'),
('2019-01-22','2', '2', '7')
;

