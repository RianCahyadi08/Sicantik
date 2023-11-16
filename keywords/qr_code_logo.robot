*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Keywords ***
Move To Proses Permohonan
    Go To    https://uji.sicantik.go.id/proses-pengajuan
    Wait Until Element Contains    xpath://*[@id="kt_content_container"]/div[1]/div/div[1]/h5    Proses Pengajuan
    Sleep    3s

Click Button Filter
    Click Button    xpath://*[@id="kt_content_container"]/div[1]/div/div[2]/div/div[1]/button
    Sleep    0.5s

Input No Permohonan
    Click Element    xpath://*[@id="collapseBtnFilter"]/div/div[1]/div[1]/label
    [Arguments]     ${noPermohonan}
    Press Keys      None    TAB
    Press Keys      None    ${noPermohonan}

Click Button Tampilkan Hasil
    Click Button    default:Tampilkan hasil
    Sleep    3s

Click Alur Proses Permohonan
    Click Element    css:i.fa-list-alt
    Wait Until Element Is Enabled    xpath://*[@id="modalProsesPermohonan"]/div[2]/div/div[1]/h5

Click Tanda Tangan Sertifikat
    Click Element    xpath://*[@id="modalProsesPermohonan"]/div[2]/div/div[2]/ul[5]
    FOR    ${counter}    IN RANGE    10
        Log    ${counter}
        Press Keys      None    ARROW_DOWN
        Sleep    0.5s
    END
    Click Element    xpath://*[@id="modalProsesPermohonan"]/div[2]/div/div[2]/ul[10]/li/div/span/a/h5
    Wait Until Element Contains    xpath://*[@id="kt_content_container"]/div[1]/div[2]/div/h5[1]    Sign Report
    Sleep    2s

Click Preview Dokumen
    Execute Javascript      window.scrollTo(0, 1000)
    Sleep    1s
    Click Button    default:Preview Dokumen
    Wait Until Element Is Enabled    css:h4.text-white
    Sleep    3s