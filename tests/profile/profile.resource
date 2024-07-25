*** Settings ***
Documentation    Keywords for profile pages
Resource         ../common.resource


*** Keywords ***
Preconditions: At Registration Form
    [Documentation]    Preconditions for Registration Form
    common.Launch App with Geo
    Wait And Click App Element               ${PROFILE_BTN}
    Wait And Click App Element               ${ENTER_AND_REGISTRATION_BTN}
    Wait And Click App Element               ${ENTER_BTN}
    Wait And Click App Element               ${REGISTRATION_BTN}
    Wait Until Page Contains Element         ${ALREADY_REGISTRATION_BTN}

