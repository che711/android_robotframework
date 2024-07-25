*** Settings ***
Resource    ../core/all.resource
Resource    onboarding/onboarding.resource

*** Keywords ***
Launch App
    [Documentation]    Launch android and application
    launcher.Open App

Launch App with Geo
    [Documentation]    Launch application with geolocation
    Launch App
    onboarding.Allow Location and Change City.

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
