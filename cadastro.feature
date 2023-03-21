    #language: pt

    Funcionalidade: cadastro e Checkout
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Contexto:
    Dado entrar no site Ebac-Shop em Jánela de cadastro

    Cenario:Deve preencher todos os campos marcados com asteriscos
    Quando eu preencher todos os campos obrigatorios com asteriscos
    E apertar para se registrar
    Entao deve mostrar uma messagem 'Cadastro com sucesso '

    Esquema do Cenario:Quando o usuario não preencher os campos com asterisco deve aparecer uma mensagem de erro
    Quando O usuario não por <email>
    E <senha>
    Entao deve aparecer uma <mensagem> de erro

    Examples:
      | Email                 | Senha    | Mensagem                                         |
      | -                     | -        | Campos obrigatorios não preenchidos              |
      | jose.pedro@gamail.com | -        | Campo senha deve ser obrigatorio preenchido      |
      | -                     | 1234abcd | Campo email deve ser obrigatoriamente preenchido |


    Cenario: Quando inserir um email com formato inválido o sistema deve enviar uma mensagem de erro
    Quando eu colocar um email "36447474757773.net"
    Entao deve mostrar uma mensagem de erro "email cadastrado inválido"

    Cenario: Quando inserir um email válido o sistema deve aceitar com sucesso
    Quando Eu inserir um email "mariasilva@gmail.com"
    Entao o sitema deve validar o cadastro com sucesso


    Esquema do Cenario: Quando tentar se cadastrar com campos em brancos deve aparecer uma mensagem de erro
    Quando eu deixar campo <email>
    E <senha> em brancos
    Entao deve mostrar uma mensegem de erro

    Examples:
      | Email                 | Senha  | Mensagem               |
      | -                     | 123456 | Alerta                 |
      | jose.perdro@gmail.com | -      | Alerta                 |
      | jose.perdro@gmail.com | 123456 | Finalizado com sucesso |