*** Settings ***
Resource      tests/common.resource

Suite Setup       common.Suite Setup
Suite Teardown    common.Suite Teardown

Test Setup        common.Launch App With Geo
Test Teardown     common.Close App

*** Tasks ***
Introdaction to Swiping
    Wait Until Element Is Visible     ${STORIES}
#    Swipe By Percent    80    50   20    50    500
    Swipe   start_x=1200    start_y=1650    offset_x=100    offset_y=1300    duration=500
    Sleep    3s
    Capture Page Screenshot

