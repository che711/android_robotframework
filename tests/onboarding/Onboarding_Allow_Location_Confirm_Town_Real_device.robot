*** Settings ***
Resource    onboarding.resource

#Test Setup        common.Launch App
#Test Teardown     common.Close App
#
Suite Setup       common.Suite Setup
Suite Teardown    common.Suite Teardown

# nvm use
# robot  -d ../../results/real_device  Onboarding_Allow_Location_Confirm_Town_Real_device.robot

*** Test Cases ***
Allow Location and Confirm City on the simulator.
    [Documentation]    Onboarding and confirmation of the city

    Log To Console      Launch real device

    launcher.Open App on real device
    onboarding.Allow location
    onboarding.Confirm city
    onboarding.Allow notification
    Wait Until Page Contains Element    ${VERTICAL_PICTURE_MAIN_SCREEN}
    Sleep    2s
