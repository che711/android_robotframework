*** Settings ***
Resource   ../common.resource

# cd tests/onboarding
# nvm use
# robot -d ../../results/simulator Onbording_Allow_Location_Confirm_Town.robot

*** Test Cases ***
Allow Location and Confirm City
    [Documentation]    Onboarding and confirmation of the city

    launcher.Open App on simulator
    Click Element

