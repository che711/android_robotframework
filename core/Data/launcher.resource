*** Settings ***
Library       AppiumLibrary


*** Variables ***
${CONNECTION_NAME}    http://127.0.0.1:4723
${AUTOMATION_NAME}    UiAutomator2
${PLATFORM_NAME}      Android
${APP_PACKAGE}        ru.afisha.android
${APP_ACTIVITY}       ru.afishaog.android.presentation.app.AppActivity
${PLATFORM_VERSION}   13  # 8 or 13
${DEVICE_NAME}        emulator-5556    # 'emulator-5554' for platform_version==8  or emulator-5556 and RF8N20V1N7E for platform_version==13
${UDID}               emulator-5556   # 'emulator-5554' for platform_version==8  or emulator-5556 and RF8N20V1N7E for platform_version==13


*** Keywords ***
Open App
    Open Application
    ...    remote_url=${CONNECTION_NAME}
    ...    automationName=${AUTOMATION_NAME} 
    ...    platformName=${PLATFORM_NAME}
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    udid=${UDID}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    Capture Page Screenshot
    
Wait and Click App Element
    [Arguments]    ${locator}
    Wait Until Page Contains Element    ${locator}   timeout=10s
    Click Element                       ${locator}

