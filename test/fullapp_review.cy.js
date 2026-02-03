describe('Normal User Experience', () => {
  it('fullapp_review', function() {
    cy.visit('http://localhost:8080')
    
    cy.get('[name="message"]').click();
    cy.get('[name="message"]').type('Chaine de caractere');
    cy.get('#passwordinput').click();
    cy.get('#passwordinput').type('password');
    cy.get('#sendbutton span.glyphicon').click();
    cy.get('#pasteurl').click();
    cy.get('#passworddecrypt').click();
    cy.get('#passworddecrypt').type('password');
    cy.get('#passwordform button.btn').click();
  })
})