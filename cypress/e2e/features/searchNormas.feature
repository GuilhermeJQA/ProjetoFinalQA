#language: pt

Funcionalidade: Busca de normas no BCB
    Descrição: aqui testamos a pesquisa de normas do site
    
Contexto:
        Dado que acesso o site

Cenário: Busca válida
    Quando eu clico no botao de buscar normas
    E eu insiro no campo de número "1937"
    E confirmo pesquisar
    Então exibe resultado "Foram encontrados"

Esquema do Cenário: Falha na pesquisa de norma
    Quando eu clico no botao de buscar normas
    E eu insiro no campo de número <pesquisa>
    E confirmo pesquisar
    Então exibe a <mensagem> de not found
    Exemplos:
    | pesquisa           | mensagem |
    | "BBBBBBBBBBBBBBBB"    | "Nenhum documento encontrado." |
    | "asjsnsdajkcnuds"   | "Nenhum documento encontrado." |
    | "400000000" | "Nenhum documento encontrado." |
    | "!@#&@&#!@!@@#" | "Nenhum documento encontrado." |
