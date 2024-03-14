*** Settings ***
Library       AppiumLibrary


*** Keywords ***
Open_App_on_real_device
    Open Application
    ...    remote_url=http://127.0.0.1:4723
    ...    automationName=UiAutomator2
    ...    platformName=Android
    ...    platformVersion=13
    ...    deviceName=Galaxy S20 пользователя Андрей
    ...    udid=RF8N20V1N7E
    ...    appPackage=ru.afisha.android
    ...    appActivity=ru.afishaog.android.presentation.app.AppActivity
    Capture Page Screenshot


Open App on simulator
    Open Application
    ...    remote_url=http://127.0.0.1:4723
    ...    automationName=UiAutomator2
    ...    platformName=Android
    ...    platformVersion=13
    ...    deviceName=emulator-5554
    ...    udid=emulator-5554
    ...    appPackage=ru.afisha.android
    ...    appActivity=ru.afishaog.android.presentation.app.AppActivity
    ...    appium:automationName=UiAutomator2  # Add this line
    Sleep   1s
    Capture Page Screenshot
    
Wait and Click Element
    [Arguments]    ${locator}
    Wait Until Page Contains Element    ${locator}   timeout=10s
    Click Element                       ${locator}