*** Settings ***
Library  Selenium2Library

*** Variables ***
#these are for the LOGIN PROPER
${BROWSER_CLOSE} =  Close Browser
${BROWSER} =  chrome
${URL} =  http://admin.demo.tripleonetech.com
${YB_URL} =  http://admin.yuanbao.og.office
${UNAME} =  superadmin
${PWORD} =  laifuwifi***
${USER1} =  testley1
#+++++++++++++++++++++++++++++++++++++++YUANBAO++++++++++++++++++++++++++++++++++++++++++++++++++++++
${YB_PWORD} =  laifuwifi999
${UNAMEBOX} =  css=#login
${PWBOX} =  css=#password
${LOGINBTN} =  css=body > div > div:nth-child(1) > div.panel.panel-primary > div.panel-body > form > center > div > input

#++++++++++++++++++++++++++++++++++++INVALID INPUTS+++++++++++++++++++++++++++++++++++++++++++++++++++
${INV_USERNAME} =  joel123
${INV_PWORD} =  09986757438593
#+++++++++++++++++++++++++++++++REGISTRATION for YUANBAO++++++++++++++++++++++++++++++++++++++++++++++
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
${REG_TELEPONO} =  2346857455
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

