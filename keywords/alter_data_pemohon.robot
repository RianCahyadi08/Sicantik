*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Move To Alter Data Pemohon
    Go To    https://uji.sicantik.go.id/pemohon/alter
    Wait Until Element Contains    xpath://*[@id="kt_content_container"]/div/div/div[1]/h5    Alter Data Pemohon
    Sleep    3s

Scroll Down
    Click Element    xpath://*[@id="kt_customers_table"]/tbody/tr[8]/td[5]
    FOR    ${counter}    IN RANGE    20
        Log    ${counter}
        Press Keys      None    ARROW_DOWN
        Sleep    0.5s
    END