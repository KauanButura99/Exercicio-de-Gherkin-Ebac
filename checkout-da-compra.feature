Feature:Checkout
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Background:
    Given Validar quantidade e reset das edições do produto

  Scenario:Deve permitir 10 produtos no carrinho
    When eu por 10 produtos no carrinho
    Then deve efetuar com sucesso

  Scenario:Deve rejeitar 13 produtos no carrinho
    When eu por 13 produtos no carrinho
    Then deve rejeitar a compra

  Scenario:Botão de limpar deve ir para o estado inicial
    When eu clicar no Botão "Limpar"
    Then deve apagar as configuração feita


Feature Description