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
    
Click Tanda Terima Berkas TTE
    Click Element    xpath://*[@id="modalProsesPermohonan"]/div[2]/div/div[2]/ul[3]/li/div/strong/a/h3
    Wait Until Element Is Enabled    xpath://*[@id="kt_content_container"]/div[1]/div[2]/div/div[4]/button[2]
    Sleep    3s

Click Button Cancel Sign
    Execute Javascript      window.scrollTo(0, 1000)
    Sleep    1s
    Click Element    xpath://*[@id="kt_content_container"]/div[1]/div[2]/div/div[4]/button[2]
    Wait Until Element Contains    xpath://*[@id="swal2-content"]    Tanda tangan berhasil dibatalkan
#    Wait Until Element Is Visible    css:div.swal2-html-container