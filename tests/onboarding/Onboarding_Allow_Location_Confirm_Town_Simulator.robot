*** Settings ***
Resource    onboarding.resource

Test Setup        common.Launch App
Test Teardown     common.Close App

Suite Setup       common.Suite Setup
Suite Teardown    common.Suite Teardown

# nvm use
# robot  -d ../../results/simulator  Onboarding_Allow_Location_Confirm_Town_Simulator.robot

*** Test Cases ***
Allow Location and Confirm City.
    onboarding.Allow location
    onboarding.Confirm city
    IF   ${PLATFORM_VERSION} >= 13
        onboarding.Allow notification
    END
    Wait Until Page Contains Element    ${VERTICAL_PICTURE_MAIN_SCREEN}
    Sleep    2s
    Capture Page Screenshot

Allow Location and Change City.
    onboarding.Allow location
    onboarding.Confirm city    False
    IF   ${PLATFORM_VERSION} >= 13
        onboarding.Allow notification
    END
    Wait Until Page Contains Element    ${VERTICAL_PICTURE_MAIN_SCREEN}
    Capture Page Screenshot

Don't Allow Location and Confirm City.
    onboarding.Allow location   False
    onboarding.Confirm city
    IF   ${PLATFORM_VERSION} >= 13
        onboarding.Allow notification
    END
    Wait Until Page Contains Element    ${VERTICAL_PICTURE_MAIN_SCREEN}
    Capture Page Screenshot