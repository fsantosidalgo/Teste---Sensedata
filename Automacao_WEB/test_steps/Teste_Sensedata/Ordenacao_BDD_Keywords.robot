***Settings***
Resource    ../../page_objects/Ordenacao_Valor.robot

***Keywords***
    Quando clicar no menu lateral "Filtrar"
    Wait Until Element Is Visible       ${Seta_Filtro_Valor}
    Click Element                       ${Seta_Filtro_Valor}


    E clicar no submenu "Price (low to high)"
     Wait Until Element Is Visible       ${Filtro_LIST_Ordenacao_Valor}
     Scroll Element Into View            ${Filtro_LIST_Ordenacao_Valor}
     Click Element                       ${Filtro_LIST_Ordenacao_Valor}
     Capture Page Screenshot             ${OUTPUTDIR}/Ordencao_low_to_high.png


    Então o sistema deverá apresentar os produtos em ordem crescente do valor
     Wait Until Element Is Visible       ${ProdutosOrdenados_LIST_valor}
     Capture Page Screenshot             ${OUTPUTDIR}/Ordencao_final.png