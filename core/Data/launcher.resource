*** Settings ***
Library       AppiumLibrary


*** Variables ***
${CONNECTION_NAME}    http://127.0.0.1:4723
${AUTOMATION_NAME}    UiAutomator2
${PLATFORM_NAME}      Android
${APP_PACKAGE}        ru.afisha.android
${APP_ACTIVITY}       ru.afishaog.android.presentation.app.AppActivity

*** Keywords ***
Open_App_on_real_device
    Open Application
    ...    remote_url=${CONNECTION_NAME}
    ...    automationName=${AUTOMATION_NAME}
    ...    platformName=${PLATFORM_NAME}
    ...    platformVersion=13
    ...    deviceName=Galaxy S20 пользователя Андрей
    ...    udid=RF8N20V1N7E
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    Capture Page Screenshot


Open App on simulator
    Open Application
    ...    remote_url=${CONNECTION_NAME}
    ...    automationName=${AUTOMATION_NAME} 
    ...    platformName=${PLATFORM_NAME}
    ...    platformVersion=13
    ...    deviceName=emulator-5554
    ...    udid=emulator-5554
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    Sleep   1s
    Capture Page Screenshot
    
Wait and Click Element
    [Arguments]    ${locator}
    Wait Until Page Contains Element    ${locator}   timeout=10s
    Click Element                       ${locator}

