--CREATING TABLES IN THE DATABASE---

--1. Creating under debt_management_database
--report (report_id, report_date, report_type, staff_id) 
CREATE TABLE report (
    report_id INTERGER PRIMARY KEY,  
    report_date DATE,
    report_type VARCHAR (50),
    staff_id INTERGER);
SELECT * FROM report;
   
 -- Creating under debt_management_database
-- debt (debt_id, debtors_id, debt_amount, due_date, debt_interest_accrued)
CREATE TABLE IF NOT EXISTS debt(
    debt_id INTEGER PRIMARY KEY, 
    debtors_id INTEGER, 
    debt_amount INTERGER, 
    due_date DATE, 
    debt_interest_accrued INTERGER);
   
SELECT * FROM debt;
   
-- Creating under debt_management_database
-- debtors (debtors_id, debtors_name, debtors_phone, debtors_email)
CREATE TABLE IF NOT EXISTS debtors(
    debtors_id INTEGER PRIMARY KEY, 
    debtors_name VARCHAR(100), 
    debtors_phone INTERGER, 
    debtors_email VARCHAR(50));
   
SELECT * FROM debtors;
   
 -- Creating under debt_management_database
-- guarantors (guarantor_id, debt_id, guarantor_name, guarantor_phone, guarantor_email)
CREATE TABLE IF NOT EXISTS guarantors(
    guarantor_id INTEGER PRIMARY KEY, 
    debt_id INTEGER, 
    guarantor_name VARCHAR(100), 
    guarantor_phone INTERGER, 
    guarantor_email VARCHAR(50));
   
SELECT * FROM guarantors;
   
  
-- Creating under debt_management_database
-- invoice (invoice_id, debt_id, invoiced_amount, invoice_due_date)
CREATE TABLE IF NOT EXISTS invoice(
    invoice_id INTEGER PRIMARY KEY, 
    debt_id INTEGER, 
    invoiced_amount INTERGER, 
    invoice_due_date DATE);
   
SELECT * FROM invoice;

   
-- Creating under debt_management_database
-- interest (interest_id, interest_debt_id, interest_rate, date_effective, type_of_interest)
CREATE TABLE IF NOT EXISTS interest(
    interest_id INTEGER PRIMARY KEY, 
    interest_debt_id INTEGER, 
    interest_rate FLOAT, 
    date_effective DATE, 
    type_of_interest VARCHAR(50));
   
SELECT * FROM interest;
 
   
-- Creating under debt_management_database
-- payments (payment_id, debt_id, amount_paid, balance_due, interest_accrued, first_name, last_name, phone_number)
CREATE TABLE IF NOT EXISTS payments(
    payment_id INTEGER PRIMARY KEY, 
    debt_id INTEGER, 
    amount_paid INTERGER, 
    balance_due INTERGER, 
    interest_accrued INTERGER, 
    first_name VARCHAR(50), 
    last_name VARCHAR(50), 
    phone_number INTERGER);

SELECT * FROM payments;
   
-- Creating under debt_management_database
-- staff (staff_id, first_name, last_name, job_role)
CREATE TABLE IF NOT EXISTS staff(
    staff_id INTEGER PRIMARY KEY, 
    first_name VARCHAR(50), 
    last_name VARCHAR(50), 
    job_role VARCHAR(50));

SELECT * FROM staff;

--INSERTING RECORDS IN THE TABLES--

--Inserting records to the reports table
 INSERT INTO report (report_id, report_date, report_type, staff_id) 
 	VALUES
		(1, '2024-01-07', 'Debt Collection Report', 1),
		(2, '2024-01-14', 'Debt Overview Report', 2),
		(3, '2024-01-21', 'Interest Accrued Report', 3),
		(4, '2024-01-28', 'Payment Summary Report', 4),
		(5, '2024-02-04', 'Interest Accrued Report', 5),
		(6, '2024-02-11', 'Invoice Summary Report', 6),
		(7, '2024-02-18', 'Guarantor Status Summary report', 7),
		(8, '2024-02-25', 'Interest Accrued Report', 8),
		(9, '2024-03-03', 'Payment Summary Report', 9),
		(10, '2024-03-10', 'Guarantor Status Summary report', 10),
		(11, '2024-03-17', 'Invoice Summary Report', 11),
		(12, '2024-03-24', 'Interest Accrued Report', 12),
		(13, '2024-03-31', 'Payment Summary Report', 13),
		(14, '2024-04-07', 'Staff Performance Report', 14),
		(15, '2024-04-14', 'Staff Performance Report', 15),
		(16, '2024-04-21', 'Interest Accrued Report', 16),
		(17, '2024-04-28', 'Payment Summary Report', 17),
		(18, '2024-05-05', 'Invoice Summary Report', 18),
		(19, '2024-05-12', 'Interest Accrued Report', 19),
		(20, '2024-05-19', 'Guarantor Status Summary report', 20),
		(21, '2024-05-26', 'Guarantor Status Summary report', 21),
		(22, '2024-06-02', 'Interest Accrued Report', 22),
		(23, '2024-06-09', 'Payment Summary Report', 23),
		(24, '2024-06-16', 'Interest Accrued Report', 24),
		(25, '2024-06-23', 'Invoice Summary Report', 25),
		(26, '2024-06-30', 'Invoice Summary Report', 26),
		(27, '2024-07-07', 'Interest Accrued Report', 27),
		(28, '2024-07-14', 'Guarantor Status Summary report', 28),
		(29, '2024-07-21', 'Payment Summary Report', 29),
		(30, '2024-07-28', 'Invoice Summary Report', 30);
