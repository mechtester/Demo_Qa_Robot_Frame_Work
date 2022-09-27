*** Settings ***
Library  Selenium2Library
#Library  SeleniumLibrary

Suite Setup    open my browser
Suite Teardown    close browser

*** Variables ***
${browser}  Chrome
${chrome_path}    executable_path=C:/web driver/chromedriver.exe
${url}    https://demoqa.com/checkbox

*** Keywords ***

open my browser
    open browser    ${url}    ${browser}    executable_path=C:/web driver/chromedriver.exe
    maximize browser window

close browser
    close all browsers

Click Home
    click element    //span[@class='rct-checkbox']//*[name()='svg']

verify Home text
    page should contain    home
    page should contain    desktop
    page should contain    notes
    page should contain    commands
    page should contain    documents
    page should contain    workspace
    page should contain    react
    page should contain    angular
    page should contain    veu
    page should contain    office
    page should contain    public
    page should contain    private
    page should contain    classified
    page should contain    general
    page should contain    downloads
    page should contain    wordFile
    page should contain    excelFile

Un check Home
    click element    //span[@class='rct-checkbox']//*[name()='svg']//*[name()='path' and contains(@d,'M19 3H5c-1')]

click left arrow
    click element    //button[@title='Toggle']//*[name()='svg']

Click Desktop
    click element    //label[@for='tree-node-desktop']//span[@class='rct-checkbox']//*[name()='svg']

Verify Desktop Text
    page should contain    desktop
    page should contain    notes
    page should contain    commands

un check Desktop
    click element    //label[@for='tree-node-desktop']//span[@class='rct-checkbox']//*[name()='svg']

Click Documents
    click element    //label[@for='tree-node-documents']//span[@class='rct-checkbox']//*[name()='svg']

Verify Documents Text
    page should contain    documents
    page should contain    workspace
    page should contain    react
    page should contain    angular
    page should contain    veu
    page should contain    office
    page should contain    public
    page should contain    private
    page should contain    classified
    page should contain    general

un check Documents
    click element    //label[@for='tree-node-documents']//span[@class='rct-checkbox']//*[name()='svg']//*[name()='path' and contains(@d,'M19 3H5c-1')]

Click Downloads
    click element    //label[@for='tree-node-downloads']//span[@class='rct-checkbox']//*[name()='svg']

Verify Downloads Text
    page should contain    downloads
    page should contain    wordFile
    page should contain    excelFile

Un check Downlaods
    click element    //label[@for='tree-node-downloads']//span[@class='rct-checkbox']//*[name()='svg']//*[name()='path' and contains(@d,'M19 3H5c-1')]

slow
    sleep    3   s

*** Test Cases ***

Check Box Demo qa
    click home
    slow
    verify Home text
    slow
    un check home
    slow
    click left arrow

    click desktop
    slow
    verify desktop text
    slow
    un check desktop

    click documents
    slow
    verify documents text
    slow
    un check documents

    click downloads
    slow
    verify downloads text
    slow
    un check downlaods
    slow
