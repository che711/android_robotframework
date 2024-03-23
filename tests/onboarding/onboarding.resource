*** Settings ***
Documentation    Keywords for onboarding pages
Resource         ../common.resource


*** Keywords ***
Allow Location
    [Documentation]            Allow location
    [Arguments]     ${allow_using_location}='True'
    Wait and Click App Element         ${ONBOARDING_SUBMIT_BUTTON}
    IF   ${allow_using_location} == 'True'
        IF   ${PLATFORM_VERSION} > 9
            Wait and Click App Element     ${PERMISSION_FOREGROUND}
            Capture Page Screenshot
        ELSE IF   ${PLATFORM_VERSION} <= 9
            Wait and Click App Element      ${PERMISSION_ALLOW_OLD}
            Capture Page Screenshot
        END
    ELSE
        Wait and Click App Element   ${DONT_ALLOW_BUTTON}
        Capture Page Screenshot
    END

Confirm city
    [Documentation]            Confirm city
    [Arguments]    ${city}='True'
    IF  ${city}=='True'
        Wait and Click App Element     ${ONBOARDING_CONFIRM_CITY_BUTTON_YES}
        Capture Page Screenshot
    ELSE
        Wait and Click App Element     ${ONBOARDING_CONFIRM_CITY_BUTTON_NO}
        Capture Page Screenshot
        Wait and Click App Element     ${MOSCOW_CITY}
        Capture Page Screenshot
    END

Allow notification
    [Documentation]            Allow notification
    Wait and Click App Element     ${ONBOARDING_SUBMIT_BUTTON}
    Capture Page Screenshot
    Wait and Click App Element     ${PERMISSION_ALLOW}
    Capture Page Screenshot
