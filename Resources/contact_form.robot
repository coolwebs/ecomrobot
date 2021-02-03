*** Settings ***
Documentation    Keywords associated with adding multiple product SKUs to cart
Library     SeleniumLibrary

*** Variables ***
${CONTACT_NAME}   John Smith
${CONTACT_EMAIL}    john.s23@outlook.com
${CONTACT_MSG}  Hello there. I would like to make an enquiry about the product xxx from your store. Is it still on for the special price?

*** Keywords ***
Complete contact form
    Click Element   class=contact-page
    Wait Until Page Contains    Message
    Input Text    nf-field-1   ${CONTACT_NAME}
    Input Text    nf-field-2   ${CONTACT_EMAIL}
    Input Text    nf-field-3   ${CONTACT_MSG}
    Click Element  id=nf-field-4

