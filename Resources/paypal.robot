*** Settings ***
Documentation    Keywords associated with testing customer purchase with paypal payment method
Library     SeleniumLibrary

*** Variables ***
${PAYPAL_USER}  robobuyer@store.com
${PAYPAL_PSWD}  0zvE$Nd5

*** Keywords ***
Add Apple Watch to cart
    Click Link  xpath=//*[@id="wc-column-container"]/ul/li[5]/a[1]
    Wait Until Page Contains    Apple Watch Series 6 GPS 44mm
    Click Button  class=single_add_to_cart_button
    Wait Until Page Contains    Subtotal: ฿14,400.00

Select paypal payment option
    Click Element   xpath=//*[@id="payment"]/ul/li[3]

Login into paypal and pay
    Wait Until Page Contains    Log in to PayPal
    Input Text    email    ${PAYPAL_USER}
    Input Text    password    ${PAYPAL_PSWD}
    Click Button    id=btnLogin
    Wait Until Page Contains    Deliver to
    Click Element   id=confirmButtonTop
    Wait Until Page Contains    You paid
    Click Element   merchantReturnBtn
