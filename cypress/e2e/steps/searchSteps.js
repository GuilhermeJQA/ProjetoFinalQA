import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps";

Given("que acesso o site", () => {
    cy.visit("https://www.bcb.gov.br");
});

When("eu clico na lupa de pesquisa", () => {
    cy.get('button[aria-label="Lupa"]').click({ force: true });
});

And("eu insiro a pesquisa {string}", (valor) => {
    cy.get('input[aria-label="Buscar"]').first().type(valor, { force: true });
});

And("confirmo buscar", () => {
    cy.get('button.btn.btn-link.text-decoration-none[aria-label="Buscar"]').first().click({ force: true });
    cy.wait(1000);
});

Then("exibe a {string} de erro", (mensagem) => {
    cy.contains(mensagem).should('be.visible');
});

Then("exibe {string}", (mensagem) => {
    cy.contains(mensagem).should('be.visible');
});
