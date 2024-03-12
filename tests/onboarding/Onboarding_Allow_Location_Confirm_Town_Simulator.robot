*** Settings ***
Resource    onboarding.resource

# robot  -d ../../results/simulator  Onboarding_Allow_Location_Confirm_Town_Simulator.robot

*** Test Cases ***
Allow Location and Confirm City on the simulator.
    [Documentation]    Onboarding and confirmation of the city
    launcher.Open App on simulator
    Log To Console   Test log Before Allow location's keyword
    Log     Before Allow location's keyword
    Allow location
    Confirm city
    Allow notification
    Wait Until Page Contains Element    ru.afisha.android:id/feedRv
    Sleep    3s
    Capture Page Screenshot
    Close All Applications