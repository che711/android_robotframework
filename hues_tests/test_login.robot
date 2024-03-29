*** Settings ***
Resource    onboarding.resource

Test Setup        Open App
Documentation    Login test for Hue Application

# nvm use
# robot  -d results  test_login.robot


*** Variables ***
${email_address}     ph180324_prod@yopmail.com
${password}          123456asd+


*** Test Cases ***
Open Hue App.
    Wait and Click App Element    ${GET_STARTED_BUTTON}
    Wait and Click App Element    ${I_ACCEPT_BUTTON}
    Wait and Click App Element    ${NEXT_BUTTON_PRIVACY_NOTICE}
    Wait and Click App Element    ${SIGNIN_BUTTON}
    Wait and Click App Element    ${NEXT_BUTTON_ON_SELECT_COUNTRY_WIDGET}
    Sleep    1s
#    Click Element                 ${EMAIL_ADDRESS_FIELD}
#    Input Text                    ${EMAIL_ADDRESS_FIELD}   ''
#    Sleep   1s
    Click Element                 ${PASSWORD_FIELD}
#    Input Text                    ${PASSWORD_FIELD}         ''
    Sleep   1s
    Capture Page Screenshot
    Close All Applications






