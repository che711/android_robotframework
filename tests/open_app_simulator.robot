*** Settings ***
Library     AppiumLibrary
Resource    common.resource

# robot -d results/simulator open_app_simulator.robot

# . .venv/bin/activate
# nvm use

*** Test Cases ***
Test Open App on simulator.
    Open App on simulator
    Sleep     5s
    Capture Page Screenshot
    Close All Applications


*** Keywords ***


