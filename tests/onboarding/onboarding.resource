*** Settings ***
Documentation    Keywords for onboarding pages
Resource         ../common.resource
Resource         ../../Data/launcher.resource


*** Keywords ***
Allow location
    [Documentation]    Allow location
    Wait and Click Element     ru.afisha.android:id/fragOnboardinSubmitBtn
    Wait and Click Element     com.android.permissioncontroller:id/permission_allow_foreground_only_button
    Capture Page Screenshot

Confirm city
    [Documentation]    Confirm city
    Wait and Click Element     android:id/button1
    Capture Page Screenshot

Allow notification
    [Documentation]   Allow notification
    Wait and Click Element     ru.afisha.android:id/fragOnboardinSubmitBtn
    Wait and Click Element     com.android.permissioncontroller:id/permission_allow_button
    Capture Page Screenshot
