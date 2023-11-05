*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource          ../../../keywords/login.robot
Resource          ../../../keywords/template_form.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Chrome

*** Test Cases ***
TC01 - Update Template Form (Tipe Form) dengan Tidak Otomatis Update
    [Documentation]     SC03 - Update Template Data
    [Tags]  TC01 - Update Template Form (Tipe Form) dengan Tidak Otomatis Update
    login.Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    template_form.Move To Template Form
    template_form.Click Icon Edit
    template_form.Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Update Template Form (Tipe Form) dengan Otomatis Update
    [Documentation]     SC03 - Update Template Data
    [Tags]  TC02 - Update Template Form (Tipe Form) dengan Otomatis Update
    login.Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    template_form.Move To Template Form
    template_form.Click Icon Edit
    template_form.Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - Update Template Form (Tipe Table)
    [Documentation]     SC03 - Update Template Data
    [Tags]  TC03 - Update Template Form (Tipe Table)
    login.Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    template_form.Move To Template Form
    template_form.Click Icon Edit
    template_form.Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC04 - Update Template Form (Tipe Tabel Grid)
    [Documentation]     SC03 - Update Template Data
    [Tags]  TC04 - Update Template Form (Tipe Tabel Grid)
    login.Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    template_form.Move To Template Form
    template_form.Click Icon Edit
    template_form.Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC05 - Update Template Form (Tipe Tabel Statik)
    [Documentation]     SC03 - Update Template Data
    [Tags]  TC05 - Update Template Form (Tipe Tabel Statik)
    login.Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    template_form.Move To Template Form
    template_form.Click Icon Edit
    template_form.Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC06 - Ubah Template Form (Tipe Map)
    [Documentation]     SC03 - Update Template Data
    [Tags]  TC06 - Ubah Template Form (Tipe Map)
    login.Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    template_form.Move To Template Form
    template_form.Click Icon Edit
    template_form.Click Button Simpan Data
    Sleep   2s
    Capture Page Screenshot
    [Teardown]    Close Browser