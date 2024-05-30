import {  When, Then, And } from "cypress-cucumber-preprocessor/steps";

When("eu clico no botao de buscar normas", () => {
    cy.get('a[title="Busca de normas"]').click({ force: true });
});

And("eu insiro no campo de número {string}", (valor) => {
    cy.wait(2000)
    cy.get('input#numero').type(valor, { force: true });
});

And("confirmo pesquisar", () => {
    cy.get('button.btn.btn-primary.mr-2[title="Buscar conteúdo no site"]').click({ force: true });
    cy.wait(1000);
});

Then("exibe a {string} de not found", (mensagem) => {
    cy.contains(mensagem).should('be.visible');
});

Then("exibe resultado {string}", (mensagem) => {
    cy.contains(mensagem).should('be.visible');
});
