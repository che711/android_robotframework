*** Settings ***
Resource    profile.resource

Test Setup        profile.Preconditions: At Registration Form
Test Teardown     common.Close App

Suite Setup       common.Suite Setup
Suite Teardown    common.Suite Teardown

# nvm use
# robot  -d ../../results/profile  Registration.robot

*** Variables ***
${email}             laasaqwerdauru-2951@yopmail.com
${password}          Qwerty123

*** Test Cases ***
Profile Test
    Input Email And Password
    Push Registration Button
    Wait Until Page Contains Element    ${FINISH_REGISTRATION_FIELD}
    Sleep   2s

*** Keywords ***
Input Email And Password
    [Documentation]    Input Email And Password
    Input Text         ${LOGIN_FIELD}       text=${email}
    Input Password     ${PASSWORD_FIELD}    text=${password}

Push Registration Button
    Click Element     ${COMPLETE_REGISTRATION_BTN}
    Capture Page Screenshot

