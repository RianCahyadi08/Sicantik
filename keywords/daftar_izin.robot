*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Move To Daftar Izin
    Go To    https://uji.sicantik.go.id/daftar-izin
    Wait Until Element Is Enabled    xpath://*[@id="kt_content_container"]/div[1]/div/div[1]/h5
    Wait Until Element Contains    xpath://*[@id="kt_content_container"]/div[1]/div/div[1]/h5     Daftar Izin
    Sleep    10s

Scroll Down
    Click Element    xpath://*[@id="kt_customers_table"]/tbody/tr[3]/td[5]
    FOR    ${counter}    IN RANGE    20
        Log    ${counter}
        Press Keys      None    ARROW_DOWN
        Sleep    0.5s
    END