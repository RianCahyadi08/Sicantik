*** Settings ***
Documentation       SC03 - View Log Email
Library             SeleniumLibrary
Resource            ../../../keywords/login.robot
Resource            ../../../keywords/log_email.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Firefox

*** Test Cases ***
TC01 - View Log Email
    [Documentation]     SC03 - View Log Email
    [Tags]      TC01 - View Log Email
    Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    log_email.Move To Log Email Module
    Sleep       1s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC02 - Send Email
    [Documentation]     SC03 - View Log Email
    [Tags]      TC02 - Send Email
    Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    log_email.Move To Log Email Module
    log_email.Input Email    rian.cahyadi@mailinator.com
    log_email.Select Server Port    30
    log_email.Click Button Kirim
    Sleep       1s
    Capture Page Screenshot
    [Teardown]    Close Browser

TC03 - Search Data Log Email
    [Documentation]     SC03 - View Log Email
    [Tags]      TC03 - Search Data Log Email
    Open Browser To Login Page
    login.Input Username    admegov
    login.Input Password    Admegov789*@#
    login.Submit Credentials
    log_email.Move To Log Email Module
    log_email.Input Search    supardi081974@gmail.com
    Sleep       1s
    Capture Page Screenshot
    [Teardown]    Close Browser