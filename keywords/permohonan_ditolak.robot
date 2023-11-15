*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Keywords ***
Move to Permohonan ditolak
    Go To    https://uji.sicantik.go.id/daftar-izin-ditolak
    Wait Until Element Contains    xpath://*[@id="kt_content_container"]/div[1]/div/div[1]/h5    Permohonan Izin Ditolak
    Sleep    3s

Scroll Down
    Click Element    xpath://*[@id="kt_customers_table"]/tbody/tr[5]/td[4]
    FOR    ${counter}    IN RANGE    20
        Log    ${counter}
        Press Keys      None    ARROW_DOWN
        Sleep    0.5s
    END