*** Settings ***
Resource    onboarding.resource

# nvm use
# robot  -d ../../results/real_device  Onboarding_Allow_Location_Confirm_Town_Real_device.robot

*** Test Cases ***
Allow Location and Confirm City on the simulator.
    [Documentation]    Onboarding and confirmation of the city
    launcher.Open App on real device
    Log To Console   Test log Before Allow location's keyword
    Log     Before Allow location's keyword
    onboarding.Allow location
    onboarding.Confirm city
    onboarding.Allow notification
    Wait Until Page Contains Element    ru.afisha.android:id/feedRv
    Sleep    3s
    Capture Page Screenshot
    Close All Applications
