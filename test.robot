*** setting ***
Library  Selenium2Library

*** Variable ***

*** Test Case ***
search หมา ด้วย chrome
    เข้าเว็บ google
    ค้นหาคำว่า Dog

*** Keywords ***
เข้าเว็บ google
    Open Browser	http://google.co.th   chrome

ค้นหาคำว่า Dog
    Input Text   q   Dog
    Press Key  q  \\13
    