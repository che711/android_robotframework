*** Settings ***
Resource    onboarding.resource

Test Setup        common.Launch App
Test Teardown     common.Close App

Suite Setup       common.Suite Setup
Suite Teardown    common.Suite Teardown

# nvm use
# robot  -d ../../results/simulator  Onboarding_Allow_Location_Confirm_Town_Simulator.robot

*** Test Cases ***
Allow Location and Confirm City on the simulator.
    [Documentation]    Onboarding and confirmation of the city

    Log To Console     Platform version: ${PLATFORM_VERSION}
    Log                Platform version: ${PLATFORM_VERSION}
    onboarding.Allow location
    onboarding.Confirm city
    IF   ${PLATFORM_VERSION} >= 13
        onboarding.Allow notification
    END

    Wait Until Page Contains Element    ${VERTICAL_PICTURE_MAIN_SCREEN}
    Sleep    2s
    Capture Page Screenshot

