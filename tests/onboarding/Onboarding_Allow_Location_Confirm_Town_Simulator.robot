*** Settings ***
Resource    onboarding.resource

# nvm use
# robot  -d ../../results/simulator  Onboarding_Allow_Location_Confirm_Town_Simulator.robot

*** Test Cases ***
Allow Location and Confirm City on the simulator.
    [Documentation]    Onboarding and confirmation of the city
    launcher.Open App on simulator
    Log To Console   Test log Before Allow location's keyword
    Log     Before Allow location's keyword
    onboarding.Allow location
    onboarding.Confirm city
    onboarding.Allow notification
    Wait Until Page Contains Element    ${VERTICAL_PICTURE_MAIN_SCREEN}
    Sleep    3s
    Capture Page Screenshot
    Close All Applications

