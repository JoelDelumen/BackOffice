*** Settings ***
Library  Selenium2Library
Resource  ../../Keywords/Keywords.robot
Test Setup  Keywords.YB BrowserInit
Test Teardown  Keywords.Close

*** Variables ***


*** Test Cases ***
Login
    [Tags]  Smoke  Test1
    Keywords.YB Login
Invalid Username
    [Tags]  Smoke  Test2
    Keywords.YB Invalid Username
Invalid Password
    [Tags]  Smoke  Test3
    Keywords.YB Invalid Password
Search Player
    [Tags]  Smoke  Test4
    Keywords.YB Login
    Keywords.YB Search Player
User Deposit
    [Tags]  DepositTest1
    Keywords.YB Login
    Keywords.YB Search Player
    Keywords.YB New Deposit
YB Approved Deposit
    [Tags]  DepositTest2
    Keywords.YB Login
    Keywords.YB Approved Deposit
YB Declined Deposit
    [Tags]  DepositTest3
    Keywords.YB Login
    Keywords.YB Declined Deposit
YB Cancel Transaction
    [Tags]  DepositTest4
    Keywords.YB Login
    Keywords.YB Cancel Deposit
YB Deposit Proc list
    [Tags]  DepositTest5
    Keywords.YB Login
    Keywords.YB Deposit Processing List
*** Keywords ***

