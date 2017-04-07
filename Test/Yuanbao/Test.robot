*** Settings ***
Library  Selenium2Library
Resource  ../../Keywords/Keywords.robot
Test Setup  Keywords.YB BrowserInit
Test Teardown  Keywords.Close

*** Variables ***


*** Test Cases ***
Login
    [Tags]  Smoke  Valid  Test  Yaunbao
    Keywords.YB Login
Invalid Username
    [Tags]  Invalid  Keyword  test
    Keywords.YB Invalid Username
Invalid Password
    [Tags]  Invalid  Password  test
    Keywords.YB Invalid Password
Search Player
    [Tags]  Valid  Player  Search
    Keywords.YB Login
    Keywords.YB Search Player
User Deposit
    [Tags]  Deposit
    Keywords.YB Login
    Keywords.YB Search Player
    Keywords.YB New Deposit
*** Keywords ***

