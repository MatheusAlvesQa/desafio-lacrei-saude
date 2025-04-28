#Aqui demonstra os passos do fluxo de cadastro de um usuário que devem ser reproduzidos no cypress de forma automatizada
@mobile @internet
Feature: Cadastro de usuário

    Background:
        Given que o usuário está na tela de cadastro


    Scenario: Cadastro realizado com sucesso
        When o usuário preenche o formulário com os seguintes dados:
            | campo             | valor            |
            | nome              | João             |
            | sobrenome         | Alves            |
            | email             | <gerar_email>    |
            | confirmar_email   | <gerar_email>    |
            | senha             | Aa12345@         |
            | confirmar_senha   | Aa12345@         |
            | termos            | sim              |
            | maior_18          | sim              |
            And o usuário clica no botão "Cadastrar"
        Then o usuário deve ser redirecionado para a página com a mensagem "Estamos quase lá"

    Scenario: Cadastro com campo nome vazio
        When o usuário preenche o formulário com os seguintes dados:
            | campo             | valor            |
            | nome              |                  |
            | sobrenome         | Alves            |
            | email             | <gerar_email>    |
            | confirmar_email   | <gerar_email>    |
            | senha             | Aa12345@         |
            | confirmar_senha   | Aa12345@         |
            | termos            | sim              |
            | maior_18          | sim              |
            And o usuário clica no botão "Cadastrar"
        Then o sistema mostra a mensagem de erro "O nome é obrigatório."

    Scenario: Cadastro com campo nome inválido
        When o usuário preenche o formulário com os seguintes dados:
            | campo             | valor            |
            | nome              | 123asd           |
            | sobrenome         | Alves            |
            | email             | <gerar_email>    |
            | confirmar_email   | <gerar_email>    |
            | senha             | Aa12345@         |
            | confirmar_senha   | Aa12345@         |
            | termos            | sim              |
            | maior_18          | sim              |
            And o usuário clica no botão "Cadastrar"
        Then o sistema mostra a mensagem de erro "Digite um nome válido"

    Scenario: Cadastro com campo sobrenome vazio
        When o usuário preenche o formulário com os seguintes dados:
            | campo             | valor            |
            | nome              | João             |
            | sobrenome         |                  |
            | email             | <gerar_email>    |
            | confirmar_email   | <gerar_email>    |
            | senha             | Aa12345@         |
            | confirmar_senha   | Aa12345@         |
            | termos            | sim              |
            | maior_18          | sim              |
            And o usuário clica no botão "Cadastrar"
        Then o sistema mostra a mensagem de erro "O sobrenome é obrigatório"

    Scenario: Cadastro com campo sobrenome inválido
        When o usuário preenche o formulário com os seguintes dados:
            | campo             | valor            |
            | nome              | João             |
            | sobrenome         | 123asd           |
            | email             | <gerar_email>    |
            | confirmar_email   | <gerar_email>    |
            | senha             | Aa12345@         |
            | confirmar_senha   | Aa12345@         |
            | termos            | sim              |
            | maior_18          | sim              |
            And o usuário clica no botão "Cadastrar"
        Then o sistema mostra a mensagem de erro "Digite um sobrenome válido"

    Scenario: Cadastro com campo email vazio
        When o usuário preenche o formulário com os seguintes dados:
            | campo             | valor            |
            | nome              | João             |
            | sobrenome         | Alves            |
            | email             |                  |
            | confirmar_email   | <gerar_email>    |
            | senha             | Aa12345@         |
            | confirmar_senha   | Aa12345@         |
            | termos            | sim              |
            | maior_18          | sim              |
            And o usuário clica no botão "Cadastrar"
        Then o sistema mostra a mensagem de erro "O e-mail é obrigatório."

    Scenario: Cadastro com campo de confirmação do email vazio
        When o usuário preenche o formulário com os seguintes dados:
            | campo             | valor            |
            | nome              | João             |
            | sobrenome         | Alves            |
            | email             | <gerar_email>    |
            | confirmar_email   |                  |
            | senha             | Aa12345@         |
            | confirmar_senha   | Aa12345@         |
            | termos            | sim              |
            | maior_18          | sim              |
            And o usuário clica no botão "Cadastrar"
        Then o sistema mostra a mensagem de erro "O e-mail é obrigatório."

    Scenario: Cadastro com campo de confirmação do email diferente do email preenchido
        When o usuário preenche o formulário com os seguintes dados:
            | campo             | valor            |
            | nome              | João             |
            | sobrenome         | Alves            |
            | email             | <gerar_email>    |
            | confirmar_email   | teste123@bol.com |
            | senha             | Aa12345@         |
            | confirmar_senha   | Aa12345@         |
            | termos            | sim              |
            | maior_18          | sim              |
            And o usuário clica no botão "Cadastrar"
        Then o sistema mostra a mensagem de erro "Os e-mails não correspondem, digite novamente." 

    Scenario: Cadastro de email ja registrado no sistema
        When o usuário preenche o formulário com os seguintes dados:
            | campo             | valor            |
            | nome              | João             |
            | sobrenome         | Alves            |
            | email             | test@bol.com     |
            | confirmar_email   | test@bol.com     |
            | senha             | Aa12345@         |
            | confirmar_senha   | Aa12345@         |
            | termos            | sim              |
            | maior_18          | sim              |
            And o usuário clica no botão "Cadastrar"
        Then o sistema mostra a mensagem de erro "J"

    Scenario: Cadastro com campo senha vazio
        When o usuário preenche o formulário com os seguintes dados:
            | campo             | valor            |
            | nome              | João             |
            | sobrenome         | Alves            |
            | email             | <gerar_email>    |
            | confirmar_email   | <gerar_email>    |
            | senha             |                  |
            | confirmar_senha   | Aa12345@         |
            | termos            | sim              |
            | maior_18          | sim              |
            And o usuário clica no botão "Cadastrar"
        Then o sistema mostra a mensagem de erro "A senha é obrigatória."

    Scenario: Cadastro com campo senha sem atender os requisitos
        When o usuário preenche o formulário com os seguintes dados:
            | campo             | valor            |
            | nome              | João             |
            | sobrenome         | Alves            |
            | email             | <gerar_email>    |
            | confirmar_email   | <gerar_email>    |
            | senha             | aaaaaaaa         |
            | confirmar_senha   | Aa12345@         |
            | termos            | sim              |
            | maior_18          | sim              |
            And o usuário clica no botão "Cadastrar"
        Then o sistema mostra a mensagem de erro "A senha deve conter pelo menos uma letra maiúscula."

    Scenario: Cadastro com campo confirmação de senha vazio
        When o usuário preenche o formulário com os seguintes dados:
            | campo             | valor            |
            | nome              | João             |
            | sobrenome         | Alves            |
            | email             | <gerar_email>    |
            | confirmar_email   | <gerar_email>    |
            | senha             | Aa12345@         |
            | confirmar_senha   |                  |
            | termos            | sim              |
            | maior_18          | sim              |
            And o usuário clica no botão "Cadastrar"
        Then o sistema mostra a mensagem de erro "A confirmação da senha é obrigatória."

    Scenario: Cadastro com campo confirmação de senha diferente da senha informada
        When o usuário preenche o formulário com os seguintes dados:
            | campo             | valor            |
            | nome              | João             |
            | sobrenome         | Alves            |
            | email             | <gerar_email>    |
            | confirmar_email   | <gerar_email>    |
            | senha             | Aa12345@         |
            | confirmar_senha   | ba12345k         |
            | termos            | sim              |
            | maior_18          | sim              |
            And o usuário clica no botão "Cadastrar"
        Then o sistema mostra a mensagem de erro "Senhas incompatíveis, tente novamente."

    Scenario: Cadastro sem marcar checkbox dos termos
        When o usuário preenche o formulário com os seguintes dados:
            | campo             | valor            |
            | nome              | João             |
            | sobrenome         | Alves            |
            | email             | <gerar_email>    |
            | confirmar_email   | <gerar_email>    |
            | senha             | Aa12345@         |
            | confirmar_senha   | Aa12345@         |
            | termos            | nao              |
            | maior_18          | sim              |
            And o usuário clica no botão "Cadastrar"
        Then o sistema mostra a mensagem de erro "Você deve aceitar os termos."
    
    Scenario: Cadastro sem marcar checkbox de maior de 18 anos
        When o usuário preenche o formulário com os seguintes dados:
            | campo             | valor            |
            | nome              | João             |
            | sobrenome         | Alves            |
            | email             | <gerar_email>    |
            | confirmar_email   | <gerar_email>    |
            | senha             | Aa12345@         |
            | confirmar_senha   | Aa12345@         |
            | termos            | sim              |
            | maior_18          | nao              |
            And o usuário clica no botão "Cadastrar"
        Then o sistema mostra a mensagem de erro "Você deve ter 18 anos ou mais."