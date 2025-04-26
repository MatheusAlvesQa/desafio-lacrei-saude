#O cenário de teste foi feito de forma manual escolhida a página de login
@Mobile @Desktop
Feature: Cenário de teste de responsividade
    Testar a responsividade em dois dispositivos diferentes, um mobile(Iphone 12 pro) e um desktop

    Scenario: Testar a responsividade da tela login em um 'iphone 12 pro' e um 'desktop'

        Given estar acessando a tela de login do site Lacrei Saúde "https://paciente-staging.lacreisaude.com.br/" através de um iphone 12 pro
        When verifico os campos, o layout, os botões, os links e as funcionalidades
        Then os elementos testados devem responder de forma fluída e sem ocorrencia de bugs ou gargalo e devem estar adaptados para a tela pequena

        Given estar acessando a tela de login do site Lacrei Saúde "https://paciente-staging.lacreisaude.com.br/" através de um desktop
        When verifico os campos, o layout, os botões, os links e as funcionalidades
        Then os elementos testados devem responder de forma fluída e sem ocorrencia de bugs ou gargalo e devem estar adaptados para a tela grande