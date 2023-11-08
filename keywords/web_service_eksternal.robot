*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Move To Web Service Eksternal
    Go To    https://uji.sicantik.go.id/service-eksternal
    Element Should Contain    xpath://*[@id="kt_content_container"]/div/div/div[1]/h5    Daftar Service Eksternal

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