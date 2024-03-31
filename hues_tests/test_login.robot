*** Settings ***
Resource    common.resource

Documentation    Login test for Hue Application
Test Setup        Open App

# nvm use
# robot  -d results  test_login.robot


*** Variables ***
${email_address}       ph180324_prod@yopmail.com     # test_automation_account@yopmail.com
${password}            123456asd+
${passphrase}          strength upstairs compound dollop hanky wrist obstinate depose skeleton mummy


*** Test Cases ***
Open Hue App.
    Wait and Click App Element    ${GET_STARTED_BUTTON}
    Wait and Click App Element    ${I_ACCEPT_BUTTON}
    Wait and Click App Element    ${NEXT_BUTTON}
    Wait and Click App Element    ${SIGNIN_BUTTON}
    Wait and Click App Element    ${NEXT_BUTTON_ON_SELECT_COUNTRY_WIDGET}

    Sleep    1s
    Input Text                    ${EMAIL_ADDRESS_FIELD}   ${email_address}
    Input Text                    ${PASSWORD_FIELD}         ${password}

    Wait and Click App Element     ${CONTINUE_BUTTON}
    Wait and Click App Element     ${YES_CONTINUE_BUTTON}
    Wait and Click App Element     ${YES_CONTINUE_BUTTON}
    Wait and Click App Element     ${YES_CONTINUE_BUTTON}
    Wait and Click App Element     ${START_SETUP_BUTTON}
    Wait and Click App Element     ${NEXT_BUTTON}
    Wait and Click App Element     ${ENTER_MANUALLY_PASSPHRASE_BUTTON}

    Sleep  1s
    Input Text                     ${PASSPHRASE_FIELD}    ${passphrase}
    Capture Page Screenshot
    Sleep  1s
    Press Keycode                  66

    Sleep    3s
    Capture Page Screenshot
    Close Application




