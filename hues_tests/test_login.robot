*** Settings ***
Documentation     Login test for Hue Application

Resource          common.resource
Test Setup        Open App

# nvm use
# robot  -d results/onboarding  test_login.robot

*** Test Cases ***
Onboarding Test
    [Documentation]   Open application, login existing account and check security button
    ...               wait five seconds and close application
    Onboarding
    Sleep   5s
    Close Application


