*** Settings ***
Documentation    Common keywords associated with complete suite of tests
Library     SeleniumLibrary

*** Variables ***
${URL}  https://robot-commerce.local/
${BROWSER}      chrome
${FIRSTNAME}    John
${LASTNAME}     Appleseed
${COUNTRY}      Thailand
${STREET}       Noble Ploenchit Condo ถนน เพลินจิต แขวง ลุมพินี เขตปทุมวัน กรุงเทพมหานคร
${CITY}     Bangkok
${STATE}    Bangkok
${POSTCODE}     10500
${PHONE}    0953459872
${EMAIL}    coolwebs81@gmail.com

*** Keywords ***
Begin Web Test
    Open Browser    about:blank     ${BROWSER}

Go to store page
    Go To    ${URL}
    Maximize Browser Window
    Wait Until Page Contains   Home
    Click Link   xpath=//*[@id="menu-item-133"]/a
    Wait Until Page Contains   Shop

View checkout
    Click Link  xpath=//*[@id="woocommerce_widget_cart-2"]/div/p[2]/a[1]

Go to checkout
    Click Link  class=wc-forward
    Wait Until Page Contains    Cart
    Click Link  class=checkout-button
    Wait Until Page Contains    Checkout
    Sleep   1s
    Input Text    billing_first_name    ${FIRSTNAME}
    Input Text    billing_last_name    ${LASTNAME}

#    complete country select menu
#    Click Element   id=select2-billing_country-container
#    Click Element   id=select2-billing_country-result-y0l8-TH

    Input Text    billing_address_1    ${STREET}
    Input Text    billing_city    ${CITY}

#    complete state select menu
#    Click Element   id=select2-billing_state-container
#    Click Element   id=select2-billing_state-result-difn-TH-10

    Input Text    billing_postcode    ${POSTCODE}
    Input Text    billing_phone    ${PHONE}
    Input Text    billing_email    ${EMAIL}
#    Click Element   xpath=//*[@id="payment"]/ul/li[4]/label
#    Click Element   css=#payment > ul > li.wc_payment_method.payment_method_paypal > label
    sleep   3s

Proceed to checkout
    Click Link    xpath=//*[@id="post-6"]/div/div/div/div[2]/div/div/a

Place order
    Click Button    id=place_order

End Web Test
    Close Browser
