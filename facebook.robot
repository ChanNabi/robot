*** setting ***
Library		Selenium2Library
Test Setup 	Open facebook
Test Teardown 	Close Browser

*** Variable ***

*** Keywords ***
Open facebook
	Open Browser		https://www.facebook.com
	Wait Until Page Contains	โลโก้ Facebook

Log in
	Input Text	email  ${email}
	Input Password  password  ${password}
	Click Button  เข้าสู่ระบบ

*** Test Case ***
case-1 user account not found
	Log in  	xxx@gmail.com  xxx
	Wait Until Page Contains	อีเมล์ที่คุณป้อนไม่ตรงกับผู้ใช้ใดๆ

case-2 invalid email
	Log in  	xxx@hotmail.com  xxx
	Wait Until Page Contains	อีเมล์หรือหมายเลขโทรศัพท์ที่คุณป้อนไม่ตรงกับบัญชีผู้ใช้ใดๆ

case-3 invalid password
	Log in  	dekkiku@hotmail.com  xxxx
	Wait Until Page Contains	อีเมล์หรือหมายเลขโทรศัพท์ที่คุณป้อนไม่ตรงกับบัญชีผู้ใช้ใดๆ

case-4 Login Success
	Log in  	dekkiku@hotmail.com  @Unquelity08
	Wait Until Page Contains	หน้าหลัก
	Close Browser