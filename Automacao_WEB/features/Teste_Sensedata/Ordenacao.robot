*** Settings ***
Resource            ../../test_steps/BDD_Keywords.robot
Resource            ../../test_steps/Teste_Sensedata/Ordenacao_BDD_Keywords.robot
Test Setup          Abrir navegador
#Test Teardown      Fechar navegador

*** Variables ***
${LOGIN_VALUE_PRODUTO}                  SWAGLABS


*** Test Cases ***
Cenário 1 - Realizar a ordenação dos produtos pelo valor (low to high)
    Dado que o usuário esteja logado na plataforma SWAGLABS
    Quando clicar no menu lateral "Filtrar"
    E clicar no submenu "Price (low to high)"
    Então o sistema deverá apresentar os produtos em ordem crescente do valor


