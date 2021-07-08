*** Settings ***
Library     SeleniumLibrary
Library     DateTime
Resource    ../page_objects/Page_Login.robot


*** Variables ***
${URL}          https://www.saucedemo.com/
${BROWSER}      googlechrome

*** Keywords ***
Abrir navegador
    Open Browser        ${URL}      ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed  0.05

Fechar navegador
    Close Browser


    