SELECT * FROM report;


--Inserting records to the debts table
INSERT INTO debt (debt_id, debtors_id, debt_amount, due_date, debt_interest_accrued) 
	VALUES
		(1, 1, 5200, '2024-07-01', 520),
		(2, 2, 3030, '2024-07-15', 303),
		(3, 3, 4530, '2024-08-01', 453),
		(4, 4, 6080, '2024-08-15', 608),
		(5, 5, 3520, '2024-09-01', 352),
		(6, 6, 5670, '2024-09-15', 567),
		(7, 7, 6754, '2024-09-16', 675),
		(8, 8, 200, '2024-07-16', 20),
		(9, 9, 5301, '2024-08-02', 530),
		(10, 10, 6254, '2024-08-16', 625),
		(11, 11, 4567, '2024-09-02', 465),
		(12, 12, 2675, '2024-09-16', 267),
		(13, 13, 9867, '2024-07-03', 986),
		(14, 14, 9087, '2024-07-17', 908),
		(15, 15, 2654, '2024-08-03', 265),
		(16, 16, 1625, '2024-08-17', 162),
		(17, 17, 1827, '2024-09-03', 182),
		(18, 18, 5726, '2024-09-17', 572),
		(19, 19, 6371, '2024-07-04', 637),
		(20, 20, 2981, '2024-07-18', 298),
		(21, 21, 3987, '2024-08-04', 398),
		(22, 22, 2987, '2024-08-18', 299),
		(23, 23, 4267, '2024-09-04', 427),
		(24, 24, 1627, '2024-09-18', 163),
		(25, 25, 1526, '2024-07-05', 153),
		(26, 26, 3726, '2024-07-19', 372),
		(27, 27, 2981, '2024-08-05', 298),
		(28, 28, 1726, '2024-08-19', 173),
		(29, 29, 1827, '2024-09-05', 182),
		(30, 30, 1827, '2024-09-19', 182);
SELECT * FROM debt;

--Inserting records into the debtors table
INSERT INTO debtors (debtors_id, debtors_name, debtors_phone, debtors_email) 
	VALUES
		(1, 'Mercy', '62084819', 'ogero@gmail.com'),
		(2, 'Teresa', '47128843', 'Munuve@gmail.com'),
		(3, 'Michael', '62920015', 'levin@gmail.com'),
		(4, 'Emily', '57053674', 'masita@gmail.com'),
		(5, 'Teresa', '7664413', 'ogero@gmail.com'),
		(6, 'Sophia', '19936335', 'kerubo@gmail.com'),
		(7, 'James', '66401543', 'Muiruris@gmail.com'),
		(8, 'Olivia', '7221629', 'mbare@gmail.com'),
		(9, 'Alexander', '24595077', 'wanjuki@gmail.com'),
		(10, 'Emma', '16870671', 'kira@gmail.com'),
		(11, 'Daniel', '13591739', 'wilele@gmail.com'),
		(12, 'Isabella', '57797402', 'maore@gmail.com'),
		(13, 'Matthew', '33839639', 'kamba@gmail.com'),
		(14, 'Mia', '70042175', 'waru@gmail.com'),
		(15, 'Benjamin', '77341808', 'timau@gmail.com'),
		(16, 'Ava', '53474362', 'helsinki@gmail.com'),
		(17, 'Elijah', '11097208', 'kauri@gmail.com'),
		(18, 'Charlotte', '66152864', 'jambe@gmail.com'),
		(19, 'Logan', '56528277', 'amber@gmail.com'),
		(20, 'Amelia', '28776413', 'kiran@gmail.com'),
		(21, 'Lucas', '31338183', 'warutere@gmail.com'),
		(22, 'Evelyn', '25991772', 'adhiambo@gmail.com'),
		(23, 'Mary', '75462294', 'mugure@gmail.com'),
		(24, 'William', '55133569', 'kanyeki@gmail.com'),
		(25, 'Aiden', '10506514', 'samba@gmail.com'),
		(26, 'Grace', '25145998', 'waceke@gmail.com'),
		(27, 'Jackson', '47448314', 'kilili@gmail.com'),
		(28, 'Scarlett', '21622996', 'gachanja@gmail.com'),
		(29, 'David', '22654498', 'kanyi@gmail.com'),
		(30, 'Victoria', '23490043', 'rubadiri@gmail.com');
