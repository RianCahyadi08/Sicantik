*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
Click Icon Notification
    Sleep    3s
    Click Element    css:i.fa-bell
    Element Should Contain    xpath://*[@id="kt_header"]/div/div[3]/div[2]/div[2]/div[1]/div[2]/div[1]/div/h3    Notifikasi

Move To Notification
    Go To    https://uji.sicantik.go.id/notifikasi
#    Element Should Contain    xpath://*[@id="kt_content_container"]/div/div/div[1]/h5    Daftar Jenis Izin
    Wait Until Location Is    https://uji.sicantik.go.id/notifikasi

Click Button Filter
    Wait Until Element Is Visible    css:button.btn-white
    Click Button    css:button.btn-white
    Wait Until Element Is Visible    xpath://*[@id="collapseBtnFilter"]/div/div[1]/div[1]/label

Search
    Wait Until Element Is Visible    //*[@placeholder="Jenis Izin"]
    [Arguments]     ${param}
    Input Text    //*[@placeholder="Jenis Izin"]    ${param}
    Sleep    3s

Input Jenis Izin
    Wait Until Element Is Visible    xpath://*[@id="collapseBtnFilter"]/div/div[1]/div[1]/label
    Click Element    xpath://*[@id="collapseBtnFilter"]/div/div[1]/div[1]/label
    [Arguments]     ${jenisIzin}
    Press Keys      None    TAB
    Press Keys      None    ${jenisIzin}

Click Button Tampilkan Hasil
    Click Button    default:Tampilkan hasil
    Sleep    2s

Click Icon Detail
    Wait Until Element Is Visible    css:i.fa-eye
    Click Element    css:i.fa-eye
    Element Should Contain    xpath://*[@id="kt_content_container"]/div[1]/div/div[1]/div/div/div/div[1]/a    Notifikasi

Click Icon Pencil
    Wait Until Element Is Visible    css:i.fa-edit
    Click Element    css:i.fa-edit
    Wait Until Element Is Visible    xpath://*[@id="kt_content_container"]/div[1]/div/div[1]/div/div/div/div[1]/a
    Element Should Contain    xpath://*[@id="kt_content_container"]/div[1]/div/div[1]/div/div/div/div[1]/a       Notifikasi

Select Tipe
    Wait Until Element Is Visible    name:tipe
    Click Element    name:tipe
    [Arguments]     ${tipe}
    Press Keys      None    ${tipe}
    Press Keys      None    ENTER

Select Penerima
    Wait Until Element Is Visible    name:tipepenerima
    Click Element    name:tipepenerima
    [Arguments]     ${tipePenerima}
    Press Keys      None    ${tipePenerima}
    Press Keys      None    ENTER

Click Modal Edit Pesan
    Wait Until Element Is Visible    xpath://*[@id="kt_customers_table"]/tbody/tr/td[4]/span/div/button
    Click Element    xpath://*[@id="kt_customers_table"]/tbody/tr/td[4]/span/div/button
    Wait Until Element Is Visible    css:textarea[name=pesan]

Input Pesan
    Wait Until Element Is Visible    css:textarea[name=pesan]
    Clear Element Text    css:textarea[name=pesan]
    [Arguments]     ${pesan}
    Input Text    css:textarea[name=pesan]    ${pesan}
    
Click Button Simpan In Modal
#    Wait Until Element Is Visible    xpath://*[@id="pills-288483"]/div[2]/div/div/footer/span/button[2]
#    Click Button    xpath://*[@id="pills-288483"]/div[2]/div/div/footer/span/button[2]
    Wait Until Element Is Visible    css:button.el-button--primary
    Click Button    css:button.el-button--primary
    Sleep    1s
    
Click Button Simpan
    Click Button    xpath://*[@id="kt_content_container"]/div[3]/div/div/div/div/button
    Wait Until Element Is Visible    class:Vue-Toastification__toast-body

Click Tab Notification Informasi
    Wait Until Element Is Visible    //*[@class="nav-link text-white opacity-75 opacity-state-100 pb-4"]
    Click Element    //*[@href="#kt_topbar_notifications_2"]

Click Lihat Semua Pengumuman
    Wait Until Element Is Visible    //*[@class="nav-link text-white opacity-75 opacity-state-100 pb-4"]
    Click Element    //*[@href="/list-notikasi-user"]
    
Click Lihat Semua Informasi
    Wait Until Element Is Enabled    xpath:/html/body/div[1]/div[2]/div[2]/div[1]/div/div[3]/div[2]/div[2]/div[1]/div[2]/div[2]/div[2]/div[2]/a
    Click Element    xpath:/html/body/div[1]/div[2]/div[2]/div[1]/div/div[3]/div[2]/div[2]/div[1]/div[2]/div[2]/div[2]/div[2]/a

Click Tab Informasi
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/ul/li[2]/a
    Click Link    //*[@href="#kt_tab_pane_2"]
    
Click Icon Eye Notification
    Wait Until Element Is Visible    //*[@class="fas fa-eye text-info me-3 pe-auto cursor-pointer el-tooltip__trigger el-tooltip__trigger"]
    Click Element    //*[@class="fas fa-eye text-info me-3 pe-auto cursor-pointer el-tooltip__trigger el-tooltip__trigger"]
    Sleep    3s