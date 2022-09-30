*** Settings ***
Library  Selenium2Library
#Library  SeleniumLibrary

Suite Setup    open my browser
Suite Teardown    close browser

*** Variables ***
${browser}  Chrome
${chrome_path}    executable_path=C:/web driver/chromedriver.exe
${url}    https://demoqa.com/links
${windowhandles}= Get Window Handles

*** Keywords ***

open my browser
    open browser    ${url}    ${browser}    executable_path=C:/web driver/chromedriver.exe
    maximize browser window

close browser
    close all browsers

slow
    sleep    3   s

Click Created
    click element    //a[@id='created']
verify Created
    wait until page contains    Link has responded with staus 201 and status text Created

Click No Content
    click element    //a[@id='no-content']
verify No Content
    wait until page contains    Link has responded with staus 204 and status text No Content


Click Moved
    click element    //a[@id='moved']
verify Moved
    wait until page contains    Link has responded with staus 301 and status text Moved Permanently

click Bad Request
    click element    //a[@id='bad-request']
verify Bad Request
    wait until page contains    Link has responded with staus 400 and status text Bad Request

click UnAuthorized
    click element    //a[@id='unauthorized']
verify UnAuthorized
    wait until page contains    Link has responded with staus 401 and status text Unauthorized

click Forbidden
    click element    //a[@id='forbidden']
verify Forbidden
    wait until page contains    Link has responded with staus 403 and status text Forbidden

click Not found
    click element    //a[@id='invalid-url']
verify Not found
    wait until page contains    Link has responded with staus 404 and status text Not Found

scroll to view
    execute javascript    window.scrollTo(0,document.body.scrollHeight)

scroll to view_01
    scroll element into view    //a[@id='simpleLink']

got tab name
   @{WindowHandles}=    get window handles
   LOG TO CONSOLE    get window handles
*** Test Cases ***

Links Demo QA
    scroll to view
    slow
    click Created
    verify Created
    click No Content
    verify No Content
    click Moved
    verify Moved
    click Bad Request
    verify Bad Request
    click Unauthorized
    verify UnAuthorized
    click Forbidden
    verify Forbidden
    click Not Found
    verify Not found
    scroll to view_01
    slow
    got tab name






