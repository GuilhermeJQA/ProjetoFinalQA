#language: pt

Funcionalidade: Busca de data no calendario mec-circulante
    Descrição: aqui testamos o calendario

Contexto:
        Dado que acesso o site em mec-circulante

Cenário: Data válida
    Quando eu digito a data "10/05/2004"
    E clico no botao pesquisar
    Então exibe "O Meio Circulante Nacional" 

Esquema do Cenário: Data inválida
    Quando eu digito a data <pesquisa>
    E clico no botao pesquisar
    Então exibe o erro <mensagem>
    Exemplos:
    | pesquisa      | mensagem                 |
    | "palavra"     | "O valor do campo" |
    | "11/32/3124"  | "não é uma data válida." |
    | "10/03/1939"  | "Informe uma data maior ou igual que 03/10/1994" |