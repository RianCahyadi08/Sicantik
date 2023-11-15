*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Move To Lapor Aduan
    Go To    https://uji.sicantik.go.id/aduan
    Wait Until Element Contains    xpath://*[@id="kt_profile_details_view"]/div/div[1]/h5    Lapor Aduan
    Sleep    3s

Scroll Down
    Click Element    xpath://*[@id="kt_customers_table"]/tbody/tr[6]/td[5]
    FOR    ${counter}    IN RANGE    20
        Log    ${counter}
        Press Keys      None    ARROW_DOWN
        Sleep    0.5s
    END