*** Settings ***
Resource    onboarding.resource

Test Setup    common.Launch App
Test Teardown    common.Close App
Suite Setup    common.Suite Setup
Suite Teardown    common.Suite Teardown

# nvm use
# robot  -d ../../results/simulator  Onboarding_Allow_Location_Confirm_Town_Simulator.robot

*** Test Cases ***
Allow Location and Confirm City on the simulator.
    [Documentation]    Onboarding and confirmation of the city

    Log To Console     Before Allow location's keyword
    Log                Before Allow location's keyword
    Allow location
    Confirm city
    Allow notification
    Wait Until Page Contains Element    ru.afisha.android:id/feedRv
    Sleep    3s
    Capture Page Screenshot

