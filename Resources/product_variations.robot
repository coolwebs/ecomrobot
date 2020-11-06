*** Settings ***
Documentation    Keywords associated with adding product with variations to cart
Library     SeleniumLibrary

*** Keywords ***
Select product variation
    Click Link  xpath=//*[@id="wc-column-container"]/ul/li[3]/a[1]
    Wait Until Page Contains    Apple Watch Nike + Series 4 GPS + Cellular 40mm
    Click Element   class=button-variable-item-pink-sand
    Click Element   class=button-variable-item-white
    Click Element   class=button-variable-item-space-grey
    Click Element   class=button-variable-item-white

Check additional features
    Click Link  xpath=//*[@id="tab-title-additional_information"]/a
    Sleep   1s
    Click Link  xpath=//*[@id="tab-title-description"]/a
    Sleep   1s

Add product variant to cart
    Click Button    class=single_add_to_cart_button
    Wait Until Page Contains    Subtotal: ฿12,900.00
