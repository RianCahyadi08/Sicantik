*** Settings ***
Documentation       SC02 - Create Data Nomenklatur Unit
Library             SeleniumLibrary
Resource            ../../../../keywords/login.robot
Resource            ../../../../keywords/nomenklatur.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - Create Data Nomenklatur Unit
    [Documentation]     SC02 - Create Data Nomenklatur Unit
    [Tags]      TC01 - Create Data Nomenklatur Unit
    login.Open Browser To Login Page
    login.Login Admin Pusat
    nomenklatur.Move To Nomenklatur
    nomenklatur.Click Btn Tambah
    nomenklatur.Input Id Unit    1
    nomenklatur.Input Nama Singkatan    namaSingkatanRian
    nomenklatur.Input Nama Uraian    namaUraianRian
    nomenklatur.Input Nama Daerah    namaDaerahRian
    nomenklatur.Input Alamat Unit    alamatUnitRian
    nomenklatur.Click Btn Simpan
    Sleep       2s
    Capture Page Screenshot
    [Teardown]    Close Browser