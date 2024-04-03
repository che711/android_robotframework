*** Settings ***
Resource    profile.resource

Test Setup        profile.Preconditions: At Registration Form
Test Teardown     common.Close App

Suite Setup       common.Suite Setup
Suite Teardown    common.Suite Teardown

# nvm use
# robot  -d ../../results/profile  Registration.robot

*** Test Cases ***
Profile Test
    Input Email And Password
    Push Registration Button
    Wait Until Page Contains Element    ${FINISH_REGISTRATION_FIELD}
    Sleep   2s

*** Keywords ***
Input Email And Password
    [Documentation]    Input Email And Password
    Input Text         ${LOGIN_FIELD}       text=latrasaauru-2951@yopmail.com
    Input Password     ${PASSWORD_FIELD}    text=Qwerty123

Push Registration Button
    Click Element    //android.widget.Button[@text="Зарегистрироваться"]


