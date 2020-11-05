*** Settings ***
Documentation    Keywords associated with testing customer purchase with stripe payment method
Library     SeleniumLibrary

*** Variables ***
${CARD_NUM}     5555555555554444
${CARD_EXP}     0724
${CARD_CCV}     569

*** Keywords ***
Add bose earbuds to cart
    Click Link  xpath=//*[@id="wc-column-container"]/ul/li[9]/a[1]
    Wait Until Page Contains    Bose Soundsport free wireless
    Click Button  class=single_add_to_cart_button
    Wait Until Page Contains    Subtotal: ฿4,400.00

Select stripe payment option
    Click Element   xpath=//*[@id="payment"]/ul/li[4]

Make stripe payment
    Input Text    stripe-card-element    ${CARD_NUM}
    Input Text    name=exp-date    ${CARD_NUM}
    Input Text    name=cvc    ${CARD_NUM}
    Click Button    id=place_order
