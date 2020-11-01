*** Settings ***
Documentation    Suite description

*** Variables ***
${BROWSER}        chrome
${URL}            https://truemoveh.truecorp.co.th

*** Test Cases ***
Test title
    [Tags]    DEBUG
    Provided precondition
    When action
    Then check expectations

*** Keywords ***
Provided precondition
    Setup system under test
