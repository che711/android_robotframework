*** Settings ***
Documentation    Keywords for onboarding pages
Resource         ../common.resource
Resource         ../../core//Data/launcher.resource

*** Variables ***
${ONBOARDING_SUBMIT_BUTTON}           ru.afisha.android:id/fragOnboardinSubmitBtn
${ONBOARDING_CONFIRM_CITY_BUTTON}     android:id/button1
${RERMISSION_FOREGROUND}              com.android.permissioncontroller:id/permission_allow_foreground_only_button
${RERMISSION_ALLOW}                   com.android.permissioncontroller:id/permission_allow_button

*** Keywords ***
Allow location
    [Documentation]    Allow location
    Wait and Click Element     ${ONBOARDING_SUBMIT_BUTTON}
    Wait and Click Element     ${RERMISSION_FOREGROUND}
    Capture Page Screenshot

Confirm city
    [Documentation]    Confirm city
    Wait and Click Element     ${ONBOARDING_CONFIRM_CITY_BUTTON}
    Capture Page Screenshot

Allow notification
    [Documentation]   Allow notification
    Wait and Click Element     ${ONBOARDING_SUBMIT_BUTTON}
    Wait and Click Element     ${RERMISSION_ALLOW}
    Capture Page Screenshot
