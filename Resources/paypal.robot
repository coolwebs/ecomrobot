*** Settings ***
Documentation    Keywords associated with testing customer purchase with paypal payment method
Library     SeleniumLibrary

*** Variables ***
${PAYPAL_USER}  robobuyer@store.com
${PAYPAL_PSWD}  0zvE$Nd5

*** Keywords ***
Select paypal payment option
    Click Element   xpath=//*[@id="payment"]/ul/li[3]

Login into paypal and pay
#    Wait Until Page Contains    PayPal is the safer, faster way to pay
#    Click Link  link=Not you?
    Wait Until Page Contains    Log in to PayPal
    Input Text    email    ${PAYPAL_USER}
    Input Text    password    ${PAYPAL_PSWD}
    Click Button    id=btnLogin
    Wait Until Page Contains    Deliver to
    Click Element   id=confirmButtonTop
    Wait Until Page Contains    You paid
    Sleep   1s
    Click Element   merchantReturnBtn
