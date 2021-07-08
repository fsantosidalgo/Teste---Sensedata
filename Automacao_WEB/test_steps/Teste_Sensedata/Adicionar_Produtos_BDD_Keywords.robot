***Settings***
Resource    ../../page_objects/Adicionar_Produtos_Carrinho.robot

***Keywords***
    Quando clicar no menu lateral "Filtrar"
    Wait Until Element Is Visible       ${Seta_Filtro_Valor}
    Click Element                       ${Seta_Filtro_Valor}

    E clicar no submenu "Price (low to high)"
     Wait Until Element Is Visible       ${Filtro_LIST_Ordenacao_Valor}
     Scroll Element Into View            ${Filtro_LIST_Ordenacao_Valor}
     Click Element                       ${Filtro_LIST_Ordenacao_Valor}
  
    E clicar no botão "Add to cart" do item Sauce Labs Onesie
     Wait Until Element Is Visible        ${Add_Sauce_Labs_Onesie}
     Scroll Element Into View             ${Add_Sauce_Labs_Onesie}


    E clicar no botão "Add to cart" do item Test.allTheThings() T-Shirt (Red)
     Wait Until Element Is Visible        ${Add_Test.allTheThings}
     Scroll Element Into View             ${Add_Test.allTheThings}


    Então o sistema deverá exibir os produtos no carrinho de compras
     Click Element                       ${Produtos_Carrinho_de_Compras}
     Capture Page Screenshot             ${OUTPUTDIR}/Itens_Comprados.png