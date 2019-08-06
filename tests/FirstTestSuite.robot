*** Settings ***
Documentation  Suite description

Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}   https://opensource-demo.orangehrmlive.com/


*** Test Cases ***
TC_001_LoginTest
    Open Browser  ${URL}  ${Browser}
    Input Text      id:txtUsername    Admin
    Input Text      id:txtPassword    admin123
    Click Element    name:Submit
    Close Browser


*** Keywords ***
