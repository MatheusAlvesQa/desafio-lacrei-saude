#Os casos de testes exigem um pré-requisito de acesso à uma internet estavel, um e-mail válido e um dispositivo mobile
@mobile @internet
Feature: Casos de teste para o fluxo Buscar Profissional → Contatar Profissional.

    Scenario: Buscar um profissional de saúde
        Given que o usuário deve estar logado no sistema
            And o usuário deve realizou o pós-cadastro
        When o usuário clica no campo "O que deseja encontrar? Ex.: médica trans ou médico gay"
            And o usuário digita a especialidade "Psicologue"
            And o usuário clica no botão "pesquisar"
        Then o usuário é redirecionado à lista de resultados para a minha pesquisa com todos os profissionais

    Scenario: Contatar um profissional de saúde
        Given que o usuário deve estar logado no sistema
            And que o usuário realize previamente o pós-cadastro
            And o usuário deve pesquisar por "médica trans" no campo "O que deseja encontrar? Ex.: médica trans ou médico gay"
        When o usuário deve clicar no botão "Atendimentos" no perfil da profissional escolhida "Mariana Teste"
            And o usuário deve clicar na aba "Atendimentos"
            And o usuário deve clicar no botão "Exibir Contato"
            And o usuário é levado à outra página onde deve confirmar o número de telefone e clicar em "Confirmar" 
        Then as informações da profissional de saúde ficam visíveis para o usuário