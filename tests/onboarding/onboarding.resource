*** Settings ***
Documentation    Keywords for onboarding pages
Resource         ../common.resource


*** Keywords ***
Allow location
    [Documentation]            Allow location
    Wait and Click Element     ${ONBOARDING_SUBMIT_BUTTON}
    Wait and Click Element     ${RERMISSION_FOREGROUND}
    Capture Page Screenshot

Confirm city
    [Documentation]            Confirm city
    Wait and Click Element     ${ONBOARDING_CONFIRM_CITY_BUTTON}
    Capture Page Screenshot

Allow notification
    [Documentation]            Allow notification
    Wait and Click Element     ${ONBOARDING_SUBMIT_BUTTON}
    Wait and Click Element     ${RERMISSION_ALLOW}
    Capture Page Screenshot
