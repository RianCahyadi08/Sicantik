*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Move To Log TTE Module
    Go To    https://uji.sicantik.go.id/log-tte
    Wait Until Element Is Visible    xpath://*[@id="kt_content_container"]/div/div/div[1]/h5
    Element Should Contain    xpath://*[@id="kt_content_container"]/div/div/div[1]/h5    Log TTE

Click Button Filter
    Wait Until Element Is Visible    css:button.btn-white
    Click Element    css:button.btn-white
    Sleep    1s

Input No Permohonan
    [Arguments]     ${noPermohonan}
    Click Element    xpath://*[@id="collapseBtnFilter"]/div/div[1]/div[1]/label
    Press Keys      None    TAB
    Press Keys      None    ${noPermohonan}
    
Click Button Tampilkan Hasil
    Wait Until Element Is Visible    css:span.fs-6
    Click Button    default:Tampilkan hasil
    Sleep    3s

Input Search
    [Arguments]     ${search}
    Input Text    id:kt_filter_search    ${search}
    Sleep    3s