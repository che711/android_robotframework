*** Settings ***
Library    AppiumLibrary

# robot -d results open_app_real_device.robot
# robot --console verbose -d results open_app_real_device.robot
# . .venv/bin/activate

*** Test Cases ***
Test Open App on real device.
    Open App on real device
    Sleep     3s
    Capture Page Screenshot
    Close All Applications


*** Keywords ***
Open App on real device
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
