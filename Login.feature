    #language: pt
    Funcionalidade: Login
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Contexto:
    Dado eu entre no site da Ebac-SHOP na pagina de login

    Cenario: Fazer login com sucesso
    Quando eu fazer o login "jose.pedro@gmail.com"
    E  senha "1234@abc"
    Entao deve ir para tela de checkout

    Esquema do Cenario: Válidar logins inválidos
    Quando eu fazer o <login>
    E  <senha>
    Entao deve mostrar mensagem de "Usauário ou senha inválidos"

    Examples:
      | Usauário             | Senha                | Mensagem                           |
      | jose.pedro@gmail.com | 1234@abc             | erro "Usauário ou senha inválidos" |
      | jose.pedro@gmail.com | cddfftyyggyfreerggyr | erro "Usauário ou senha inválidos" |