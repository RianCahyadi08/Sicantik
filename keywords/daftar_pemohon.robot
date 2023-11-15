*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Move To Daftar Pemohon
    Go To    https://uji.sicantik.go.id/pemohon
    Wait Until Element Is Enabled    xpath://*[@id="kt_content_container"]/div/div/div[1]/h5
    Wait Until Element Contains    xpath://*[@id="kt_content_container"]/div/div/div[1]/h5     Daftar Pemohon
    Sleep    3s

Scroll Down
    Click Element    xpath://*[@id="kt_customers_table"]/tbody/tr[7]/td[4]
    FOR    ${counter}    IN RANGE    20
        Log    ${counter}
        Press Keys      None    ARROW_DOWN
        Sleep    0.5s
    END