*** Settings ***
Library         SeleniumLibrary
Library         DataDriver    file=/home/vignesh/Downloads/testdata.xlsx    sheet_name=Sheet1
Suite Setup     Open Browser    ${url}  ${browser}
Suite Teardown  Close All Browsers

*** Variables ***
${url}          https://tkv2.teamkonnect.com
${browser}      chrome
${Sheet1}       file=/home/vignesh/Downloads/testdata.xlsx    sheet_name=Sheet1

*** Keywords ***
Login With Credentials
    [Arguments]     ${username}    ${password}
    Input Text      //input[@id='UserName']    ${username}
    Input Text      //input[@id='Password']    ${password}
    Click Element    //button[@id='btnLogin']
    Wait Until Element Is Visible    //div[@onclick='custom_desktop_permission()']
    Click Element    //div[@onclick='custom_desktop_permission()']
    Sleep           5s
    Capture Page Screenshot
    Click Element    //a[@id='dropdownMenuMenu']
    Wait Until Element Is Visible   //a[normalize-space()='Logout']
    Click Element    //a[normalize-space()='Logout']
    Wait Until Element Is Visible    //input[@id='UserName']
    Wait Until Element Is Visible    //input[@id='Password']

*** Test Cases ***
Login Test With Multiple Credentials
    Login With Credentials    username1    password1
    Login With Credentials    username2    password2

