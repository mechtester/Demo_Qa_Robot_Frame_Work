*** Settings ***
Library  Selenium2Library
#Library  SeleniumLibrary

Suite Setup    open my browser
Suite Teardown    close browser

*** Variables ***
${browser}  Chrome
${chrome_path}    executable_path=C:/web driver/chromedriver.exe
${url}    https://demoqa.com/webtables

*** Keywords ***

open my browser
    open browser    ${url}    ${browser}    executable_path=C:/web driver/chromedriver.exe
    maximize browser window

close browser
    close all browsers

slow
    sleep    3   s

Delete Existing records
       click element    //span[@id='delete-record-3']//*[name()='svg']
       click element    //span[@id='delete-record-2']//*[name()='svg']
       click element    //span[@id='delete-record-1']//*[name()='svg']

Click Add Button
    click element    //button[@id='addNewRecordButton']

verify registration form is open
    wait until page contains element    //div[@id='registration-form-modal']

Add record
    input text  //input[@id='firstName']     Robert
    input text    //input[@id='lastName']    James
    input text    //input[@id='userEmail']   test@demoqa.com
    input text    //input[@id='age']    26
    input text    //input[@id='salary']    35000
    input text    //input[@id='department']    QA Testing
    slow
    click element    //button[@id='submit']

*** Test Cases ***

Web Tables Demo QA
    Delete Existing records
    slow
    click add button
   verify registration form is open
    slow
    Add record
