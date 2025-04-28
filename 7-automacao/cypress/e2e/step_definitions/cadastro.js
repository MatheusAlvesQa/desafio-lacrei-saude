import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import { gerarEmailAleatorio } from "../../support/utils";

Given('que o usuário está na tela de cadastro', () => {
  cy.visit('https://paciente-staging.lacreisaude.com.br/cadastro/'); 
});

let generatedEmail = '';

When('o usuário preenche o formulário com os seguintes dados:', (dataTable) => {
  const dados = dataTable.rowsHash();

  if (dados.email === '<gerar_email>') {
    generatedEmail = gerarEmailAleatorio();
    dados.email = generatedEmail;
  }
  if (dados.confirmar_email === '<gerar_email>') {
    dados.confirmar_email = generatedEmail;
  }

  if (dados.nome) cy.get('input#first_name').clear().type(dados.nome);
  if (dados.sobrenome) cy.get('input#last_name').clear().type(dados.sobrenome);
  if (dados.email) cy.get('input#email').clear().type(dados.email);
  if (dados.confirmar_email) cy.get('input#email2').clear().type(dados.confirmar_email);
  if (dados.senha) cy.get('input#password1').clear().type(dados.senha);
  if (dados.confirmar_senha) cy.get('input#password2').clear().type(dados.confirmar_senha);

  
  if (dados.termos === 'sim') {
    cy.get('span.check-container').eq(0).click({ force: true });
  }
  
  if (dados.maior_18 === 'sim') {
    cy.get('span.check-container').eq(1).click({ force: true });
  }
});

When('o usuário clica no botão "Cadastrar"', () => {
  cy.contains('button', "Cadastrar").click();
});

Then('o usuário deve ser redirecionado para a página com a mensagem {string}', (mensagem) => {
  cy.contains(mensagem, { timeout: 10000 }).should('be.visible');
});

Then('o sistema mostra a mensagem de erro {string}', (mensagemErro) => {
  cy.contains(mensagemErro).should('be.visible');
});