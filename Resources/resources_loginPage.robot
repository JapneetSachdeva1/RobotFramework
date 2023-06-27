*** Settings ***
Library     SeleniumLibrary
Variables    ../PageObjects/locators_LoginPage.py
Resource    ../Utilities/utils.robot

*** Variables ***
${APP_URL}=     https://naveenautomationlabs.com/opencart/index.php?route=account/login
${BROWSER_NAME}=    Chrome
${TITLE}=   Returning Customer
*** Keywords ***


UserLogin
    [Arguments]    ${username}      ${pswd}
    OpenApplication     ${APP_URL}      ${BROWSER_NAME}     ${TITLE}
    input text    ${email_text}     ${username}
    input text    ${pswd_text}      ${pswd}
    click element    ${login_btn}
    sleep    2s


