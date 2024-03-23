*** Settings ***
Resource    ../core/all.resource

*** Keywords ***
Launch App
    [Documentation]    Launch android and application
    launcher.Open App

Close App
    [Documentation]    Close Application
    Capture Page Screenshot
    Close All Applications

Suite Setup
    [Documentation]    Actions before running test scenarios
    Set Appium Timeout      20s

Suite Teardown
    [Documentation]    Actions after running test scenarios
    Pass Execution    message=Test cycle is finished
