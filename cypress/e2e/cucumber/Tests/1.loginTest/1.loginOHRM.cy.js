///<reference types ="cypress"/>

import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps"

Given('I navigate to OHRM login webpage', () => {
    cy.visit("https://opensource-demo.orangehrmlive.com/web/index.php/auth/login")
})
//VALID USER
And('I enter username and password', () => {
    cy.get('[name="username"]').type('Admin')
    cy.get('[name="password"]').type('admin123')
})

When('I click on login button', () => {
    cy.get('[type="submit"]').click()
})

Then('valid user should be logged in', () => {
    cy.get('.oxd-topbar-header-breadcrumb-module').should("have.text", "Dashboard")
})

//INVALID USER
And('I enter invalid username and password', () => {
    cy.get('[name="username"]').type('XYZ')
    cy.get('[name="password"]').type('xyz2')
})

Then('valid user should display Invalid credentials message', () => {
    cy.get('.oxd-alert-content--error').should('have.text', "Invalid credentials")
})

//ScenarioTC3

Then('login page should display {string}', (db) => {
    cy.get('.oxd-topbar-header-breadcrumb-module').should('have.text', db)
})