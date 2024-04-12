*** Settings ***
Resource          ../tests/common.resource

Suite Setup       common.Suite Setup
Suite Teardown    common.Suite Teardown

Test Setup        common.Launch App With Geo
Test Teardown     common.Close App



*** Tasks ***
Scroll Until Element Is Found
    [Documentation]    Scroll the page until element is visible
    ${is_element_visible}=  Set Variable    ${False}
    WHILE  not ${is_element_visible}
        ${is_element_visible}   Run Keyword And Return Status
        ...    Wait Until Element Is Visible    //android.widget.TextView[@text="Скоро в кино"]    timeout=5s
        IF  ${is_element_visible}
            BREAK
        ELSE
            Swipe   start_x=600    start_y=15000    offset_x=600    offset_y=130    duration=500   # разобраться и обновать эту строку
        END
    END
#    Sleep  5s

