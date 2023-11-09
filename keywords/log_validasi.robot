*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Move To Log Validasi Module
    Click Element    xpath://*[@id="#kt_header_menu"]/div[9]/span/span[2]
    Sleep    0.5s
    Click Element    xpath://*[@id="#kt_header_menu"]/div[9]/div/div[1]/a/span[2]
    Sleep    0.5s
    Wait Until Element Is Visible    xpath://*[@id="kt_profile_details_view"]/div/form/div[1]/h5
    Element Should Contain    xpath://*[@id="kt_profile_details_view"]/div/form/div[1]/h5    LOG VALIDASI

Input Search
    [Arguments]     ${search}
    Input Text    css:input[type=text]    ${search}
    Sleep    3s