SELECT * FROM debtors ;


-- Insert records into guarantors table
INSERT INTO guarantors (guarantor_id, debt_id, guarantor_name, guarantor_phone, guarantor_email) 
	VALUES
		(1, 12, 'Mercy', 7204766, 'mercy@gmail.com'),
		(2, 9, 'Nyamoita', 7339626, 'nyamoita@gmail.com'),
		(3, 5, 'Ogero', 7759360, 'ogero@gmail.com'),
		(4, 23, 'Bochaberi', 7513807, 'bochaberi@gmail.com'),
		(5, 18, 'Ombori', 7742616, 'ombori@gmail.com'),
		(6, 1, 'Tersae', 7927779, 'tersae@gmail.com'),
		(7, 8, 'Kemuntor', 7513953, 'kemuntor@gmail.com'),
		(8, 14, 'Ogreho', 7676761, 'ogreho@gmail.com'),
		(9, 27, 'Ivy', 7245284, 'ivy@gmail.com'),
		(10, 21, 'Mark', 7300502, 'mark@gmail.com'),
		(11, 20, 'Masara', 7859398, 'masara@gmail.com'),
		(12, 2, 'Ogerohk', 7961875, 'ogerohk@gmail.com'),
		(13, 15, 'Justine', 7744599, 'justine@gmail.com'),
		(14, 10, 'Noah', 7924932, 'noah@gmail.com'),
		(15, 4, 'Olivia', 7542787, 'olivia@gmail.com'),
		(16, 3, 'Paul', 7696923, 'paul@gmail.com'),
		(17, 30, 'John', 7368993, 'john@gmail.com'),
		(18, 28, 'Rachel', 7787823, 'rachel@gmail.com'),
		(19, 11, 'Samuel', 7330556, 'samuel@gmail.com'),
		(20, 13, 'Tina', 7585310, 'tina@gmail.com'),
		(21, 6, 'Victor', 7399459, 'victor@gmail.com'),
		(22, 19, 'Wendy', 7907058, 'wendy@gmail.com'),
		(23, 7, 'Menyd Maitah', 7100948, 'menyd@gmail.com'),
		(24, 25, 'Yvonne', 7499179, 'yvonne@gmail.com'),
		(25, 22, 'Zachary', 7566256, 'zachary@gmail.com'),
		(26, 17, 'Isabella', 7870831, 'isabella@gmail.com'),
		(27, 29, 'Ethan Garcia', 7857249, 'ethan@gmail.com'),
		(28, 26, 'Sophia', 7411628, 'sophia@gmail.com'),
		(29, 24, 'Jayons', 7737190, 'jayons@gmail.com'),
		(30, 16, 'Ruto', 7435445, 'ruto@gmail.com');
SELECT * FROM guarantors;


--Inserting records into invoice table
INSERT INTO invoice (invoice_id, debt_id, invoiced_amount, invoice_due_date) 
	VALUES
		(1, 1, 5200, '2024-07-01'),
		(2, 2, 3030, '2024-07-15'),
		(3, 3, 4530, '2024-08-01'),
		(4, 4, 6080, '2024-08-15'),
		(5, 5, 3520, '2024-09-01'),
		(6, 6, 5670, '2024-09-15'),
		(7, 7, 6754, '2024-09-16'),
		(8, 8, 200, '2024-07-16'),
		(9, 9, 5301, '2024-08-02'),
		(10, 10, 6254, '2024-08-16'),
		(11, 11, 4567, '2024-09-02'),
		(12, 12, 2675, '2024-09-16'),
		(13, 13, 9867, '2024-07-03'),
		(14, 14, 9087, '2024-07-17'),
		(15, 15, 2654, '2024-08-03'),
		(16, 16, 1625, '2024-08-17'),
		(17, 17, 1827, '2024-09-03'),
		(18, 18, 5726, '2024-09-17'),
		(19, 19, 6371, '2024-07-04'),
		(20, 20, 2981, '2024-07-18'),
		(21, 21, 3987, '2024-08-04'),
		(22, 22, 2987, '2024-08-18'),
		(23, 23, 4267, '2024-09-04'),
		(24, 24, 1627, '2024-09-18'),
		(25, 25, 1526, '2024-07-05'),
		(26, 26, 3726, '2024-07-19'),
		(27, 27, 2981, '2024-08-05'),
		(28, 28, 1726, '2024-08-19'),
		(29, 29, 1827, '2024-09-05'),
		(30, 30, 1827, '2024-09-19');
