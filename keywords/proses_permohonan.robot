*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***
Move to Proses Permohonan
#    Click Element       xpath://*[@id="#kt_header_menu"]/div[7]/span/span[2]
#    Click Link          link:Proses Permohonan
    Go To    https://uji.sicantik.go.id/proses-pengajuan
    Wait Until Element Contains     tag:h5      Proses Pengajuan    None    None
    Sleep   3s

Click Button Filter
    Click Element       xpath://*[@id="kt_content_container"]/div[1]/div/div[2]/div/div[1]/button
    Wait Until Element Is Visible       class:form-label    None    None

Input No Permohonan
    Press Keys    None    TAB
    [Arguments]         ${noPermohonan}
    Press Keys    None    ${noPermohonan}

Click Button Tampilkan Hasil Proses Permohonan
    Click Element       xpath://*[@id="collapseBtnFilter"]/div/div[2]/div/button[1]

Click Icon Alur Proses Permohonan
    Click Element       class:fa-list-alt
    Wait Until Element Is Visible   class:modal-title

Click Menerima & Memeriksa Berkas
    Click Element       css:h3.text-primary
    # Click Element       css:h5.text-success
    # Click Element       xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div[2]/div[2]/div/div[2]/ul[2]/li/div/span/a/h5
    Wait Until Element Is Visible   xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div/div/div[1]/div[2]/form/div[9]/div[2]/button[2]

Verify Jenis Permohonan
    Page Should Contain Element      css:label.form-label         Jenis Permohonan *

Verify Instansi
    Page Should Contain Element      css:label.form-label         Instansi *

Verify Unit
    Page Should Contain Element      css:label.form-label         Unit *

Verify Jenis Izin
    Page Should Contain Element      css:label.form-label         Jenis Izin *

Click Button Selanjutnya
    Click Button        default:Selanjutnya

Verify Keterangan Lokasi
    Page Should Contain Element      css:label.form-label         Keterangan lokasi (bila ada)
# ===================
Verify Perseorangan
    Page Should Contain Element      css:label.form-label         PERSEORANGAN

Verify Badan Usaha
    Page Should Contain Element      css:label.form-label         BADAN USAHA
# ===============

Verify Nama Lengkap
    Page Should Contain Element      css:label.form-label         Nama Lengkap (Tanpa Gelar) *

Verify Tipe Identitas
    Page Should Contain Element      css:label.form-label         Tipe Identitas *

Verify No Identitas
    Page Should Contain Element      css:label.form-label         No. Identitas *

Verify NPWP
    Page Should Contain Element      css:label.form-label         No. NPWP *

Verify Jenis Kelamin
    Page Should Contain Element      css:label.form-label         Jenis Kelamin *

Verify Pekerjaan
    Page Should Contain Element      css:label.form-label         Pekerjaan *

Verify Tempat lahir
    Page Should Contain Element      css:label.form-label         Tampat Lahir (Kota) *

Verify Tanggal Lahir
    Page Should Contain Element      css:label.form-label         Tanggal Lahir *

Verify No Telp
    Page Should Contain Element      css:label.form-label         No. Telepon

Verify No Hp
    Page Should Contain Element      css:label.form-label         No. HP *

Verify Alamat Email
    Page Should Contain Element      css:label.form-label         Alamat Email

Verify Provinsi
    Page Should Contain Element      css:label.form-label         Provinsi

Verify Alamat Lengkap
    Page Should Contain Element      css:label.form-label         Alamat Lengkap *
# ======
Verify Jenis Perusahaan
    Page Should Contain Element      css:label.form-label         Jenis Perusahaan
# ====
Verify Jenis Proyek
    Page Should Contain Element      css:label.form-label         Jenis Proyek

Verify Target PAD
    Page Should Contain Element      css:label.form-label         Target PAD

Verify Nilai Investigasi
    Page Should Contain Element      css:label.form-label         Nilai Investasi

Verify Jumlah Tenaga Kerja
    Page Should Contain Element      css:label.form-label         Jumlah Tenaga Kerja

Click Button Proses Berikutnya
    Click Button        default:Proses Berikutnya

Scroll Down
    Click Element    xpath://*[@id="kt_customers_table"]/tbody/tr[3]/td[7]
    FOR    ${counter}    IN RANGE    20
        Log    ${counter}
        Press Keys      None    ARROW_DOWN
        Sleep    0.5s
    END