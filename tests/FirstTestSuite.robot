*** Settings ***
Documentation  Suite description

Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}   https://opensource-demo.orangehrmlive.com/
@{Credentials}   Admin   admin123
&{LoginData}    username=Admin  password=admin123

*** Test Cases ***

TC_001_LoginTest
    Open Browser  ${URL}  ${Browser}
    Do Login
    Close Browser


*** Keywords ***
Do Login
    Input Text      id:txtUsername    @{Credentials}[0]
    Input Text      id:txtPassword    &{LoginData}[password]
    Click Element    name:Submit