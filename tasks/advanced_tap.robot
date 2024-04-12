*** Settings ***
Resource          ../tests/common.resource

Suite Setup       common.Suite Setup
Suite Teardown    common.Suite Teardown

Test Setup        common.Launch App With Geo
Test Teardown     common.Close App

*** Tasks ***
Introdaction To Tap With Position
    Wait And Click App Element        ${FIRST_VIEW_STORIES}
    Sleep    1s
    Wait Until Element Is Visible     ${PICTURE_FIRST_VIEW_STORIES}

    Switch slide by tap    "right"



*** Keywords ***
Switch slide by tap
    [Arguments]    ${side}
    [Documentation]     Tap an element with position
    ...    Arguments:  ${side} - should be "right" or "left"

    ${width}=	  Get Window Width
    ${height}=    Get Window Height

    IF  ${side}=="right"
        ${x}=         Evaluate  ${width}*0.8
    ELSE IF    ${side}=="left"
        ${x}=         Evaluate  ${width}*0.2
    END
    ${y}=             Evaluate  ${height}*0.5

    ${firstFinger}        Create List    ${x}   ${y}
    Tap With Positions   100   ${firstFinger}
    Sleep  2s
    Capture Page Screenshot

Multiple Fingers Tap
    ${firstFinger}          Create List    1000    1400
    ${secondFinger}         Create List     100    100
    @{fingerPositions}      Create List    ${firstFinger}  ${secondFinger}
    Tap With Positions      100    @{fingerPositions}
    Sleep  1s
    Capture Page Screenshot

    
