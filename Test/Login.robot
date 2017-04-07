*** Settings ***
Library  Selenium2Library
Resource  ../Resources/Login.robot
Resource  ../Keywords/Keywords.robot

*** Variables ***

*** Test Cases ***
User Login
    [Tags]  Smoke  Test
    Keywords.Initialize



