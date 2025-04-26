#O cenário de teste foi feito de forma manual escolhida a página de cadastro
@lighthouse
Feature: Cenário de teste de acessibilidade
    Analisar a página de cadastro do site Lacrei Saúde
    Utilizando a ferramenta lighthouse
    Verificar se há conformidade com as diretrizes WCAG 2.1

    Scenario: Analisar acessibilidade da tela de cadastro
        Given estar acessando a tela de cadastro do site Lacrei Saúde "https://paciente-staging.lacreisaude.com.br/cadastro/"
        When utilizar a ferramenta de extensão lighthouse
        Then o sistema deverá retornar o diagnóstico de acessibilidade da tela de cadastro
            And os campos devems ser navegaveis por teclaro e leitores de tela
            And o contraste de cores e legibilidade devem estar de acordo
            And as diretrizes WCAG 2.1 deve ser respeitadas