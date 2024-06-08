///<reference types="cypress"/>
import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps"

Given('Navigate to OHRM url page', () => {
    cy.visit('https://opensource-demo.orangehrmlive.com/web/index.php/auth/login')
})

When('I enter user-name and pass-word', (datatable) => {
    datatable.hashes().forEach(element => {
        cy.get('[name="username"]').type(element.username)
        cy.get('[name="password"]').type(element.password)
    });
})
And('click on login button', () => {
    cy.get('.orangehrm-login-button').click()
})

Then('validate for valid user page', () => {
    cy.get('.oxd-topbar-header-breadcrumb-module').should('have.text', 'Dashboard')
})

//SCENARIO TC2

