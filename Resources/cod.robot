*** Settings ***
Documentation    Keywords associated with testing customer purchase with COD payment method
Library     SeleniumLibrary

*** Keywords ***
Select COD payment option
    Sleep   3s
    Click Element   xpath=//*[@id="payment"]/ul/li[2]
