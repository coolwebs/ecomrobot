*** Settings ***
Documentation    Suite description
Library          SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}            https://truemoveh.truecorp.co.th

*** Test Cases ***
Open site and navigate to online shop
   [Tags]   Debug
   Begin Web Test
   Go to online store
   Search for products
   Add product and checkout
   End Web Test

*** Keywords ***
Begin Web Test
    Open Browser    about:blank     ${BROWSER}

Go to online store
    Go To    ${URL}
    Maximize Browser Window
    Wait Until Page Contains   สั่งซื้อออนไลน์
    Mouse Over   xpath=/html/body/section[1]/header/nav/nav/ul/li[4]/a
    Click Link   xpath=/html/body/section[1]/header/nav/nav/ul/li[4]/div/ul/li[1]/a
    Wait Until Page Contains   หมวดหมู่สินค้า

Search for products
    Click Element   xpath=/html/body/div[2]/div[3]/div/div[3]/div/div[1]/div[2]/div[2]/div[2]/div[2]/div[2]
    Sleep   3s
    Click Image   iPhone 11 Pro (64GB)
    Wait Until Page Contains   iPhone 11 Pro (64GB)
    Sleep   3s

Add product and checkout
    Click Element   xpath=/html/body/div[2]/div[3]/div/div[1]/div/div[2]/div[2]/div/div[7]/div[2]/button
    Wait Until Page Contains   ขั้นตอนการสั่งซื้อ    timeout=10
    Sleep   10s
    Click Element   xpath=/html/body/div[2]/div[3]/div/div[4]/div[2]/div/div[2]/div[2]/button
    Sleep   10s
    Click Element   xpath=/html/body/div[2]/div[3]/div/div[4]/div[1]/div[1]/div/div/button[2]
    Wait Until Page Contains   ขั้นตอนการสั่งซื้อ    timeout=10
    Sleep   10s

End Web Test
    [Teardown]    Close Browser
