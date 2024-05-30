#language: pt

Funcionalidade: Busca no BCB
    Descrição: aqui testamos a barra de pesquisa do site
    
Contexto:
        Dado que acesso o site

Cenário: Busca válida
    Quando eu clico na lupa de pesquisa
    E eu insiro a pesquisa "Dolar"
    E confirmo buscar
    Então exibe "Aproximadamente"

Esquema do Cenário: Falha na busca
    Quando eu insiro a pesquisa <pesquisa>
    E confirmo buscar
    Então exibe a <mensagem> de erro
    Exemplos:
    | pesquisa           | mensagem |
    | "BBBBBBBBBBBBBBBB"    | "Sua pesquisa não trouxe resultados." |
    | "asjsnsdajkcnuds"   | "Sua pesquisa não trouxe resultados." |
    | "!@NJSNKA!@**@@%" | "Sua pesquisa não trouxe resultados." |