SELECT * FROM invoice;


--Inserting records into the payment table
INSERT INTO payments (payment_id, debt_id, amount_paid, balance_due, interest_accrued, first_name, last_name, phone_number) 
	VALUES
		(1, 1, 1500, 3700, 520, 'Mercy', 'Ogero', 62084819),
		(2, 2, 1000, 2030, 303, 'Teresa', 'Munuve', 47128843),
		(3, 3, 2000, 2530, 453, 'Michael', 'Levin', 62920015),
		(4, 4, 2500, 3580, 608, 'Emily', 'Masita', 57053674),
		(5, 5, 1200, 2320, 352, 'Teresa', 'Ogero', 7664413),
		(6, 6, 3000, 2670, 567, 'Sophia', 'Kerubo', 19936335),
		(7, 7, 3500, 3254, 675, 'James', 'Muiruri', 66401543),
		(8, 8, 50, 150, 20, 'Olivia', 'Mbare', 7221629),
		(9, 9, 2500, 2801, 530, 'Alexander', 'Wanjuki', 24595077),
		(10, 10, 3000, 3254, 625, 'Emma', 'Kira', 16870671),
		(11, 11, 2000, 2567, 465, 'Daniel', 'Wilele', 13591739),
		(12, 12, 1000, 1675, 267, 'Isabella', 'Maoore', 57797402),
		(13, 13, 4000, 5867, 986, 'Matthew', 'Kambar', 33839639),
		(14, 14, 4500, 4587, 908, 'Mia', 'Waru', 70042175),
		(15, 15, 1300, 1354, 265, 'Benjamin', 'Timau', 77341808),
		(16, 16, 800, 825, 162, 'Ava', 'Helsinki', 53474362),
		(17, 17, 1000, 827, 182, 'Elijah', 'Kauri', 11097208),
		(18, 18, 3000, 2726, 572, 'Charlotte', 'Jambe', 66152864),
		(19, 19, 2000, 4371, 637, 'Logan', 'Amber', 56528277),
		(20, 20, 1200, 1781, 298, 'Amelia', 'Kiran', 28776413),
		(21, 21, 2000, 1987, 398, 'Lucas', 'Warutere', 31338183),
		(22, 22, 1000, 1987, 299, 'Evelyn', 'Adhiambo', 25991772),
		(23, 23, 2000, 2267, 427, 'Mary', 'Mugure', 75462294),
		(24, 24, 800, 827, 163, 'William', 'Kanyeki', 55133569),
		(25, 25, 600, 926, 153, 'Aiden', 'Samba', 10506514),
		(26, 26, 1500, 2226, 372, 'Grace', 'Waceke', 25145998),
		(27, 27, 1000, 1981, 298, 'Jackson', 'Kilili', 47448314),
		(28, 28, 1000, 726, 173, 'Scarlett', 'Gachanja', 21622996),
		(29, 29, 900, 927, 182, 'David', 'Kanyi', 22654498),
		(30, 30, 1000, 827, 182, 'Victoria', 'Rubadiri', 23490043);
SELECT * FROM payments;

--Inserting records into the staff table
INSERT INTO staff (staff_id, first_name, last_name, job_role) 
	VALUES
		(1, 'Brianna', 'Wauche', 'Accountant'),
		(2, 'Talisha', 'Sinet', 'Accountant'),
		(3, 'Sironet', 'Chania', 'Accountant'),
		(4, 'Lehsan', 'Mangu', 'Accountant'),
		(5, 'Genesis', 'Mwangi', 'Accountant'),
		(6, 'Exidus', 'Ganjo', 'Accountant'),
		(7, 'Leviticus', 'Naarugu', 'Accountant'),
		(8, 'Deutronomy', 'Ngenda', 'Accountant'),
		(9, 'Teresa', 'Murera', 'Accountant'),
		(10, 'Mary', 'Teta', 'Accountant');
SELECT * FROM staff;

--JOINS
--Joining the debts and the debtors table
SELECT *
	FROM debt d
		INNER JOIN debtors db 
			ON d.debtors_id = db.debtors_id;

--Joining the debtors table and the guarantors table
SELECT *
    FROM debt d
		RIGHT JOIN guarantors g
			ON d.debt_id = g.debt_id;
		

