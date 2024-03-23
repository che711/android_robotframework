*** Settings ***
Documentation    Keywords for onboarding pages
Resource         ../common.resource


*** Keywords ***
Allow location
    [Documentation]            Allow location
    Wait and Click App Element         ${ONBOARDING_SUBMIT_BUTTON}
    IF  ${PLATFORM_VERSION} > 9
        Wait and Click App Element     ${RERMISSION_FOREGROUND}
        Capture Page Screenshot
    ELSE
       Wait and Click App Element      ${RERMISSION_ALLOW_OLD}
       Capture Page Screenshot
    END

Confirm city
    [Documentation]            Confirm city
    Wait and Click App Element     ${ONBOARDING_CONFIRM_CITY_BUTTON}
    Capture Page Screenshot

Allow notification
    [Documentation]            Allow notification
    Wait and Click App Element     ${ONBOARDING_SUBMIT_BUTTON}
    Wait and Click App Element     ${RERMISSION_ALLOW}
    Capture Page Screenshot
