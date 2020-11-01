*** Settings ***
Documentation    Purchase tests from the robocommerce store (demo built with Wordpress and Woo Commerce
Resource    Resources/common.robot
Test Setup  Begin Web Test
Test Teardown   End Web Test

*** Variables ***
${URL}  https://robot-commerce.local/

*** Test Cases ***
Purchase product with paypal
    [Documentation]     Specific information about the test
    [Tags]    DEBUG

Purchase product with stripe
    [Documentation]     Specific information about the test
    [Tags]    DEBUG

Apply discount coupon
    [Documentation]     Specific information about the test
    [Tags]    DEBUG

Apply discount coupon
    [Documentation]     Specific information about the test
    [Tags]    DEBUG

Remove product and use contact
    [Documentation]     Specific information about the test
    [Tags]    DEBUG

Save customer details
    [Documentation]     Specific information about the test
    [Tags]    DEBUG

Customer checks order
    [Documentation]     Specific information about the test
    [Tags]    DEBUG

Complete a member checkout
    [Documentation]     Specific information about the test
    [Tags]    DEBUG

Purchase product using cod
    [Documentation]     Specific information about the test
    [Tags]    DEBUG

Purchase product using bank transfer
    [Documentation]     Specific information about the test
    [Tags]    DEBUG

Purchase multiple products
    [Documentation]     Specific information about the test
    [Tags]    DEBUG

Cancel product order
    [Documentation]     Specific information about the test
    [Tags]    DEBUG


*** Keywords ***
Provided precondition
    Setup system under test
