import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps";

Given("que acesso o site gov", () => {
    cy.visit("https://www.gov.br/pt-br");
});

When("eu clico no botao de linguas", () => {
    cy.get('span.fas.fa-chevron-down').debug().click({ force: true });
});

And("clico no botao de ingles", () => {
    cy.get('li').contains('a', 'en').click({ force: true });
});

Then("a pagina traz o texto {string}", (mensagem) => {
    cy.contains(mensagem).should('be.visible');
});

