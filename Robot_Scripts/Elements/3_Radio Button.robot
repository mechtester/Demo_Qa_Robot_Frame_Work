*** Settings ***
Library  Selenium2Library
#Library  SeleniumLibrary

Suite Setup    open my browser
Suite Teardown    close browser

*** Variables ***
${browser}  Chrome
${chrome_path}    executable_path=C:/web driver/chromedriver.exe
${url}    https://demoqa.com/radio-button

*** Keywords ***

open my browser
    open browser    ${url}    ${browser}    executable_path=C:/web driver/chromedriver.exe
    maximize browser window

close browser
    close all browsers

Click Yes
    click element    //label[@for='yesRadio']

Verify Yes text
    page should contain    Yes

click impressive
    click element    //label[@for='impressiveRadio']

Verify Impressive text
    page should contain    Impressive

slow
    sleep    3   s


*** Test Cases ***

Radio Button Demo QA
      click yes
      slow
      verify yes text
      slow
      click impressive
      slow
      verify impressive text
      slow



