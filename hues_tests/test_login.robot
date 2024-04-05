*** Settings ***
Resource    common.resource

Documentation    Login test for Hue Application
Test Setup        Open App

# nvm use
# robot  -d results/onboarding  test_login.robot


*** Variables ***
${email_address}       ph180324_prod@yopmail.com
${password}            123456asd+
${passphrase}          strength upstairs compound dollop hanky wrist obstinate depose skeleton mummy


*** Test Cases ***
Onboarding on Hue's App.
    Wait and Click App Element    ${GET_STARTED_BUTTON}
    Wait and Click App Element    ${I_ACCEPT_BUTTON}
    Wait and Click App Element    ${NEXT_BUTTON}
    Wait and Click App Element    ${SIGNIN_BUTTON}
    Wait and Click App Element    ${NEXT_BUTTON_ON_SELECT_COUNTRY_WIDGET}

    Sleep    1s
    Input Text                    ${EMAIL_ADDRESS_FIELD}   ${email_address}
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
    Sleep  5s
    Wait Until Page Contains Element    ${SECURITY_BUTTON}
    Capture Page Screenshot
    Close Application




