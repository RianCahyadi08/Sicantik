*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Keywords ***
Click Icon Notification
    Sleep    3s
    Click Element    css:i.fa-bell
    Element Should Contain    xpath://*[@id="kt_header"]/div/div[3]/div[2]/div[2]/div[1]/div[2]/div[1]/div/h3    Notifikasi

Move To Notification
    Go To    https://uji.sicantik.go.id/notifikasi
    Element Should Contain    xpath://*[@id="kt_content_container"]/div/div/div[1]/h5    Daftar Jenis Izin

Click Icon Detail
    Wait Until Element Is Visible    css:i.fa-eye
    Click Element    css:i.fa-eye
    Element Should Contain    xpath://*[@id="kt_content_container"]/div[1]/div/div[1]/div/div/div/div[1]/a    Notifikasi