*** Settings ***
Resource    ../core/all.resource

*** Keywords ***
Launch App
    [Documentation]    Launch android and application
    launcher.Open App on simulator

Close App
    [Documentation]    Close Application
    Close All Applications


