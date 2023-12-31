*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Chrome

*** Keywords ***
Open Browser To Login Page
    Set Selenium Speed    0.1s
     Open Browser    ${LOGIN URL}    ${BROWSER}    options=add_argument("--incognito")
#    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    SICANTIK

Login Admin Instansi
    Input Username    demo
    Input Password    Demo789*@#
    Submit Credentials
    Element Should Contain    xpath://*[@id="kt_header_user_menu_toggle"]/div[2]/span[1]    DEMO
    
Login Admin Pusat
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Element Should Contain    xpath://*[@id="kt_header_user_menu_toggle"]/div[2]/span[2]    Admin Utama

Login Pemohon
    Input Username    testingriko
    Input Password    Monyet123#
    Submit Credentials
    Wait Until Location Is    https://uji.sicantik.go.id/home

Login Jabatan Satu
    Input Username    riancahyadi
    Input Password    P@55word
    Submit Credentials
    Element Should Contain    xpath://*[@id="kt_header_user_menu_toggle"]/div[2]/span[1]    RIANCAHYADI

Login Pengguna Satu
    Input Username    pengguna_tte1
    Input Password    Testing123*@#
    Submit Credentials
    Wait Until Location Is    https://uji.sicantik.go.id/home

Input Username
    [Arguments]    ${username}
    Input Text    username    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password    ${password}

Submit Credentials
    Click Button    kt_sign_in_submit
    Sleep    5s
    # Wait Until Element Is Visible    xpath://*[@id="#kt_header_menu"]/div[1]/a/span[2]