*** Settings ***
Resource    ../Features/Library/Library.robot
Library    String

*** Test Cases ***
Cenário de Testes 01 - Conferir conteúdo de dois arquivos (Salmo 91) com sucesso.
    ${Salmo91}         Remove String    ${Archive.Salmo91}         \\Tests
    ${Salmo91Copia}    Remove String    ${Archive.Salmo91Copia}    \\Tests
    Diff Files    ${Salmo91}    ${Salmo91Copia}

Cenário de Testes 02 - Conferir conteúdo de dois arquivos (Salmo 91 e Salmo 22) sem sucesso.
    ${Salmo91}    Remove String    ${Archive.Salmo91}    \\Tests
    ${Salmo22}    Remove String    ${Archive.Salmo22}    \\Tests
    Diff Files    ${Salmo91}       ${Salmo22}    False

Cenário de Testes 03 - Conferir saída de conteúdo do arquivo (Salmo 91 e Salmo 22) com sucesso.
    ${Salmo91}    Remove String    ${Archive.Salmo91}    \\Tests
    ${Salmo22}    Remove String    ${Archive.Salmo22}    \\Tests
    Diff Outputs    ${Salmo91}    ${Salmo91}
    Diff Outputs    ${Salmo22}    ${Salmo22}
