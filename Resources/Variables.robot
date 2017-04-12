*** Settings ***
Library  Selenium2Library

*** Variables ***
#+++++++++++++++++++++++++++++++++++++++LOGIN PROPER++++++++++++++++++++++++++++++++++++++++++++++++
${BROWSER_CLOSE} =  Close Browser
${BROWSER} =  chrome
${URL} =  http://admin.demo.tripleonetech.com
${YB_URL} =  http://admin.yuanbao.og.office
${UNAME} =  superadmin
${PWORD} =  laifuwifi***
${USER1} =  testley1
#====================================================================================================
#+++++++++++++++++++++++++++++++++++++++YUANBAO++++++++++++++++++++++++++++++++++++++++++++++++++++++
#====================================================================================================
${YB_PWORD} =  laifuwifi999
${UNAMEBOX} =  css=#login
${PWBOX} =  css=#password
${LOGINBTN} =  css=body > div > div:nth-child(1) > div.panel.panel-primary > div.panel-body > form > center > div > input
#++++++++++++++++++++++++++++++++++++++++COMMON+++++++++++++++++++++++++++++++++++++++++++++++++++++++
${COMMENT} =  This is a test!
${ADMIN_USER2} =  admin
${LEFT_MENU} =  css=#main_icon
#++++++++++++++++++++++++++++++++++++INVALID INPUTS+++++++++++++++++++++++++++++++++++++++++++++++++++
${INV_USERNAME} =  joel123
${INV_PWORD} =  09986757438593
#=====================================================================================================
#+++++++++++++++++++++++++++++++REGISTRATION for YUANBAO++++++++++++++++++++++++++++++++++++++++++++++
#=====================================================================================================
${REG_URL} =  http://player.demo.tripleonetech.com
${REGISTRATION} =  css=body > div.panel.panel-primary > div.panel-body > div > div > center > label > a:nth-child(1)
${REG_UNAMEBOX} =  xpath=//*[@id="username"]
${REG_UNAME} =  test_joel
${REG_PWBOX} =  xpath=//*[@id="password"]
${REG_PW} =  autotest123
${REG_CONFIRM_PWBOX} =  xpath=//*[@id="cpassword"]
${REG_PW_CONFIRM} =  autotest123
${REG_GENDER} =  xpath=//*[@id="registration_form"]/div[2]/div[4]/div[2]/label[1]
${REG_NAME} =  xpath=//*[@id="first_name"]
${REG_FNAME} =  Joel
${REG_LASTNAME} =  xpath=//*[@id="last_name"]
${REG_APELYIDO} =  Delumen
${REG_BDAY} =  xpath=//*[@id="birthdate"]
${REG_KAPANGANAKAN} =  1965-05-07
${REG_LANGUAGE} =  xpath=//*[@id="language"]/option[3]
${REG_EMAIL} =  xpath=//*[@id="email"]
${REG_SULAT} =  joel.pogi@kagwapuhan.com
${REG_COUNTRY} =  xpath=//*[@id="resident_country"]/optgroup[1]/option[1]
${REG_CITIZENSHIP} =  //*[@id="citizenship"]
${REG_PAGKAMAMAMAYAN} =  african
${REG_CONTACT_NUMBER} =  xpath=//*[@id="contact_number"]
${REG_TELEPONO} =  2346857455845645
${REG_SEC_QUESTION} =  xpath=//*[@id="security_question"]/option[3]
${REG_SEC_ANSWER} =  xpath=//*[@id="security_answer"]
${REG_SAGOT} =  KASARIAN
${REG_CHAT_TYPE} =  xpath=//*[@id="im_type"]/option[3]
${REG_REFERRAL_CODE} =  xpath=//*[@id="referral_code"]
${REG_AFFILIATE_CODE} =  xpath=//*[@id="affiliate_code"]
${REG_SUBMIT_BTN} =  path=-//*[@id="accept"]
#+++++++++++++++++++++++++++++++++++++++++++++++HOMEPAGE++++++++++++++++++++++++++++++++++++
${HOME_PLAYER_TAB} =  xpath=//*[@id="bs-navbar-collapse-1"]/nav/div/ul[1]/li[1]/a
${PL_SEARCH_TB} =  css=#username
${PL_SEARCH_RESULT} =  css=#player-table > tbody > tr > td:nth-child(3) > a
${PL_SEARCH_BTN} =  xpath=//*[@id="collapsePlayerList"]/div[3]/input[2]
#++++++++++++++++++++++++++++++++++++DEPOSIT++++++++++++++++++++++++++++++++++++++++++++++++
${NEW_DEPOSIT_BTN} =  css=#main_content > div.col-md-12 > div:nth-child(2) > fieldset > div > a:nth-child(7) > span
${DEP_USERNAME_BOX} =  css=#username
${DEP_MAIN_WALLET} =  css=#amount
${DEP_PLAYER_ACCOUNT} =  xpath=//*[@id="account"]/optgroup/option
${DEP_SUB_WALLET} =  css=#subwallet
${DEP_PROMOTION} =  css=#form > div.form-group.has-success > select
${DEP_DATE} =  css=#date
${DEP_NOTE} =  css=#reason
${DEP_STATUS} =  css=#form > div:nth-child(8) > label:nth-child(3) > input
${DEP_ADD_BTN} =  css=#main_content > div > div > div > div.panel-footer > div > button
${DEP_PROC_LIST} =  css=#main_content > div.panel.panel-primary > div.panel-heading > h4 > div > a.btn.btn-default.btn-xs > span
#+++++++++++++++++++++++++++++++++++++++++++++PAYMENT++++++++++++++++++++++++++++++++++++++++++
${HOME_PAYMENT_TAB} =  xpath=//*[@id="bs-navbar-collapse-1"]/nav/div/ul[1]/li[3]/a
${PAY_DETAIL_BTN} =  css=#deposit-table > tbody > tr:nth-child(1) > td:nth-child(1) > span
${PAY_REMARKS} =  xpath=//*[@id="remarksTxt"]
${PAY_APPROVE_BTN} =  xpath=//*[@id="approve_btn"]
${PAY_DECLINE_BTN} =  xpath=//*[@id="decline_btn"]
${PAY_CLOSE_BTN} =  css=#response-sec > div > button
#+++++++++++++++++++++++++++++++++++++++++++++WITHDRAWAL+++++++++++++++++++++++++++++++++++++++
${WDRAW_AMOUNT} =  css=#amount
${WDRAW_BANK} =  css=#bank
${WDRAW_NOTE} =  css=#reason
${WDRAW_BTN} =  css=#main_content > div > div > div > div.panel-footer > div > button

