import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps";

Given("que acesso o site casacivil", () => {
    cy.visit("https://www.gov.br/casacivil/pt-br/canais_atendimento/imprensa/cadastro-mailing");
});

When("eu digito o nome {string}", (nome) => {
    cy.get('input#nome-completo').type(nome, { force: true });
});

And("eu digito o email {string}", (email) => {
    cy.get('input#replyto').type(email, { force: true });
});

And("eu digito o veiculo de comunicação {string}",(comunicacao)=> {
    cy.get('input#topic').type(comunicacao, { force: true });
});

And("eu digito o telefone {string}",(telefone)=> {
    cy.get('input#telefone-1').type(telefone, { force: true });
});

And("eu digito a cidade {string}",(cidade)=> {
    cy.get('input#cidade').type(cidade, { force: true });
});

And("clico no botao de enviar", () => {
    cy.get('input[type="submit"][name="form_submit"]').click({ force: true });
});

Then("exibe o erro {string}", (mensagem) => {
    cy.wait(1000);
    cy.contains(mensagem).should('be.visible');
});

Then("exibe {string}", (mensagem) => {
    cy.contains(mensagem).should('be.visible');
});
