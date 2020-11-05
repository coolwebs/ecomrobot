*** Settings ***
Documentation    Keywords associated with testing product search feature
Library     SeleniumLibrary

*** Variables ***
${PRODUCT_NAME}     Jabra 65T

*** Keywords ***
Search for product
    Input Text    woocommerce-product-search-field-0    ${PRODUCT_NAME}
    Click Button    xpath=//*[@id="woocommerce_product_search-2"]/form/button

Add Jabra 65T to cart
    Click Link  xpath=//*[@id="wc-column-container"]/ul/li[1]/a[2]
    Sleep   1s
