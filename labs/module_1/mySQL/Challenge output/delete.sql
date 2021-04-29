USE lab_mysql;

SELECT * FROM car;

DELETE FROM car
WHERE manufacturer = 'Volvo'
AND car_ID = 6
;