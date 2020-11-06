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

${F_FIRSTNAME}    Sally
${F_LASTNAME}     Fletcher
${F_STREET}       Sign Condo Sukhumvit 50, ซอย แสงอุทัย แขวง พระโขนง เขตคลองเตย กรุงเทพมหานคร
${F_POSTCODE}     10206
${F_PHONE}    0863879245
${F_EMAIL}    info@coolwebs.com.au

${A_FIRSTNAME}    Adrian
${A_LASTNAME}     Anderson
${A_STREET}       Sign Condo Sukhumvit 50, ซอย แสงอุทัย แขวง พระโขนง เขตคลองเตย กรุงเทพมหานคร
${A_POSTCODE}     10750
${A_PHONE}    0899980348
${A_EMAIL}    ryan.archer@truedigital.com

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

Add product to cart
    Click Link    class=add_to_cart_button

Go to checkout
    Click Link  xpath=//*[@id="woocommerce_widget_cart-2"]/div/p[2]/a[2]
    Sleep   1s
    Input Text    billing_first_name    ${FIRSTNAME}
    Input Text    billing_last_name    ${LASTNAME}

    Input Text    billing_address_1    ${STREET}
    Input Text    billing_city    ${CITY}

    Input Text    billing_postcode    ${POSTCODE}
    Input Text    billing_phone    ${PHONE}
    Input Text    billing_email    ${EMAIL}
    sleep   3s

Sally checkout details

    Input Text    billing_first_name    ${F_FIRSTNAME}
    Input Text    billing_last_name    ${F_LASTNAME}

    Input Text    billing_address_1    ${F_STREET}
    Input Text    billing_city    ${CITY}

    Input Text    billing_postcode    ${F_POSTCODE}
    Input Text    billing_phone    ${F_PHONE}
    Input Text    billing_email    ${F_EMAIL}
    sleep   3s

Adrian customer details
    Input Text    billing_first_name    ${A_FIRSTNAME}
    Input Text    billing_last_name    ${A_LASTNAME}

    Input Text    billing_address_1    ${A_STREET}
    Input Text    billing_city    ${CITY}

    Input Text    billing_postcode    ${A_POSTCODE}
    Input Text    billing_phone    ${A_PHONE}
    Input Text    billing_email    ${A_EMAIL}
    sleep   3s

Create an account
    Click Element   id=createaccount

Proceed to checkout
    Click Link    xpath=//*[@id="post-6"]/div/div/div/div[2]/div/div/a

Place order
    Click Button    id=place_order

End Web Test
    Close Browser
