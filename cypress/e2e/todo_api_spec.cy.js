/* eslint-disable no-undef */
describe('Todo Get Api Next', () => {
  // cy.refreshDatabase();
  before(() => {
    // cy.seed();
  });

  beforeEach(() => {
    cy.loginWithUsername();
    cy.visit('/');
  });

  it('create new level by save', () => {
    cy.visit('/todo-get-api-next');

    cy.wait(1000);
    cy.visit('/');
    cy.wait(1000);
  });

});
