Feature:Configuração do produto
  Como cliente da Ebac-Shop
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Background:
    Given editar um produto na Ebac-Shop

  Scenario:Editar o produto corretamente

    When escolher a cor , tamanho
    And quantidade
    Then eu posso inserir o produto no carrinho

  Scenario:Editar o produto sem por a cor
    When escolher tamanho
    And quantidade
    Then Deve aparecer a  mensagem de erro


  Scenario:Editar o produto sem por o tamnho da peça
    When escolher a cor
    And quantidade
    Then Deve aparecer a  mensagem de erro




