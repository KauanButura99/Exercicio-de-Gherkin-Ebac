    #language: pt
    Funcionalidade:Configuração do produto
    Como cliente da Ebac-Shop
    Quero configurar meu produto de acordo com meu tamanho e gosto
    E escolher a quantidade
    Para depois inserir no carrinho

    Contexto:
    Dado Entrar na Ebac-Shop e escolher um produto

    Cenario:Editar o produto corretamente
    Quando escolher a cor "vermelha" , tamanho "m"
    E "3" unidades
    Então eu posso inserir o produto no carrinho

    Esquema do Cenario: Válidar configurções inválidas
    Quando  escolher a <cor>, <tamanho>
    E <quatidade>
    Então deve mostrar a <mensagem> de erro

    Examples:

      | Cor   | Tamanho | Quantidade | Mensagem |
      | -     | M       | 2          | erro     |
      | Azul  | -       | 3          | erro     |
      | Verde | G       | 0          | erro     |
      | -     | -       | -          | erro     |

Contexto:
Dado Deve entrar na pagina de carrinho na EBAC - SHOP

Cenario:Deve permitir 10 produtos no carrinho
Quando eu por 10 produtos no carrinho
Então deve efetuar com sucesso

Cenario:Deve rejeitar 11 produtos no carrinho
Quando eu por 11 produtos no carrinho
Então deve rejeitar a compra

Cenario:Botão de limpar deve ir para o estado inicial
Quando eu clicar no Botão "Limpar"
Então deve apagar as configuração feita

Cenario:Botão de limpar não indo para o estado inicial
Quando eu clicar no Botão "Limpar"
E não ir para o estado inicial
Então deve aperecer um mensagem de erro



