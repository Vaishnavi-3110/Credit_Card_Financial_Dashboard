CREATE TABLE cc_detail (
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);


CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);

select * from cc_detail

COPY cc_detail
FROM 'C:/Users/vaish/OneDrive/Desktop/DATA SCIENCE/PowerBI/Project4/credit_card.csv' 
DELIMITER ','
CSV HEADER

/*Go to Properties of that particular
	file by right clicking on it. Then
	, go to Security tab of the 
	displayed Properties dialog box.
	Click on Edit option. Permissions 
	dialog box appears, then click on
	Add button. 
	Type 'Everyone' 
	(without apostrophes) in the 
	"Enter the object names to select"
	description box and click on OK
	button. Then, make sure all the 
	checkboxes of 
	"Permissions for Everyone" are 
	selected by just ticking the 
	"Full Control" check box to allow
	the control access without any restriction.
	Then, Apply and OK all the tabs 
	to apply all the changes done.*/

/* To add new data in db*/
	
select * from cust_detail

COPY cust_detail
FROM 'C:/Users/vaish/OneDrive/Desktop/DATA SCIENCE/PowerBI/Project4/customer.csv' 
DELIMITER ','
CSV HEADER

select * from cc_detail

COPY cc_detail
FROM 'C:/Users/vaish/OneDrive/Desktop/DATA SCIENCE/PowerBI/Project4/cc_add.csv' 
DELIMITER ','
CSV HEADER


select * from cust_detail

COPY cust_detail
FROM 'C:/Users/vaish/OneDrive/Desktop/DATA SCIENCE/PowerBI/Project4/cust_add.csv' 
DELIMITER ','
CSV HEADER
























