*** Settings ***
Documentation    Purchase tests from the robocommerce store (demo built with Wordpress and Woo Commerce
Library          SeleniumLibrary
Resource    ../Resources/common.robot
#Resource    ../Resources/paypal.robot
#Resource    ../Resources/omise.robot
Resource    ../Resources/product_search.robot
Resource    ../Resources/coupons.robot
Resource    ../Resources/cod.robot

*** Variables ***


*** Test Cases ***
#Purchase product with paypal
#    [Documentation]     Customer will select a product from the list and add it to cart. Then make checkout and pay with Paypal.
#    [Tags]    DEBUG
#    Begin Web Test
#    Go to store page
#    Add Apple Watch to cart
#    Go to checkout
#    Select paypal payment option
#    Place order
#    Login into paypal and pay
#    End Web Test

#Purchase product with omise card
#    [Documentation]     Customer will select a product from the list and add it to cart. Then make checkout and pay with Stripe.
#    [Tags]    DEBUG
#    Begin Web Test
#    Go to store page
#    Add bose earbuds to cart
#    Go to checkout
#    Select omise payment option
#    Make card payment with omise
#    Place order
#    End Web Test

Search for product and add to cart
    [Documentation]     Customer uses product search to locate item and add it to the cart
    [Tags]    DEBUG
    Begin Web Test
    Go to store page
    Search for product
    Add Jabra 65T to cart
    View checkout

Apply discount coupon
    [Documentation]     Specific information about the test
    [Tags]    DEBUG
    Apply 10% coupon code
    Proceed to checkout

Purchase discount item with COD
    [Documentation]     Purchase the product in cart with COD payment method
    [Tags]    DEBUG
    Select COD payment option
    Place order
    End Web Test

Add multiple products to cart
    [Documentation]     Specific information about the test
    [Tags]    DEBUG
    Begin Web Test
    Go to store page

#Remove some items from cart
#    [Documentation]     Specific information about the test
#    [Tags]    DEBUG
#
#Complete checkout with multiple items
#    [Documentation]     Specific information about the test
#    [Tags]    DEBUG
#
#Submit contact form
#    [Documentation]     Specific information about the test
#    [Tags]    DEBUG
#
#Purchase a product that has a variation
#    [Documentation]     Specific information about the test
#    [Tags]    DEBUG
#
#Save customer details when checkout
#    [Documentation]     Specific information about the test
#    [Tags]    DEBUG
#
#Complete a member checkout
#    [Documentation]     Specific information about the test
#    [Tags]    DEBUG
#
#Customer login to check order
#    [Documentation]     Specific information about the test
#    [Tags]    DEBUG
#
#Customer cancel product order
#    [Documentation]     Specific information about the test
#    [Tags]    DEBUG


