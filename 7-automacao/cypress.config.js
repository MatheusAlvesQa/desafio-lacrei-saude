const { defineConfig } = require('cypress');
const createBundler = require('@bahmutov/cypress-esbuild-preprocessor');
const { createEsbuildPlugin } = require('@badeball/cypress-cucumber-preprocessor/esbuild');
const { addCucumberPreprocessorPlugin } = require('@badeball/cypress-cucumber-preprocessor');

module.exports = defineConfig({
  e2e: {
    specPattern: "cypress/e2e/step_definitions/**/*.feature",
    setupNodeEvents: async (on, config) => {
      config.env = config.env || {};

      await addCucumberPreprocessorPlugin(on, config); 

      on("file:preprocessor", createBundler({
        plugins: [createEsbuildPlugin(config)],
      }));

      return config;
    },
    cucumber: {
      stepDefinitions: "cypress/e2e/step_definitions",
    },
  },
});