*** Settings ***
Resource    onboarding.resource

Test Setup        common.Launch App
Test Teardown     common.Close App

Suite Setup       common.Suite Setup
Suite Teardown    common.Suite Teardown

# nvm use
# robot  -d ../../results/profile  Onboarding_Allow_Location_Confirm_Town_Simulator.robot

*** Test Cases ***
Preconditions: At Registration Form
    [Documentation]    Preconditions for Registration Form

