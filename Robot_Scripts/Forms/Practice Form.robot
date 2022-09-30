*** Settings ***
Library  Selenium2Library
#Library  SeleniumLibrary

Suite Setup    open my browser
Suite Teardown    close browser

*** Variables ***
${browser}  Chrome
${chrome_path}    executable_path=C:/web driver/chromedriver.exe
#${browser}  Firefox
#${chrome_path}    executable_path=C:/web driver/geckodriver.exe

${url}    https://demoqa.com/automation-practice-form
${element}     //input[@id='dateOfBirthInput']

*** Keywords ***

open my browser
    open browser    ${url}    ${browser}    executable_path=C:/web driver/chromedriver.exe
    maximize browser window

close browser
    close all browsers

slow
    sleep    3   s
slow _1
    sleep    5   s

Zoom out
    Execute javascript       document.body.style.zoom="50%"
    sleep    5   s

Fill Form
#   Input First name and last name
    input text  //input[@id='firstName']    Kings
    input text  //input[@id='lastName']     Man

#   Email
    input text    //input[@id='userEmail']     test@demoQA.com

#    Male
#    wait until page contains element  //label[@for='gender-radio-1']
#    wait until element is enabled    //label[@for='gender-radio-1']
#    click element    //label[@for='gender-radio-1']

#   Mobile Number
    input text    //input[@id='userNumber']    548745874878

#   Date of Birth
##   Month selection
    slow
    wait until page contains element    //input[@id='dateOfBirthInput']
    wait until element is visible    //input[@id='dateOfBirthInput']
    wait until element is enabled    //input[@id='dateOfBirthInput']
#    Execute JavaScript     document.getElementByXpath("//input[@id='dateOfBirthInput']").onclick()
#    Execute JavaScript       document.getElementById("dateOfBirthInput").onclick()
    execute javascript    document.getElementById(i + "dateOfBirthInput" + j).onclick = ceck;

    click element    //input[@id='dateOfBirthInput']
    wait until element is enabled    //body/div[@id='app']/div[1]/div[1]/div[2]/div[2]/div[2]/form[1]/div[5]/div[2]/div[2]/div[2]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/select[1]
    click element    //body/div[@id='app']/div[1]/div[1]/div[2]/div[2]/div[2]/form[1]/div[5]/div[2]/div[2]/div[2]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/select[1]
    wait until element is visible    //option[@value='2']
    click element    //option[@value='2']
    click element    //select[@class='react-datepicker__month-select']

###   Year selection
    click element    //select[@class='react-datepicker__year-select']
    wait until element is visible    //option[@value='2015']
    select from list by value    //select[@class='react-datepicker__year-select']       1996

###   Date  selection
    wait until element is enabled    //div[contains(text(),'13')]
    wait until element is visible    //div[contains(text(),'13')]
    click element    //div[contains(text(),'13')]

##   Current address
    input text    //textarea[@id='currentAddress']     North sea road , Dublin - 65
##   Hobbies selection
    click element    //label[@for='hobbies-checkbox-1']
    click element    //label[@for='hobbies-checkbox-2']
    click element    //label[@for='hobbies-checkbox-3']

# zoom
#    Execute javascript       document.body.style.zoom="67%"

#   scrolling element to view
    execute javascript    window.scrollTo(0,document.body.scrollHeight)
#    scroll element into view    //button[@id='submit']

##   select state and city
#    sleep    3  s
#    wait until page contains element  //*[contains(text(),'Select State')]
#    wait until element is enabled    //*[contains(text(),'Select State')]
#    wait until element is visible    //*[contains(text(),'Select State')]
#    element should be enabled    //*[contains(text(),'Select State')]
#    SCROLL ELEMENT INTO VIEW    //*[contains(text(),'Select State')]
#
#   click submit button
    wait until element is visible    //button[@id='submit']
    wait until element is enabled    //button[@id='submit']
    wait until page contains element    //button[@id='submit']
    click element    //button[@id='submit']


*** Test Cases ***
Practice Demo QA
    slow
#    Zoom out
    fill form
    slow _1



