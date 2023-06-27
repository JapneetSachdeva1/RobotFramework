*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources_registrationPage.robot
Test Teardown    CloseBrowserWindow


*** Test Cases ***
ValidRegistrationTest
    UserRegistration    alpha       beta    beta@email.com      1231231231      admin123





