describe('template spec', () => {

  it('fullapp_review', function() {
    cy.visit('http://localhost:8080')
    
    cy.get('[name="message"]').type('mot');
    cy.get('#passwordinput').click();
    cy.get('#passwordinput').type('password');
    cy.get('#sendbutton').click();
    cy.get('#pasteurl').click();
    cy.get('#passworddecrypt').click();
    cy.get('#passworddecrypt').type('password');
    cy.get('#passwordform button.btn').click();
    cy.get('#prettyprint').click();
    cy.get('#prettyprint').click();
    cy.get('#prettyprint').should('have.text', 'mot');
    
  });
})