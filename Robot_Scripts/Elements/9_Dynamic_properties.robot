*** Settings ***
Library  Selenium2Library
#Library  SeleniumLibrary

Suite Setup    open my browser
Suite Teardown    close browser

*** Variables ***
${browser}  Chrome
${chrome_path}    executable_path=C:/web driver/chromedriver.exe
${url}    https://demoqa.com/dynamic-properties


*** Keywords ***

open my browser
    open browser    ${url}    ${browser}    executable_path=C:/web driver/chromedriver.exe
    maximize browser window

close browser
    close all browsers

slow
    sleep    3   s

wait element enable
    wait until element is enabled    //button[@id='enableAfter']

page contains
    wait until page contains    Visible After 5 Seconds

Check visible
    wait until element is visible    //button[@id='visibleAfter']

*** Test Cases ***
Dynamic Properties Demo QA
    wait element enable
    page contains
    Check visible



