*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Library    XML

*** Keywords ***
Move To Web Service Eksternal
    Go To    https://uji.sicantik.go.id/service-eksternal
    Wait Until Element Contains    xpath://*[@id="kt_content_container"]/div/div/div[1]/h5      Daftar Service Eksternal
    Element Should Contain    xpath://*[@id="kt_content_container"]/div/div/div[1]/h5           Daftar Service Eksternal

Click Icon Eye
    Wait Until Element Is Enabled    css:i.fa-eye
    Click Element    css:i.fa-eye
    Element Should Contain    xpath://*[@id="kt_profile_details_view"]/div/div[1]/div/div/div/div[1]/span       Web Service Eksternal

Input Search
    [Arguments]     ${search}
    Input Text    id:kt_filter_search    ${search}
    Sleep    3s

Delete Web Service Eksternal
    Wait Until Element Is Enabled    css:i.fa-trash
    Click Element    css:i.fa-trash
    Wait Until Element Contains    xpath://*[@id="swal2-title"]    Apakah Anda Yakin Akan Menghapus Data Ini ?
    Click Button    default:Ya, Hapus
    Wait Until Element Contains    xpath://*[@id="swal2-content"]    Data Sudah Berhasil Terhapus.
    Element Should Contain    xpath://*[@id="swal2-content"]    Data Sudah Berhasil Terhapus.
    
Move To Web Service Eksternal Add
    Go To    https://uji.sicantik.go.id/service-eksternal/add
    Wait Until Element Contains    xpath://*[@id="kt_profile_details_view"]/div/div[1]/div/div/div/div[1]/span    Web Service Eksternal

Input Nama
    Clear Element Text    name:namawebservice
    [Arguments]     ${nama}
    Input Text    name:namawebservice    ${nama}

Select Tipe Web Service
    [Arguments]     ${tipeWebService}
    Click Element    name:tipeService
    Press Keys      None    ${tipeWebService}
    Sleep    0.5s
    Press Keys      None    ARROW_DOWN
    Press Keys      None    ENTER

Select Tipe Integrasi
    [Arguments]     ${tipeIntegrasi}
    Click Element    name:tipe_integrasi
    Press Keys      None    ${tipeIntegrasi}
    Sleep    0.5s
    Press Keys      None    ARROW_DOWN
    Press Keys      None    ENTER


Select Tipe Otentikasi
    [Arguments]     ${otentifikasi}
    Wait Until Element Is Visible    name:otentikasi
    Click Element    name:otentikasi
    Press Keys      None    ${otentifikasi}
    Sleep    0.5s
    Press Keys      None    ARROW_DOWN
    Press Keys      None    ENTER

Input Base Url
    Clear Element Text    name:baseUrl
    [Arguments]     ${baseUrl}
    Input Text    name:baseUrl    ${baseUrl}
    
Input Username
    Clear Element Text    name:username
    [Arguments]     ${username}
    Input Text    name:username    ${username}

Input Password
    Clear Element Text    name:password
    [Arguments]     ${password}
    Input Text    name:password    ${password}

Input Deskripsi
    Clear Element Text    name:deskripsi
    [Arguments]     ${deskripsi}
    Input Text    name:deskripsi    ${deskripsi}

Click Button Simpan
    Click Button    default:Simpan
    Wait Until Element Is Visible    class:Vue-Toastification__toast-body
    Element Should Contain    class:Vue-Toastification__toast-body    Service eksternal berhasil disimpan.

Click Icon Pencil
    Wait Until Element Is Visible    css:i.fa-edit
    Click Element    css:i.fa-edit
    Wait Until Element Is Visible    xpath://*[@id="kt_profile_details_view"]/div/div[1]/div/div/div/div[1]/span
    Element Should Contain    xpath://*[@id="kt_profile_details_view"]/div/div[1]/div/div/div/div[1]/span    Web Service Eksternal