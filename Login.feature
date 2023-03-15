Feature: Login
  Como cliente da EBAC-SHOP
  Quero fazer o login (autenticação) na plataforma
  Para visualizar meus pedidos

  Background:
    Given eu entre no site da Ebac-SHOP na pagina de login

  Scenario: Fazer login com sucesso
    When eu fazer o login "jose.pedro@gmail.com"
    And  senha "1234@abc"
    Then deve ir para tela de checkout

  Scenario Outline: Válidar logins inválidos
    When eu fazer o <login>
    And  <senha>
    Then deve mostrar mensagem de "Usauário ou senha inválidos"

    Examples:
      | Usauário             | Senha                | Mensagem                           |
      | jose.pedro@gmail.com | 1234@abc             | erro "Usauário ou senha inválidos" |
      | jose.pedro@gmail.com | cddfftyyggyfreerggyr | erro "Usauário ou senha inválidos" |