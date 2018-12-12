DATA HOSPITALS;
	INPUT PatientID $ HospitalBill Age Diagnosis $ Gender $ State $; 
	DATALINES;
	1 500 5 SoreThroat 1 NY
	2 1500 68 Fall 2 CA
	3 2000 94 Parkinsons 1 CA
	4 250 15 Checkup 1 NY
	5 25000 9 Cancer 2 CA
	6 900 64 Diabetes 1 CA
	;
RUN;

DATA HEALTH; 
SET WORK.HOSPITALS;
RUN;

PROC REG DATA=WORK.HEALTH;
MODEL HospitalBill = Age; /*Regression Model such that Age dependent on HospitalBill*/
RUN;