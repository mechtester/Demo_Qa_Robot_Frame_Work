*** Settings ***
Library  Selenium2Library
#Library  SeleniumLibrary

Suite Setup    open my browser
Suite Teardown    close browser

*** Variables ***
${browser}  Chrome
${chrome_path}    executable_path=C:/web driver/chromedriver.exe
#${chrome_path}    executable_path=/usr/local/bin/chromedriver

${url}    https://demoqa.com/text-box
${Address}    2/43 Bee Building , North sea road , Russia

*** Keywords ***

open my browser
    open browser    ${url}    ${browser}    executable_path=C:/web driver/chromedriver.exe
    maximize browser window

close browser
    close all browsers

slow
    sleep    3   s

Enter Full Name
    input text    //input[@id='userName']       Kings Man

Enter user email
    input text    //input[@id='userEmail']     test@demoqa.com

Enter Current Address
    input text    //textarea[@id='currentAddress']    ${Address}

Enter Permanent Address
    input text    //textarea[@id='permanentAddress']    ${Address}

click submit
    click element    //button[@id='submit']

scroll
      Execute JavaScript    window.scrollTo(0, 250)

*** Test Cases ***
Text Box Demo QA
    Enter Full Name
    Enter user email
    Enter Current Address
    Enter Permanent Address
    scroll
    slow
    click submit
    slow

