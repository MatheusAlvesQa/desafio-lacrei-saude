#Os casos de testes exigem um pré-requisito de acesso à uma internet estavel, um e-mail válido e um dispositivo mobile
@mobile @internet
Feature: Casos de teste para o fluxo Cadastro → Pós Cadastro → Buscar Profissional.

    Scenario: Cadastro realizado com sucesso
        Given que o usuário está na tela principal do sistema
            And o usuário clica no botão "Criar conta"
        When o usuário está na tela "Crie sua conta na Lacrei Saúde"
            And o usuário informa um nome válido "João"
            And o usuário informa um sobrenome válido "Alves"
            And o usuário informa um e-mail válido "alvesmatheusteste@hotmail.com"
            And o usuário confirma o mesmo e-mail no campo de confirmação "alvesmatheusteste@hotmail.com"
            And o usuário digita uma senha que atenda os requisitos mínimos "Aa12345@"
            And o usuário confirma a mesma senha no campo de confirmação "Aa12345@"
            And o usuário marca a caixa "Li e concordo com os termos"
            And o usuário marca a caixa "Tenho 18 anos ou mais"
            And o usuário clica no botão "Cadastrar"
        Then o usuário deve ser redirecionado para a página "Estamos quase lá" solicitando confirmação de e-mail

    Scenario: Completar o pós-cadastro
        Given que o usuário confirmou o e-mail
            And continuo na página "Estamos quase lá"
        When o usuário clica no botão "Voltar ao Login"
            And o usuário informa o e-mail cadastrado no campo e-mail "alvesmatheusteste@hotmail.com"
            And o usuário informa a senha cadastrada no campo senha "Aa12345@"
            And o usuário clica no botão "entrar"
            And o usuário clica no botão "continuar cadastro"
            And o usuário seleciona uma opção da pergunta "Com qual pronome você se identifica?"
            And o usuário clica no botão "próximo"
            And o usuário seleciona uma opção da pergunta "Com qual etnia você se identifica?"
            And o usuário clica no botão "próximo"
            And o usuário seleciona uma opção da pergunta "Qual é a sua identidade de gênero?"
            And o usuário clica no botão "próximo"
            And o usuário seleciona uma opção da pergunta "Qual é a sua sexualidade?"
            And o usuário clica no botão "próximo"
            And o usuário marca alguma opção da pergunta "Você possui alguma deficiência?"
            And o usuário clica no botão "concluir"
        Then o usuário é redirecionado à tela de "Seu cadastro foi concluído!"

     Scenario: Buscar um profissional de saúde
        Given que o usuário deve estar na tela de pós-cadastro
        When o usuário deve clicar no botão "Buscar profissional"
            And o usuário clica no campo "O que deseja encontrar? Ex.: médica trans ou médico gay"
            And o usuário digita a especialidade "Psicologue"
            And o usuário clica no botão "pesquisar"
        Then o usuário é redirecionado à lista de resultados com todos os profissionais de acordo com a pesquisa

