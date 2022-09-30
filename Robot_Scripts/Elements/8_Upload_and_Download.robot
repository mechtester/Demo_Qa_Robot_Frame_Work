*** Settings ***
Library  Selenium2Library
#Library  SeleniumLibrary
Suite Setup    open my browser
Suite Teardown    close browser

*** Variables ***
${browser}  Chrome
${chrome_path}    executable_path=C:/web driver/chromedriver.exe
${url}    https://demoqa.com/upload-download
${File_path}    C:/Users/VIGNESH/PycharmProjects/Demo_Qa_Robot_Frame_Work/Resources/sampleFile.jpeg

*** Keywords ***

open my browser
    open browser    ${url}    ${browser}    executable_path=C:/web driver/chromedriver.exe
    maximize browser window

close browser
    close all browsers

slow
    sleep    2   s
click upload
    click element    //input[@id='uploadFile']
upload file
    choose file    //input[@id='uploadFile']    ${File_path}

Zoom out
    Execute javascript       document.body.style.zoom="80%"

click Download
    click button    //a[@id='downloadButton']

*** Test Cases ***
Upload and Download Demo QA
    zoom out
     slow
#     click upload
     upload file
     slow
     click Download