#==============================================================================================
#++++++++++++++++++++++++++++++++++++++++++++SYSTEM PAGE++++++++++++++++++++++++++++++++++++++++++++
#==============================================================================================

#==============================================================================================
#++++++++++++++++++++++++++++++++++++++++SYSTEM TABS+++++++++++++++++++++++++++++++++++++++++++
${SYS_ADD_USERS} =  css=#add_users
${SYS_VIEW_ROLES} =  css=#checkRole
${SYS_IP_ROLES} =  css=#viewIp
${SYS_CURRENCY_SETTINGS} =  css=#view_currency
${SYS_USER_LOGS} =  css=#view_logs
${SYS_DUPL_ACCOUNT} =  css=#view_api_settings
${SYS_GAME_DESC} =  css=#viewGameDescription
${SYS_GAME_API} =  css=#viewGameApi
${SYS_PAYMENT_API} =  css=#viewPaymentApi
${SYS_REG_SETTINGS} =  css=#view_registration_setting
${SYS_PAYMENT_SETTINGS} =  css#view_payment_settings
${SYS_GAME_TYPE} =  css=#viewGameType
${SYS_SYSTEM_SETTINGS} =  css=#view_system_settings
${SYS_WEB_IP_RULES} =  css=#viewCountry
${SYS_NOTIF_MGMT} =  css=#viewNotification
${SYS_SYSTEM_FEATURES} =  css=#viewSystemFeatures
#==============================================================================================
#+++++++++++++++++++++++++++++++SYSTEM PAGE HOME WINDOW++++++++++++++++++++++++++++++++++++++++
${HOME_SYSTEM} =  css=#bs-navbar-collapse-1 > nav > div > ul:nth-child(1) > li:nth-child(8) > a
${SYS_USERNAME} =  css=#username
${SYS_SEARCH_BTN} =  css=#collapseViewUsers > div.panel-footer > div > button
${SYS_NEW_USER_DET_BTN} =  css=#my_form > div > div:nth-child(1) > a
${SYS_DELETE_BTN} =  css=#my_form > div > div:nth-child(1) > button.btn.btn-danger.btn-sm
${SYS_LOCK_BTN} =  css=#my_form > div > div:nth-child(1) > button.btn.btn-warning.btn-sm
${SYS_UNLOCK_BTN} =  css=#my_form > div > div:nth-child(1) > button.btn.btn-success.btn-sm
${SYS_SHOW_ENTRIES_DD} =  css=#my_table_length > label > select > option:nth-child(1)
#==============================================================================================
#+++++++++++++++++++++++++++++++++++ADDITION OF NEW SMARTBACKEND USERS+++++++++++++++++++++++++
${SYS_ROLE_RADBTN} =  css=#my_form > div > div > div > div.panel-body > div > table > tbody > tr:nth-child(2) > td:nth-child(1) > input
${SYS_ROLE_SUBMIT_BTN} =  css=#my_form > div > div > div > div.panel-footer > div.nav.pull-right > button
${SYS_NEW_USER_DETAILS} =  css=#username
${SYS_NEW_REAL_NAME} =  css=#realname
${SYS_EMAIL} =  css=#email
${SYS_DEPT} =  css=#department
${SYS_POSITION} =  css=#position
${SYS_PASSWORD1} =  css=#password
${SYS_PASSWORD2} =  css=#cpassword
${SYS_MAX_APPROVAL} =  css=#wid_amt
${SYS_NOTES} =  css=#email_panel_body > div:nth-child(7) > div > textarea
${SYS_SUBMIT_BTN} =  css=#my_form > div.row > div > div > div.panel-footer > div.pull-right > button
#==============================================================================================