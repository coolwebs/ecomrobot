*** Settings ***
Documentation    Keywords associated with adding multiple product SKUs to cart
Library     SeleniumLibrary

*** Keywords ***
# go in and add multiple products to the cart
Add smartphone to cart
    Mouse Over   xpath=//*[@id="menu-item-79"]/a
    Click Link  xpath=//*[@id="menu-item-80"]/a
    Wait Until Page Contains    Samsung
    Click Link  xpath=//*[@id="wc-column-container"]/ul/li[4]/a[2]

Add phone case to cart
    Mouse Over   xpath=//*[@id="menu-item-85"]/a
    Click Link  xpath=//*[@id="menu-item-86"]/a
    Wait Until Page Contains    Phone cases
    Click Link  xpath=//*[@id="wc-column-container"]/ul/li/a[2]

Add beats audio to cart
    Mouse Over   xpath=//*[@id="menu-item-124"]/a
    Click Link  xpath=//*[@id="menu-item-125"]/a
    Wait Until Page Contains    Beats
    Click Link  xpath=//*[@id="wc-column-container"]/ul/li[2]/a[2]

Add samsung smartwatch to cart
    Mouse Over   xpath=//*[@id="menu-item-82"]/a
    Click Link  xpath=//*[@id="menu-item-84"]/a
    Wait Until Page Contains    Samsung
    Click Link  xpath=//*[@id="wc-column-container"]/ul/li/a[2]
