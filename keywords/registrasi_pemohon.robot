*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Move To Registrasi Pemohon
    Go To    https://uji.sicantik.go.id/pemohon-register
    Wait Until Element Is Enabled    xpath://*[@id="kt_profile_details_view"]/div/div[1]/h5
    Wait Until Element Contains    xpath://*[@id="kt_profile_details_view"]/div/div[1]/h5    Registrasi Pemohon
    Sleep    3s

Scroll Down
    Click Element    xpath://*[@id="kt_customers_table"]/tbody/tr[8]/td[3]
    FOR    ${counter}    IN RANGE    10
        Log    ${counter}
        Press Keys      None    ARROW_DOWN
        Sleep    0.5s
    END