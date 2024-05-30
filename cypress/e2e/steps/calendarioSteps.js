import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps";

Given("que acesso o site em mec-circulante", () => {
    cy.visit("https://www3.bcb.gov.br/mec-circulante/");
});

When("eu digito a data {string}", (valor) => {
    cy.get('input#dataConsulta').clear();
    cy.get('input#dataConsulta').type(valor, { force: true });
});

And("clico no botao pesquisar", () => {
    cy.get('input#btnPesquisar3').click({ force: true });
});

Then("exibe o erro {string}", (mensagem) => {
    cy.wait(1000);
    cy.contains(mensagem).should('be.visible');
});

Then("exibe {string}", (mensagem) => {
    cy.contains(mensagem).should('be.visible');
});
