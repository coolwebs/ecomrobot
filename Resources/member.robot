*** Settings ***
Documentation    Keywords associated with a member completing the store checkout
Library     SeleniumLibrary

*** Variables ***
${USERNAME}     coolwebsbackups@gmail.com
${PASSWORD}     OS%J%G8g

*** Keywords ***
Add wearable product to cart
    Mouse Over  xpath=//*[@id="menu-item-124"]/a
    Click Element   xpath=//*[@id="menu-item-128"]
    Wait Until Page Contains    Bose
    Click Link    class=add_to_cart_button
    Sleep   2s
    Click Link    link=Checkout

Member login
    Click Link  class=showlogin
    Wait Until Page Contains    Username or email
    Sleep   2s
    Input Text    username    ${USERNAME}
    Input Text    password    ${PASSWORD}
    Click Button    class=woocommerce-form-login__submit


