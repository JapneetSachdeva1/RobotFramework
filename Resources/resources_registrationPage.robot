*** Settings ***
Library     SeleniumLibrary
Variables    ../PageObjects/locators_registrationPage.py
Resource    ../Utilities/utils.robot

*** Variables ***
${APP_URL} =        https://naveenautomationlabs.com/opencart/index.php?route=account/register
${BROWSER_NAME} =       Chrome
${TITLE}=       Register Account
*** Keywords ***
UserRegistration
           [Arguments]    ${firstName}      ${lastName}      ${email}        ${telephone}        ${password}
          OpenApplication     ${APP_URL}      ${BROWSER_NAME}     ${TITLE}
          input text    ${firstName_txt}     ${firstName}
          input text    ${lastName_txt}      ${lastName}
          input text    ${email_txt}       ${email}
          input text    ${telephone_txt}      ${telephone}
          input text    ${password_txt}      ${password}
          input text    ${password_confirm_txt}      ${password}
          click element    ${agree_checkbox}
          click element    ${continue_btn}
          sleep    2s