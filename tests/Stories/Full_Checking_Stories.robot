*** Settings ***
Resource         stories.resource

Suite Setup       common.Suite Setup
Suite Teardown    common.Suite Teardown

Test Setup        common.Launch App With Geo
Test Teardown     common.Close App

# robot  -d ../../results/stories  Full_Checking_Stories.robot

*** Test Cases ***
Test Check Stories
    [Documentation]    Open Stories
    Introdaction To Tap With Position


