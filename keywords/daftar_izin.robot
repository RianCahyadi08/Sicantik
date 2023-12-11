*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Move To Daftar Izin
    Go To    https://uji.sicantik.go.id/daftar-izin
    Wait Until Location Is    https://uji.sicantik.go.id/daftar-izin

Click Btn Filter
    Wait Until Element Is Visible    //*[@class="btn btn-white border collapsed"]
    Click Button    //*[@class="btn btn-white border collapsed"]
    Wait Until Element Is Visible    //*[@class="form-label mb-3"]

Input No Permohonan
    Wait Until Element Is Visible    //*[@placeholder="No. Permohonan"]
    [Arguments]     ${param}
    Input Text    //*[@placeholder="No. Permohonan"]    ${param}
    Textfield Value Should Be    //*[@placeholder="No. Permohonan"]    ${param}

Click Btn Tampilkan Hasil
    Wait Until Element Is Visible    //*[@class="btn btn-primary me-2"]
    Click Button    default:Tampilkan hasil
    Sleep    3s

Detail
    Wait Until Element Is Visible    //*[@class="btn btn-sm btn-icon btn-bg-transparent btn-active-color-primary"]
    Click Element    //*[@class="btn btn-sm btn-icon btn-bg-transparent btn-active-color-primary"]
    Wait Until Page Contains    Jenis Permohonan

Click Alur Proses Permohonan
    Wait Until Element Is Visible    //*[@class="fas fa-bars"]
    Click Element    //*[@class="fas fa-bars"]
    Sleep    1s

Unduh Permohonan Masih Berlaku
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div[4]/div[2]/div/div[2]/ul[9]/li/div/span/a/h5
    Click Element    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div[4]/div[2]/div/div[2]/ul[9]/li/div/span/a/h5
    Sleep    3s

Unduh Permohonan Tidak berlaku
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div[4]/div[2]/div/div[2]/ul[8]/li/div/span/a/h5
    Click Element    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div[4]/div[2]/div/div[2]/ul[8]/li/div/span/a/h5
    Sleep    3s

Scroll Down
    Click Element    xpath://*[@id="kt_customers_table"]/tbody/tr[3]/td[5]
    FOR    ${counter}    IN RANGE    20
        Log    ${counter}
        Press Keys      None    ARROW_DOWN
        Sleep    0.5s
    END