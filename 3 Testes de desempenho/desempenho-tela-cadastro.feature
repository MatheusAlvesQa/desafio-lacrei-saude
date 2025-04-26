#O cenário de teste foi feito de forma manual escolhida a página de cadastro
@mobile @internet @GoogleSpeedInsights
Feature: Cenário de teste de desempenho
    Analisar a página de cadastro do site Lacrei Saúde
    Utilizando a ferramenta GoogleSpeedInsights
    Receber uma analise detalhada da pagina quando mobile e como desktop

    Scenario: Analisar desempenho da tela cadastro
        Given estar acessando o site (https://pagespeed.web.dev/)
        When inserir o link da tela de cadastro da Lacrei Saúde "https://paciente-staging.lacreisaude.com.br/cadastro/" no campo "Insira a URL"
            And clicar no botão "analisar"
        Then o sistema deve retornar um diagnóstico de desempenho tanto para mobile quanto para desktop