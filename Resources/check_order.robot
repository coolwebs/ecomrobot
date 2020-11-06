*** Settings ***
Documentation    Keywords associated with customer logging into site to check on their order
Library     SeleniumLibrary

*** Variables ***
${USERNAME}     coolwebsbackups@gmail.com
${PASSWORD}     OS%J%G8g

*** Keywords ***
Customer login to account
    Click Link   xpath=//*[@id="menu-item-129"]/a
    Wait Until Page Contains    My account
    Input Text    username    ${USERNAME}
    Input Text    password    ${PASSWORD}
    Click Button    class=woocommerce-form-login__submit

Customer check order
    Wait Until Page Contains    My account
    Click Link  xpath=//*[@id="post-8"]/div/div/div/nav/ul/li[2]/a
    Wait Until Page Contains    Orders
    Click Link  xpath=//*[@id="post-8"]/div/div/div/nav/ul/li[4]/a
    Wait Until Page Contains    Addresses
    Click Link  xpath=//*[@id="post-8"]/div/div/div/nav/ul/li[5]/a
    Wait Until Page Contains    Payment methods

Cancel order
    Click Link  xpath=//*[@id="post-8"]/div/div/div/nav/ul/li[2]/a
    Wait Until Page Contains    Orders
    Click Link  class=wc-cancel-order

Customer logout
    Click Link  link=Logout
