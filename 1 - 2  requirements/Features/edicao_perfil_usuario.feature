#Os casos de testes exigem um pré-requisito de acesso à uma internet estavel, um e-mail válido e um dispositivo mobile
@mobile @internet
Feature: Casos de teste para inserir e atualizar informações solicitadas, validando as trocas de dados.

    Scenario: Alterar informações de um usuário
        Given que o usuário deve estar logado no sistema
            And o usuário deve na tela "Boas-vindas à Lacrei Saúde!"
        When o usuário clica na imagem representada por um bonquinho
            And o usuário clica em "perfil"
            And o usuário clica em "Editar dados"
            And o usuário altera informações de perfil incluindo foto como desejar
            And o usuário precisa preencher uma data de nascimento válida "14/01/1999" para conseguir salvar alterações
            And o usuário clica no botão "Salvar"
        Then o usuário é redirecionado ao perfil com as informações devidamente atualizadas