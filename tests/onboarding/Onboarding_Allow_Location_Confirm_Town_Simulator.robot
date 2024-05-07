*** Settings ***
Resource    onboarding.resource


Test Setup        common.Launch App
Test Teardown     common.Close App

Suite Setup       common.Suite Setup
Suite Teardown    common.Suite Teardown

# nvm use
# robot  -d ../../results/onboarding  Onboarding_Allow_Location_Confirm_Town_Simulator.robot


*** Test Cases ***
Allow Location and Confirm City.
    Log to console   Start screen recording
    Start Screen Recording    timeLimit=120   bugreport=${True}    # the test doesn't work with it, need to figure out
    onboarding.Allow location
    onboarding.Confirm city
    IF   ${PLATFORM_VERSION} >= 13
        onboarding.Allow notification
    END
    Wait Until Page Contains Element    ${VERTICAL_PICTURE_MAIN_SCREEN}
    Sleep    2s
    Capture Page Screenshot
    Stop Screen Recording       # doesn't work, need to figure out

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

Don't Allow Location and Change City.
    onboarding.Allow location   False
    onboarding.Confirm city    False
    IF   ${PLATFORM_VERSION} >= 13
        onboarding.Allow notification
    END
    Wait Until Page Contains Element    ${VERTICAL_PICTURE_MAIN_SCREEN}
    Capture Page Screenshot
    Close All Applications



