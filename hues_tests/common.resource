*** Settings ***
Library           AppiumLibrary
Resource          Locators/login_page_lc.resource
Resource          ../variables_hue.robot


*** Variables ***
${CONNECTION_NAME}    http://127.0.0.1:4723
${AUTOMATION_NAME}    UiAutomator2
${PLATFORM_NAME}      Android
${APP_PACKAGE}        com.philips.lighting.hue2
${APP_ACTIVITY}       com.philips.lighting.hue2.ContentActivity
${PLATFORM_VERSION}   13  # 8 or 13
${DEVICE_NAME}        RF8N20V1N7E   # emulator-5554 and RF8N20V1N7E for platform_version==13
${UDID}               RF8N20V1N7E   # emulator-5554 and RF8N20V1N7E for platform_version==13


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


Onboarding
    [Documentation]   Open application, login existing account and check security button,
    ...               wait five seconds and close applicationd
    Wait and Click App Element    ${GET_STARTED_BUTTON}
    Wait and Click App Element    ${I_ACCEPT_BUTTON}
    Wait and Click App Element    ${NEXT_BUTTON}
    Wait and Click App Element    ${SIGNIN_BUTTON}
    Wait and Click App Element    ${NEXT_BUTTON}   # ${NEXT_BUTTON_ON_SELECT_COUNTRY_WIDGET}

    Sleep    1s
    Input Text                    ${EMAIL_ADDRESS_FIELD}    ${email_address}
    Input Text                    ${PASSWORD_FIELD}         ${password}
    Hide Keyboard
    Press Keycode                  66
    Wait and Click App Element     ${YES_CONTINUE_BUTTON}
    Wait and Click App Element     ${YES_CONTINUE_BUTTON}
    Wait and Click App Element     ${YES_CONTINUE_BUTTON}
    Wait and Click App Element     ${START_SETUP_BUTTON}
    Wait and Click App Element     ${NEXT_BUTTON}
    Wait and Click App Element     ${ENTER_MANUALLY_PASSPHRASE_BUTTON}

    Input Text                     ${PASSPHRASE_FIELD}    ${passphrase}
    Hide Keyboard
    Wait and Click App Element     ${NEXT_BUTTON}
    Wait and Click App Element     ${NEXT_BUTTON}

    Wait and Click App Element     ${YES_TURN_THEM_ON}
    Wait and Click App Element     ${PERMISSION_ALLOW_BUTTON}
    Wait and Click App Element     ${SKIP_BUTTON}
    Wait and Click App Element     ${DONE_BUTTON}
    Capture Page Screenshot
    Wait Until Page Contains Element    ${SECURITY_BUTTON}
    Capture Page Screenshot


    @{firstFinger}    create list   ${100}      ${500}
    @{secondFinger}   create list   ${700}      ${500}
    @{fingerPositions}    create list   ${firstFinger}    ${secondFinger}
    Sleep   1s
    Tap with Positions    ${1000}     @{fingerPositions}



Wait and Click App Element
    [Arguments]    ${locator}
    Wait Until Page Contains Element    ${locator}   timeout=10s
    Click Element                       ${locator}

