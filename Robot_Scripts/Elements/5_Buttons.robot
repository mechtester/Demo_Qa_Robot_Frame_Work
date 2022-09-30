*** Settings ***
Library  Selenium2Library
#Library  SeleniumLibrary

Suite Setup    open my browser
Suite Teardown    close browser

*** Variables ***
${browser}  Chrome
${chrome_path}    executable_path=C:/web driver/chromedriver.exe
${url}    https://demoqa.com/buttons

*** Keywords ***

open my browser
    open browser    ${url}    ${browser}    executable_path=C:/web driver/chromedriver.exe
    maximize browser window

close browser
    close all browsers

slow
    sleep    3   s

double click element
    selenium2library.double click element    //button[@id='doubleClickBtn']

verify double click
    wait until page contains    You have done a double click

Right click element
    open context menu    //button[@id='rightClickBtn']

verify right click
    wait until page contains    You have done a right click

click Me_1
    click button    Click Me

verify click me
    wait until page contains    You have done a dynamic click

*** Test Cases ***

Buttons Demo QA
    double click element
    slow
    verify double click

    Right click element
    verify right click
    slow

    click Me_1
    verify click me
    slow
