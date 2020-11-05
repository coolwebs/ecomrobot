*** Settings ***
Documentation    Keywords associated with running discount coupon codes on the checkout cart total
Library     SeleniumLibrary

*** Variables ***
${COUPON}     3P8UNJE8

*** Keywords ***
Apply 10% coupon code
    Input Text    coupon_code    ${COUPON}
    Click Button    name=apply_coupon
    Wait Until Page Contains    Coupon:

