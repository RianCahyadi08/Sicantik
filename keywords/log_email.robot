*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Move To Log Email Module
    Go To    https://uji.sicantik.go.id/log-sender-email
    Wait Until Element Is Visible    xpath://*[@id="kt_content_container"]/div/div/div[1]/h5
    Element Should Contain    xpath://*[@id="kt_content_container"]/div/div/div[1]/h5    Log Sender Email

Input Search
    [Arguments]     ${search}
    Input Text    id:kt_filter_search    ${search}
    Sleep    3s

Input Email
    [Arguments]     ${email}
    Input Text    name:email    ${email}

Select Server Port
    [Arguments]     ${port}
    Click Element    name:serverport
    Press Keys      None    ${port}
    Press Keys      None    ARROW_DOWN
    Press Keys      None    ENTER

Click Button Kirim
    Wait Until Element Is Visible    css:button[type=submit]
    Click Button    default:Kirim