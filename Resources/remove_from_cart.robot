*** Settings ***
Documentation    Keywords associated with adding multiple product SKUs to cart
Library     SeleniumLibrary

*** Keywords ***
# go remove some products from the cart

Remove products
    Click Link  class=remove_from_cart_button
    Sleep   1s
    Click Link  class=remove_from_cart_button

Go multi product checkout
    Click Link  xpath=//*[@id="woocommerce_widget_cart-2"]/div/p[2]/a[2]
