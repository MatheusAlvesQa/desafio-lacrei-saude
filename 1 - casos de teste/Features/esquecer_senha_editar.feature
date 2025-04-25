#Os casos de testes exigem um pré-requisito de acesso à uma internet estavel, um e-mail válido e um dispositivo mobile
@mobile @internet
Feature: Casos de teste para verificar o fluxo de recuperação de senha via e-mail e garantir que o reset funcione adequadamente.

    Scenario: Esqueci a senha 
        Given que o usuário tenha uma conta previamente cadastrada
            And o usuário deve na tela de login "Boas-vindas à Lacrei Saúde"
        When o usuário clica no botão "Esqueci minha senha"
            And o usuário preenche o e-mail correto no campo "digite seu email"
            And o usuário clica no botão "Enviar link"
            And o usuário acessa o e-mail informado e clica no link de "Redefinir senha"
            And o usuário é redirecionado à tela de "Cadastre nova senha"
            And o usuário informa a "Nova senha" seguindo os requisitos mínimos de aceitação "Aa12345@"
            And o usuário informa no campo "Confirmar nova senha" a senha digitada anteriormente "Aa12345@"
            And o usuário clica no botão "Cadastrar nova senha"
            And o usuário é redirecionado à tela "Senha alterada com sucesso!"
            And o usuário clica no botão "Voltar"
            And o usuário digita no campo "login" o email "alvesmatheusteste@hotmail.com"
            And o usuário digita no campo "senha" a senha atualizada "Aa12345@"
            And o usuário clica no botão "Entrar"
        Then o login é efetuado, porém o usuário deve realizar novamente o pós-cadastro