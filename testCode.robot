*** Settings ***
Library           Selenium2Library


*** Variables ***
${SERVER}         https://opensource-demo.orangehrmlive.com/
${BROWSER}        firefox


*** Test Cases ***
login true
    Open google page
    Login Web Admin

login false
    Open google page
    Login Web Admin2

*** Keywords ***
Open google page
    Open Browser    ${SERVER}    ${BROWSER}


Login Web Admin
    Input Text    txtUsername    Admin
    Input Text    txtPassword    admin123
    Click Button  btnLogin
   # Wait Until Page Contains    Username cannot be empty

Login Web Admin2
    Input Text    txtUsername    admin
    Input Text    txtPassword    123
    Click Button  btnLogin
    Wait Until Page Contains    Invalid credentials  
    
