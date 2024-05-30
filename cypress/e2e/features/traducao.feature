#language: pt

Funcionalidade: Traducao do Gov
    Descrição: aqui testamos se o tradutor do gov realmente traduz

Contexto:
        Dado que acesso o site gov

Cenário: Traduzindo para o inglês
    Quando eu clico no botao de linguas
    E clico no botao de ingles
    Então a pagina traz o texto "External Relations"

