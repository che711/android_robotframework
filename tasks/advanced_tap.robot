*** Settings ***
Resource          ../tests/common.resource

Suite Setup       common.Suite Setup
Suite Teardown    common.Suite Teardown

Test Setup        common.Launch App With Geo
Test Teardown     common.Close App

*** Tasks ***
Introdaction To Tap With Position
    Wait And Click App Element        ${FIRST_VIEW_STORIES}
    Wait Until Element Is Visible     ${PICTURE_FIRST_VIEW_STORIES}

    Switch slide by tap
    Sleep  3s
    
    
    
*** Keywords ***
Switch slide by tap
    [Documentation]    Tap an element with position
    @{tap_position}          Create List   900    1000
    @{tap_position_2}        Create List   100    100
    @{two_finger_tap}        Create List    @{tap_position}    @{tap_position_2}
    Tap With Positions       @{tap_position}
    Sleep   1s
    
    
    
