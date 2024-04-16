*** Settings ***
Resource          ../tests/common.resource

Suite Setup       common.Suite Setup
Suite Teardown    common.Suite Teardown

Test Setup        common.Launch App With Geo
Test Teardown     common.Close App

# robot  -d ../results/cycles  advanced_tap.robot

*** Tasks ***
#Introdaction To Tap With Position
#    Wait And Click App Element        ${FIRST_VIEW_STORIES}
#    Sleep    1s
#    Wait Until Element Is Visible     ${PICTURE_FIRST_VIEW_STORIES}
#    Switch slide by tap    "right"

Check Viewed Story
    [Documentation]   Check that the story was viewed
    Find Last Slide
    Go Back And Refresh View
    Sleep   5s



*** Keywords ***
Find Last Slide
    [Documentation]     Find the last slide in the stories
    Wait And Click App Element        ${FIRST_VIEW_STORIES}
    Wait Until Element Is Visible     ${PICTURE_FIRST_VIEW_STORIES}

    FOR  ${i}   IN RANGE  15
        ${is_element_present}=   Run Keyword And Return Status
        ...    Wait Until Element Is Visible    ${BTN_VIEW_STORIES}    timeout=1s
        IF  ${is_element_present}   BREAK
        Switch slide by tap    "right"
    END
    Page Should Contain Element    ${BTN_VIEW_STORIES}
    Sleep   3s

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
    Capture Page Screenshot

Multiple Fingers Tap
    ${firstFinger}          Create List    1000    1400
    ${secondFinger}         Create List     100    100
    @{fingerPositions}      Create List    ${firstFinger}  ${secondFinger}
    Tap With Positions      100    @{fingerPositions}
    Sleep  1s
    Capture Page Screenshot

Go back and refresh view
    [Documentation]     Move back and refresh cache
    Press Keycode    4
    Page Should Contain Element        ${MARK_VIEW_STORIE_ON_SCREEN}
    ${stories_ text}=      Get Element Attribute    ${ITEM_STORY_TITLE}    attribute=text
    Log     ${stories_text}
    Terminate Application              ${APP_PACKAGE}
    Activate Application               ${APP_PACKAGE}
    Wait Until Page Contains Element    ${FIRST_VIEW_STORIES}
    Sleep    5s
    Page Should Not Contain Element        ${MARK_VIEW_STORIE_ON_SCREEN}
#    Page Should Not Contain Text           ${stories_ text}

