Feature:Configuração do produto
  Como cliente da Ebac-Shop
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Background:
    Given Entrar na Ebac-Shop e escolher um produto

  Scenario:Editar o produto corretamente
    When escolher a cor "vermelha" , tamanho "m"
    And "3" unidades
    Then eu posso inserir o produto no carrinho


  Scenario Outline:Válidar configurções inválidas
    When escolher a <cor>, <tamanho>
    And <quatidade>
    Then deve mostrar a <mensagem> de erro

    Examples:

      | Cor   | Tamanho | Quantidade | Mensagem |
      | -     | M       | 2          | erro     |
      | Azul  | -       | 3          | erro     |
      | Verde | G       | 0          | erro     |
      | -     | -       | -          | erro     |

  Background:
    Given Validar quantidade e reset das edições do produto

  Scenario:Deve permitir 10 produtos no carrinho
    When eu por 10 produtos no carrinho
    Then deve efetuar com sucesso

  Scenario:Deve rejeitar 11 produtos no carrinho
    When eu por 11 produtos no carrinho
    Then deve rejeitar a compra

  Scenario:Botão de limpar deve ir para o estado inicial
    When eu clicar no Botão "Limpar"
    Then deve apagar as configuração feita

  Scenario:Botão de limpar não indo para o estado inicial
    When eu clicar no Botão "Limpar"
    And não ir para o estado inicial
    Then deve aperecer um mensagem de erro



