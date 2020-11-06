*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Keywords ***
Add Apple Watch to cart
    Click Link  xpath=//*[@id="wc-column-container"]/ul/li[5]/a[1]
    Wait Until Page Contains    Apple Watch Series 6 GPS 44mm
    Click Button  class=single_add_to_cart_button
    Wait Until Page Contains    Subtotal: ฿14,400.00

Add bose earbuds to cart
    Click Link  xpath=//*[@id="wc-column-container"]/ul/li[9]/a[1]
    Wait Until Page Contains    Bose Soundsport free wireless
    Click Button  class=single_add_to_cart_button
    Wait Until Page Contains    Subtotal: ฿4,400.00
