*** Settings ***
Resource            ../../test_steps/BDD_Keywords.robot
Resource            ../../test_steps/Teste_Sensedata/Adicionar_Produtos_BDD_Keywords.robot
Test Setup          Abrir navegador
#Test Teardown      Fechar navegador

*** Variables ***
${LOGIN_VALUE_PRODUTO}                  SWAGLABS


*** Test Cases ***
Cenário 1 - Adicionar produtos ao carrinho de compras
    Dado que o usuário esteja logado na plataforma SWAGLABS
    Quando clicar no menu lateral "Filtrar"
    E clicar no submenu "Price (low to high)"
    E clicar no botão "Add to cart" do item Sauce Labs Onesie
    E clicar no botão "Add to cart" do item Test.allTheThings() T-Shirt (Red)
    Então o sistema deverá exibir os produtos no carrinho de compras
