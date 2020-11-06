*** Settings ***
Documentation    This test suite is for quick check in all the major browsers
Library          SeleniumLibrary

*** Variables ***
${CHROME}        chrome
${FIREFOX}       firefox
${SAFARI}        safari
${URL}           https://truemoveh.truecorp.co.th

*** Test Cases ***
Quick web browser testing
    Begin Chrome Web Test
    Maximize Browser Window
    Go to online store
    Close Browser

    Begin Firefox Web Test
    Maximize Browser Window
    Go to online store
    Close Browser

    Begin Safari Web Test
    Maximize Browser Window
    Go to online store
    Close Browser

*** Keywords ***
Begin Chrome Web Test
    Open Browser    about:blank     ${CHROME}

Begin Firefox Web Test
    Open Browser    about:blank     ${FIREFOX}

Begin Safari Web Test
    Open Browser    about:blank     ${SAFARI}

Go to online store
    Go To    ${URL}

End Web Test
    Close Browser
