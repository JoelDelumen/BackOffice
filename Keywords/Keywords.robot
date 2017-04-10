*** Settings ***
Library  Selenium2Library
Resource  ../Resources/Variables.robot

*** Keywords ***
BrowserInit
    open browser  ${URL}  ${BROWSER}
YB BrowserInit
    open browser  ${YB_URL}  ${BROWSER}
Close
    close browser
#++++++++++++++++++++++++++++++++++++++INVALID KEYWORDS++++++++++++++++++++++++++++++++++++++
Invalid Username
    input text  ${UNAMEBOX}  ${INV_USERNAME}
    input text  ${PWBOX}  ${PWORD}
    click element  ${LOGINBTN}
Invalid Password
    input text  ${UNAMEBOX}  ${UNAME}
    input text  ${PWBOX}  ${INV_PWORD}
    click element  ${LOGINBTN}
Login
    open browser  ${URL}  ${BROWSER}
    input text  ${UNAMEBOX}  ${UNAME}
    input text  ${PWBOX}  ${PWORD}
    click element  ${LOGINBTN}
Registration
    open browser  ${REG_URL}  ${BROWSER}
    click element  ${REGISTRATION}
    input text  ${REG_UNAMEBOX}  ${REG_UNAME}
    input text  ${REG_PWBOX}  ${REG_PW}
    input text  ${REG_CONFIRM_PWBOX}  ${REG_PW}
    input text  ${REG_EMAIL}  ${REG_SULAT}

#++++++++++++++++++++++++++++++++++++++YUANBAO+++++++++++++++++++++++++++++++++++++++++++++++
YB Invalid Username
    input text  ${UNAMEBOX}  ${INV_USERNAME}
    input text  ${PWBOX}  ${YB_PWORD}
    click element  ${LOGINBTN}
    sleep  2
    element should contain  css=body > div > div:nth-child(1) > div.panel.panel-primary > div.panel-body > form > span:nth-child(4)  incorrect login details
YB Invalid Password
    input text  ${UNAMEBOX}  ${UNAME}
    input text  ${PWBOX}  ${INV_PWORD}
    click element  ${LOGINBTN}
    sleep  2
    element should contain  css=body > div > div:nth-child(1) > div.panel.panel-primary > div.panel-body > form > span:nth-child(5)  incorrect password
YB Login
    input text  ${UNAMEBOX}  ${UNAME}
    input text  ${PWBOX}  ${YB_PWORD}
    click element  ${LOGINBTN}
YB Registration
    open browser  ${REG_URL}  ${BROWSER}
    click element  ${REGISTRATION}
    input text  ${REG_UNAMEBOX}  ${REG_UNAME}
    input text  ${REG_PWBOX}  ${REG_PW}
    input text  ${REG_CONFIRM_PWBOX}  ${REG_PW}
    input text  ${REG_EMAIL}  ${REG_SULAT}
    #click element  ${REG_SUBMIT_BTN}
YB Search Player
    click element  ${HOME_PLAYER_TAB}
    input text  ${PL_SEARCH_TB}  ${USER1}
    click element  ${PL_SEARCH_BTN}
    click element  ${PL_SEARCH_RESULT}
    sleep  3s
    element should be visible  css=#main_content > div.col-md-12 > div:nth-child(1) > div > div > fieldset > legend > h4 > b
YB New Deposit
    click element  ${NEW_DEPOSIT_BTN}
    input text  ${DEP_USERNAME_BOX}  ${USER1}
    input text  ${DEP_MAIN_WALLET}  100
    click element  ${DEP_PLAYER_ACCOUNT}
    input text  ${DEP_NOTE}  Test Deposit
    click element  ${DEP_ADD_BTN}
    alert should be present
YB Declined Deposit
    click element  ${HOME_PAYMENT_TAB}
    click element  ${PAY_DETAIL_BTN}
    sleep  2s
    input text  ${PAY_REMARKS}  ${COMMENT}
    sleep  2s
    click element  ${PAY_DECLINE_BTN}
    alert should be present
YB Approved Deposit
    click element  ${HOME_PAYMENT_TAB}
    click element  ${PAY_DETAIL_BTN}
    sleep  2s
    input text  ${PAY_REMARKS}  ${COMMENT}
    sleep  2s
    click element  ${PAY_APPROVE_BTN}
    alert should be present
YB Cancel Deposit
    click element  ${HOME_PAYMENT_TAB}
    click element  ${PAY_DETAIL_BTN}
    sleep  2s
    input text  ${PAY_REMARKS}  ${COMMENT}
    sleep  2s
    click element  ${PAY_CLOSE_BTN}

YB Deposit Processing List
    click element  ${HOME_PAYMENT_TAB}
    click element  ${DEP_PROC_LIST}
    element should be visible  xpath=//*[@id="toggleView"]/div[2]/div[1]/h4/i
YB New Backend User





