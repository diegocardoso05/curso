#language:pt

Funcionalidade: Login
    Para que eu possa simular o envio de mensagens
    Sendo o Administrador 
    Posso  acessar o sistema com usuário e senha.

    Contexto: Home
      Dado que eu acesso o sistema

    Cenario: Usuário autenticado
    
      Quando faço login com "admin" e "vivo@1234"
      Então Então vejo a mensagem de boas vindas "Bem-vindo, Administrador!"

    Cenario: Simular envio mensagem SMS

      Dado que acesso o sistema no menu "SIMULADOR"
      Quando preencho dados com "<canal>", "<linha>", "<plataforma>", "<ShortCode>" e "<texto>"
      Então vejo a mensagem de "<resultado>"
      E clico na "<opcao>".
      Então vejo a mensagem de "<resultado>"

      Exemplos:
      | Header 1 | Header 2 | Header 3 |
      | Value 1  | Value 2  | Value 3  |



