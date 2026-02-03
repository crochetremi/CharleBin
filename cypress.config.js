module.exports = {
  e2e: {
    baseUrl: 'http://localhost:8080',
    specPattern: 'test/**/*.cy.{js,jsx,ts,tsx}',
    supportFile: false,
    video: false,
    screenshotOnRunFailure: true,
    viewportWidth: 1280,
    viewportHeight: 720,
    defaultCommandTimeout: 10000,
    pageLoadTimeout: 30000
  }
}