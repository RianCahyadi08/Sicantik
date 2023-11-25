*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Move To TTE
    Go To    https://uji.sicantik.go.id/signature-tte
    Sleep    3s

Scroll Down
    Click Element    xpath://*[@id="kt_customers_table"]/tbody/tr[5]/td[5]
    FOR    ${counter}    IN RANGE    20
        Log    ${counter}
        Press Keys      None    ARROW_DOWN
        Sleep    0.5s
    END