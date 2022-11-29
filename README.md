# SQLcodes
Question
At CSC Company, located in Ibadan, an Attendance Clocking Machine (ACM) is installed at the main gate entrance to take attendance of staff once a day in the morning. Each staff has a clocking card containing a chip on which are recorded the ID and other information of the staff. When a staff arrives the company premises, the card is inserted into the ACM which identifies the staff, his/her department and the time the clocking is done. 

A computerized database is connected to the ACM on a Local Area Network (LAN). The database contains data about Staff (StaffID, StaffSurname, StaffOtherNames, StaffAge, StaffDesignation), Department (DeptID, DeptName, DeptFunction) and Attendance (StaffID, DeptID, DateClocked, TimeClocked). 

Time is recorded on 24 hours scale like 8.00, 13.45, 18.23, etc.
 (i) Design the Database using mysql. Insert about five records each into the tables
 (ii) Generate reports for the following information from the database:
 (a) List of all Staff including their Departments from the database. You may need to create a relationship table for Staff and Department in this case. 
(b) List of all Staff names (and their Departments) that resume at exactly 8.00 on 21/10/2019 
(c) List of all Staff names (and their Departments) whose age is 55 years and above and resume before 8.00 on 21/10/2019. 
The company will like to reward them for prompt resumption at work on that day.

