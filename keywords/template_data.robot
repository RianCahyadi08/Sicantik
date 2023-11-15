** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource          login.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Chrome

*** Keywords ***
Move To Template Data
    Go To    https://uji.sicantik.go.id/template-data
#    Wait Until Element Contains    xpath://*[@id="kt_content_container"]/div/div/div[1]/h5    Daftar Template Data
    Wait Until Element Is Visible    xpath://*[@id="kt_content_container"]/div/div/div[1]/h5
    Wait Until Element Is Visible    xpath://*[@id="kt_customers_table"]/tbody/tr[4]/td[3]
    Sleep    3s
    
Click Button Filter
    Click Element    xpath://*[@id="kt_content_container"]/div/div/div[2]/div/div[1]/button
    Wait Until Element Contains    xpath://*[@id="collapseBtnFilter"]/div/div[1]/div[1]/label    ID Template Data

Input ID Template Data
    Click Element    xpath://*[@id="collapseBtnFilter"]/div/div[1]/div[1]/label
    Press Keys          None    TAB
    [Arguments]         ${id}
    Press Keys          None    ${id}

Input Nama Template Data Filter
    Click Element    xpath://*[@id="collapseBtnFilter"]/div/div[1]/div[2]/label
    Press Keys          None    TAB
    [Arguments]         ${namaTemplate}
    Press Keys          None    ${namaTemplate}

Click Button Tampilkan Hasil
    Click Button    default:Tampilkan hasil
    Sleep    1s

Move To Add Template Data
    Go To    https://uji.sicantik.go.id/template-data/add
    Element Should Contain    xpath://*[@id="kt_content_container"]/div[1]/form/div/div[1]/div/div/div[1]/div[1]/a      Tambah Template data

Input Nama Template Data
    Wait Until Element Is Visible    xpath://*[@id="kt_content_container"]/div[1]/form/div/div[3]/div[1]/label
    Click Element    xpath://*[@id="kt_content_container"]/div[1]/form/div/div[3]/div[1]/label
    Press Keys      None    TAB
    [Arguments]     ${namaTemplateData}
    Press Keys      None    ${namaTemplateData}

Select Tipe Keluaran
    Click Element    xpath://*[@id="kt_content_container"]/div[1]/form/div/div[3]/div[2]/label
    Press Keys      None    TAB
    [Arguments]     ${tipeKeluaran}
    Sleep    0.5s
    Press Keys      None    ${tipeKeluaran}
    Press Keys      None    ENTER

Upload Template
    [Arguments]     ${file}
    Choose File     name:file    ${file}

Click Button Tambah Kelompok Data
    Click Button    default:Tambah Kelompok Data
    Sleep    0.5s

Input Label Kelompok
    [Arguments]     ${labelKelompok}
    Input Text    name:label_kelompok    ${labelKelompok}

Select Tipe
    [Arguments]     ${tipe}
    Click Element    name:tipe
#    Press Keys      None    TAB
    Press Keys      None    ${tipe}
    Sleep    0.5s
    Press Keys      None    ENTER

Select Jenis Sumber
    [Arguments]     ${jenisSumber}
    Click Element    name:jenis_sumber
    Press Keys      None    ${jenisSumber}
    Sleep    0.5s
    Press Keys      None    ENTER

Input Query SQL
    Wait Until Element Is Enabled    css:i.fa-book
    Click Element    css:i.fa-book
    Element Should Contain    xpath://*[@id="modalQuerySql"]/div/div/div[1]/h5    QUERY SQL
    Press Keys      None    TAB
    [Arguments]     ${sql}
    Press Keys      None    ${sql}
    Wait Until Element Is Enabled    xpath://*[@id="modalQuerySql"]/div/div/div[3]/button[2]
    Click Button    xpath://*[@id="modalQuerySql"]/div/div/div[3]/button[2]
    Sleep    1s

Click Icon Test Query Sql
    Wait Until Element Is Enabled    css:i.fa-wrench
    Click Element    css:i.fa-wrench
    Element Should Contain    xpath://*[@id="modalTestQuerySql"]/div/div/div[1]/h5    TEST QUERY SQL

Input Key Id
    [Arguments]     ${keyId}
    Input Text    name:key_id    ${keyId}
    
Input Unit Id
    [Arguments]     ${unitId}
    Input Text    name:unit_id    ${unitId}

Input Instansi Id
    [Arguments]     ${instansiId}
    Input Text    name:instansi_id    ${instansiId}

Input Custom Variable
    Press Keys      None    TAB
    [Arguments]     ${customVariable}
    Press Keys      None    ${customVariable}
    Press Keys      None    ESC

Click Button Simpan
    Click Button    default:Simpan
    Element Should Contain    xpath://*[@id="swal2-content"]    Template data berhasil disimpan.

Click Icon Eye
    Wait Until Element Is Visible    css:i.fa-eye
    Click Element    css:i.fa-eye
    Element Should Contain    xpath://*[@id="kt_content_container"]/div[1]/div/div[1]/div/div/div[1]/div/div[1]/a    Detail Template data

Duplicate Template Data
    Wait Until Element Is Visible    css:i.fa-file
    Click Element       css:i.fa-file
    Click Button        default:Duplikasi

Delete Template Data
    Wait Until Element Is Visible    css:i.fa-trash-alt
    Click Element       css:i.fa-trash-alt
    Click Button        default:Ya, Hapus

Click Icon Pencil
    Wait Until Element Is Visible    css:i.fa-edit
    Click Element    css:i.fa-edit
    Element Should Contain    xpath://*[@id="kt_content_container"]/div[1]/form/div/div[1]/div/div/div[1]/div[1]/a      Ubah Template data

Scroll Down
    Click Element    xpath://*[@id="kt_customers_table"]/tbody/tr[8]/td[4]
    FOR    ${counter}    IN RANGE    20
        Log    ${counter}
        Press Keys      None    ARROW_DOWN
        Sleep    0.5s
    END