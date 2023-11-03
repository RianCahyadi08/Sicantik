*** Settings ***
Documentation         Simple example using SeleniumLibrary.
Library               SeleniumLibrary
Resource              keywords/login.robot
Resource              keywords/forgot_password.robot

*** Variables ***
${LOGIN URL}      https://uji.sicantik.go.id/sign-in
${BROWSER}        Chrome


*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    admegov
    Input Password    Admegov789*@#
    Submit Credentials
    # Welcome Page Should Be Open
    [Teardown]    Close Browser

Forgot Password
    Open Browser To Login Page
    Move To Forgot Password Page
    Input Email    email@mailinator.com
    Submit Forgot Password
    [Teardown]    Close Browser