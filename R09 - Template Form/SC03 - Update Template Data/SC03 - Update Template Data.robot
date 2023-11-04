*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource          ../../keywords/login.robot
Resource          ../../keywords/template_form.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Chrome

*** Test Cases ***
TC01 - Update Template Form (Tipe Form) dengan Tidak Otomatis Update
    [Documentation]     SC03 - Update Template Data
    [Tags]  TC01 - Update Template Form (Tipe Form) dengan Tidak Otomatis Update
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Move To Template Form
    Click Icon Edit
    Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Update Template Form (Tipe Form) dengan Otomatis Update
    [Documentation]     SC03 - Update Template Data
    [Tags]  TC02 - Update Template Form (Tipe Form) dengan Otomatis Update
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Move To Template Form
    Click Icon Edit
    Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - Update Template Form (Tipe Table)
    [Documentation]     SC03 - Update Template Data
    [Tags]  TC03 - Update Template Form (Tipe Table)
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Move To Template Form
    Click Icon Edit
    Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC04 - Update Template Form (Tipe Tabel Grid)
    [Documentation]     SC03 - Update Template Data
    [Tags]  TC04 - Update Template Form (Tipe Tabel Grid)
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Move To Template Form
    Click Icon Edit
    Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC05 - Update Template Form (Tipe Tabel Statik)
    [Documentation]     SC03 - Update Template Data
    [Tags]  TC05 - Update Template Form (Tipe Tabel Statik)
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Move To Template Form
    Click Icon Edit
    Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC06 - Ubah Template Form (Tipe Map)
    [Documentation]     SC03 - Update Template Data
    [Tags]  TC06 - Ubah Template Form (Tipe Map)
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Move To Template Form
    Click Icon Edit
    Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser