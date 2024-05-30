#language: pt

Funcionalidade: Cadastro de Mailing
    Descrição: aqui testamos o cadastro de Mailing do site da casa civil

Contexto:
        Dado que acesso o site casacivil

Cenário: Formulário incompleto sem cidade
    Quando eu digito o nome "Maria Silva" 
    E eu digito o email "maria@gmail.com" 
    E eu digito o veiculo de comunicação "32321323332"   
    E eu digito o telefone "123 456-7890" 
    E clico no botao de enviar
    Então exibe o erro "Cidade: é obrigatório"

Cenário: Formulário incompleto sem nome
    Quando eu digito a cidade "Campina Grande"
    E eu digito o email "maria@gmail.com" 
    E eu digito o veiculo de comunicação "32321323332"   
    E eu digito o telefone "123 456-7890" 
    E clico no botao de enviar
    Então exibe o erro "Nome completo: é obrigatório"

Cenário: Formulário incompleto sem email
    Quando eu digito a cidade "Fortaleza"
    E eu digito o nome "Carlos Alberto"
    E eu digito o veiculo de comunicação "32321323332"   
    E eu digito o telefone "123 456-7890" 
    E clico no botao de enviar
    Então exibe o erro "e-mail: é obrigatório"

   