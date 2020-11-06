*** Settings ***
Documentation    Purchase tests from the robocommerce store (demo built with Wordpress and Woo Commerce
Library          SeleniumLibrary
Resource    ../Resources/common.robot
Resource    ../Resources/adding_products.robot
Resource    ../Resources/paypal.robot
Resource    ../Resources/omise.robot
Resource    ../Resources/product_search.robot
Resource    ../Resources/coupons.robot
Resource    ../Resources/cod.robot
Resource    ../Resources/purchase_multiple.robot
Resource    ../Resources/remove_from_cart.robot
Resource    ../Resources/contact_form.robot
Resource    ../Resources/product_variations.robot
Resource    ../Resources/member.robot
Resource    ../Resources/check_order.robot

*** Test Cases ***
Purchase product with paypal
    [Documentation]     Customer will select a product from the list and add it to cart. Then make checkout and pay with Paypal.
    [Tags]    DEBUG
    Begin Web Test
    Go to store page
    Add Apple Watch to cart
    Go to checkout
    Select paypal payment option
    Place order
    Login into paypal and pay
    End Web Test

Purchase product with omise card
    [Documentation]     Customer will select a product from the list and add it to cart. Then make checkout and pay with Stripe.
    [Tags]    DEBUG
    Begin Web Test
    Go to store page
    Add bose earbuds to cart
    Go to checkout
    Select omise payment option
    Make card payment with omise
    Place order
    End Web Test

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
    Apply 15% coupon code
    Proceed to checkout

Purchase discount item with COD
    [Documentation]     Purchase the product in cart with COD payment method
    [Tags]    DEBUG
    Adrian customer details
    Select COD payment option
    Place order
    End Web Test

Add multiple products to cart
    [Documentation]     Add multiple shop items to the cart
    [Tags]    DEBUG
    Begin Web Test
    Go to store page
    Add smartphone to cart
    Add phone case to cart
    Add beats audio to cart
    Add samsung smartwatch to cart

Remove some items from cart
    [Documentation]     Remove some product items from the shopping cart
    [Tags]    DEBUG
    Remove products

Complete checkout with multiple items
    [Documentation]     Complete the checkout and pay for all items using paypal method
    [Tags]    DEBUG
    Go multi product checkout
    Adrian customer details
    Select paypal payment option
    Place order
    Login into paypal and pay

Submit contact form
    [Documentation]     Navigate to contact page and submit enquiry
    [Tags]    DEBUG
    Complete contact form
    End Web Test

Purchase a product that has a variation
    [Documentation]     Add a product variation to cart and go to checkout
    [Tags]    DEBUG
    Begin Web Test
    Go to store page
    Select product variation
    Check additional features
    Add product variant to cart
    View checkout
    Apply 150THB coupon code
    After discount go to checkout
    Sally checkout details

Save customer details when checkout
    [Documentation]     Save the customer details when do checkout and payment with paypal
    [Tags]    DEBUG
    Create an account
    Select paypal payment option
    Place order
    Login into paypal and pay
    End Web Test

Complete a member checkout
    [Documentation]     User logs in to their account uses it to make their purchase quickly
    [Tags]    DEBUG
    Begin Web Test
    Go to store page
    Add wearable product to cart
    Member login
    Sleep   5s
    Select COD payment option
    Place order
    End Web Test

Customer login to check order
    [Documentation]     Customer login to the website to check on status of their order
    [Tags]    DEBUG
    Begin Web Test
    Go to store page
    Customer login to account
    Customer check order

Customer cancel product order
    [Documentation]     Customer go into the backend portal and cancel their order
    [Tags]    DEBUG
    Cancel order
    Customer logout
    End Web Test
