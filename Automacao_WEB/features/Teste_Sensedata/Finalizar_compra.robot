*** Settings ***
Resource            ../../test_steps/BDD_Keywords.robot
Resource            ../../test_steps/Teste_Sensedata/Finalizar_compra_BDD_Keywords.robot
Test Setup          Abrir navegador
#Test Teardown      Fechar navegador

*** Variables ***
${LOGIN_VALUE_PRODUTO}                  SWAGLABS


*** Test Cases ***
Cenário 1 - Realizar uma compra
    Dado que o usuário esteja logado na plataforma SWAGLABS
    Quando clicar no menu lateral "Filtrar"
    E clicar no submenu "Price (low to high)"
    E clicar no botão "Add to cart" do item Sauce Labs Onesie
    E clicar no botão "Add to cart" do item Test.allTheThings() T-Shirt (Red)
    E clicar no carrinho de compras
    E clicar no botão "CkeckOut"
    E preencher o campo com o "First Name"
    E preencher o campo com o "Last Name"
    E preencher o campo "Zip/Postal Code"
    E clicar no botão  "Continue"
    E clicar no botão "Finish" da tela CHECKOUT: OVERVIEW
    Então o sistema deverá exibir a mensagem "THANK YOU FOR YOUR ORDER"