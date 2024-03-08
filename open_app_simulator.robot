*** Settings ***
Library    AppiumLibrary

# robot -d results/simulator open_app_simulator.robot
# . .venv/bin/activate

*** Test Cases ***
Test Open App on simulator.
    Open App on simulator
    Sleep     5s
    Capture Page Screenshot
    Close All Applications


*** Keywords ***
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


