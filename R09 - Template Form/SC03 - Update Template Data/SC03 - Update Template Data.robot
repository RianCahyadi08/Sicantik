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
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Move To Template Form
    Click Icon Edit
    Click Button Simpan Data
    Capture Page Screenshot

TC02 - Update Template Form (Tipe Form) dengan Otomatis Update
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Move To Template Form
    Click Icon Edit
    Click Button Simpan Data
    Capture Page Screenshot

TC03 - Update Template Form (Tipe Table)
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Move To Template Form
    Click Icon Edit
    Click Button Simpan Data
    Capture Page Screenshot

TC04 - Update Template Form (Tipe Tabel Grid)
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Move To Template Form
    Click Icon Edit
    Click Button Simpan Data
    Capture Page Screenshot

TC05 - Update Template Form (Tipe Tabel Statik)
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Move To Template Form
    Click Icon Edit
    Click Button Simpan Data
    Capture Page Screenshot

TC06 - Ubah Template Form (Tipe Map)
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    Move To Template Form
    Click Icon Edit
    Click Button Simpan Data
    Capture Page Screenshot