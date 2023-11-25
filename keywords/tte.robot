*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Move To TTE
    Go To    https://uji.sicantik.go.id/signature-tte
    Sleep    3s

Tab Sudah Ditanda Tangan
    Click Element    css:a[href="#kt_tab_pane_2"]
    Wait Until Element Is Enabled    xpath://*[@id="kt_tab_pane_2"]/div/div[1]/div/div[2]/div/div[1]/button
    Sleep    3s

Click Btn Filter
    Click Button    xpath://*[@id="kt_tab_pane_2"]/div/div[1]/div/div[2]/div/div[1]/button
    Sleep    0.5

Input No Permohonan
    Press Keys          None    TAB
    Press Keys          None    TAB
    [Arguments]         ${noPermohonan}
    Press Keys          None    ${noPermohonan}

Click Btn Tampilkan Hasil
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div/div[2]/div/div[1]/div/div[2]/div/div[3]/div/div/div[2]/div/button[1]
    Click Button    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div/div[2]/div/div[1]/div/div[2]/div/div[3]/div/div/div[2]/div/button[1]
    Sleep   10s

Click Icon Alur Proses Permohonan
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div/div[2]/div/div[1]/div/div[3]/div/div/table/tbody/tr/td[11]/i
    Click Element    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div/div[2]/div/div[1]/div/div[3]/div/div/table/tbody/tr/td[11]/i
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div/div[2]/div/div[3]/div[2]/div/div[1]/h5

Click Tanda Terima Berkas TTE
    Click Element    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div/div[2]/div/div[3]/div[2]/div/div[2]/ul[3]/li/div/strong/a/h3
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div[1]/div[2]/div/h5[1]

Click Btn Cancel Sign
    Click Button    default:Cancel Sign
#    Wait Until Element Is Visible    xpath://*[@id="kt_body"]/div[5]/div/div[1]/div[5]

Scroll Down
    Click Element    xpath://*[@id="kt_customers_table"]/tbody/tr[5]/td[5]
    FOR    ${counter}    IN RANGE    20
        Log    ${counter}
        Press Keys      None    ARROW_DOWN
        Sleep    0.5s
    END