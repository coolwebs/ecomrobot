*** Settings ***
Documentation    Keywords associated with testing customer purchase with stripe payment method
Library     SeleniumLibrary

*** Variables ***
${CARD_NUM}     5555555555554444
${CARD_NAME}    Sally Fletcher
${CARD_EXP_MONTH}     07
${CARD_EXP_YEAR}     2024
${CARD_CCV}     569

*** Keywords ***
Add bose earbuds to cart
    Click Link  xpath=//*[@id="wc-column-container"]/ul/li[9]/a[1]
    Wait Until Page Contains    Bose Soundsport free wireless
    Click Button  class=single_add_to_cart_button
    Wait Until Page Contains    Subtotal: ฿4,400.00

Select omise payment option
    Click Element   xpath=//*[@id="payment"]/ul/li[5]

Make card payment with omise
    Input Text    omise_card_number    ${CARD_NUM}
    Sleep   1s
    Input Text    omise_card_name    ${CARD_NAME}
    Sleep   1s
    Input Text    omise_card_expiration_month    ${CARD_EXP_MONTH}
    Sleep   1s
    Input Text    omise_card_expiration_year    ${CARD_EXP_YEAR}
    Sleep   1s
    Input Text    omise_card_security_code    ${CARD_CCV}
    Sleep   1s
