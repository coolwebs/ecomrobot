*** Settings ***
Documentation    Keywords associated with running discount coupon codes on the checkout cart total
Library     SeleniumLibrary

*** Variables ***
${COUPON_15}     3P8UNJE8
${COUPON_150f}     3P8UNJE8

*** Keywords ***
Apply 15% coupon code
    Input Text    coupon_code    ${COUPON_15}
    Click Button    name=apply_coupon
    Wait Until Page Contains    Coupon:

*** Keywords ***
Apply 150THB coupon code
    Input Text    coupon_code    ${COUPON_150f}
    Click Button    name=apply_coupon
    Wait Until Page Contains    Coupon:

After discount go to checkout
    Click Link  xpath=//*[@id="post-6"]/div/div/div/div[2]/div/div/a
