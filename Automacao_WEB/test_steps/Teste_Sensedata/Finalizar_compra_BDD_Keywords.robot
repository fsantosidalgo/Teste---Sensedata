***Settings***
Resource    ../../page_objects/Finzalizacao_compra.robot

***Keywords***
Quando clicar no menu lateral "Filtrar"
    Wait Until Element Is Visible       ${Seta_Filtro_Valor}
    Click Element                       ${Seta_Filtro_Valor}

E clicar no submenu "Price (low to high)"
     Wait Until Element Is Visible       ${Filtro_LIST_Ordenacao_Valor}
     Click Element                       ${Filtro_LIST_Ordenacao_Valor}
  
E clicar no botão "Add to cart" do item Sauce Labs Onesie
     Wait Until Element Is Visible        ${Add_Sauce_Labs_Onesie}
     Click Element                        ${Add_Sauce_Labs_Onesie}


E clicar no botão "Add to cart" do item Test.allTheThings() T-Shirt (Red)
     Wait Until Element Is Visible        ${Add_Test.allTheThings}
     Click Element                        ${Add_Test.allTheThings}

E clicar no carrinho de compras
     Wait Until Element Is Visible        ${Carrinho_de_compras}
     Click Element                        ${Carrinho_de_compras}

E clicar no botão "CkeckOut"
     Wait Until Element Is Visible        ${Btn_Checkout}
     Click Element                        ${Btn_Checkout}

E preencher o campo com o "${Text_First_Name}"
     Wait Until Element Is Visible        ${Field_First_Name}
     Click Element                        ${Field_First_Name}
     Input Text                           ${Input_First_Name}   ${Text_First_Name}

E preencher o campo com o "${Text_Last_Name}"
     Wait Until Element Is Visible        ${Field_Last_Name}
     Click Element                        ${Field_Last_Name}
     Input Text                           ${Input_Last_Name}     ${Text_Last_Name} 
     

E preencher o campo com o "${Text_Zip_Code}"  
     Wait Until Element Is Visible        ${Field_Zip_Code}
     Click Element                        ${Field_Zip_Code}
     Input Text                           ${Input_Zip_Code}      ${Text_Zip_Code}  

E clicar no botão "Continue"
     Wait Until Element Is Visible        ${Btn_Continue}
     Click Element                        ${Btn_Continue}

E clicar no botão "Finish" da tela CHECKOUT: OVERVIEW
     Wait Until Element Is Visible        ${Btn_Finish}
     Capture Page Screenshot              ${OUTPUTDIR}/CHECKOUT_OVERVIEW.png
     Click Element                        ${Btn_Finish}

Então o sistema deverá exibir a mensagem "${Msg_Desejada}"
    Page Should Contain                  ${Msg_Desejada}
    Capture Page Screenshot              ${OUTPUTDIR}/Mensagem_Order_Complete.png
   