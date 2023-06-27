*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
OpenApplication
    [Arguments]    ${APP_URL}      ${BROWSER_NAME}   ${page_title}
    open browser    ${APP_URL}      ${BROWSER_NAME}
    maximize browser window
    wait until page contains    ${page_title}

CloseBrowserWindow
    close all browsers