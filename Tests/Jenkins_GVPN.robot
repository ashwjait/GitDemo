*** Settings ***
Documentation  End to End GVPN Provisioning
Library  SeleniumLibrary
#Library  Selenium2Library
#Library  ExtendedSelenium2Library
Library  DateTime

*** Variables ***

#${budoID} =  BUDO/201801/18
#${binoID}
#${productID}
${PORTAL} =  https://training.customer.ngena.net
${USER} =  EDU
${BROWSER} =  chrome

*** Test Cases ***

Create Customer Solution and BUDO ID

    Open Browser  ${PORTAL}  ${BROWSER}
    Maximize Browser Window
    Sleep  0.5s
    Wait Until Page Contains Element  xpath=//*[@name="login"]  timeout=30s
    Input Text  xpath=//*[@name="login"]  Demo
    Input Text  xpath=//*[@name="password"]  Demo
    Click Button  xpath=/html/body//button



*** Keywords ***