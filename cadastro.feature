Feature: cadastro e Checkout
  Como cliente da EBAC-SHOP
  Quero fazer concluir meu cadastro
  Para finalizar minha compra

  Background:
    Given entrar no site Ebac-Shop em Jánela de cadastro

  Scenario:Cadastro feito com sucesso

    When Cadastrar email "jose.pedro@gmail.com"
    And Senha "1234@abc"
    Then você deve ser direcionado para o "Meu painel"


  Scenario Outline: Campos de cadastro vazio
    When Deixar o campo <email>
    And <senha> em branco
    Then Deve mostrar uma mensagem de erro "Campo obrigatorio não preenchido"

    Examples:
      | email                | senha | menssagem                  |
      | -                    | -     | Campos obrigatorios vazios |
      | -                    | 12345 | Campo email vazio          |
      | jose.pedro@gmail.com | -     | Campo senha vazio          |

