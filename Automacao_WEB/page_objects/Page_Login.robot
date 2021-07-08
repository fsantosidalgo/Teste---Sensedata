*** Variables ***
${LOGIN_INPUT_NAME}                 UserName
${LOGIN_INPUT_PASSWORD}             Password

${LOGIN_INPUT_NAME_VALUE}           standard_user
${LOGIN_INPUT_PASSWORD_VALUE}       secret_sauce

${LOGIN_BTN_LOGIN}                  //*[@id="login-button"]


*** Keywords ***
Fazer Login ${LOGIN_VALUE_PRODUTO}
    Input Text  ${LOGIN_INPUT_NAME}         ${LOGIN_INPUT_NAME_VALUE}
    Input Text  ${LOGIN_INPUT_PASSWORD}     ${LOGIN_INPUT_PASSWORD_VALUE}
    Click Element                           ${LOGIN_BTN_LOGIN}
    