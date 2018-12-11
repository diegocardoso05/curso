#language:pt

Funcionalidade: Login
    Para que eu possa simular o envio de mensagens
    Sendo o Administrador 
    Posso  acessar o sistema com usuário e senha.

      
    
    Cenario: Usuário autenticado
    
      Dado que eu acesso o sistema
      Quando faço login com "admin" e "vivo@1234"
      Então Então vejo a mensagem de boas vindas "Bem-vindo, Administrador!"

    Cenario: Simular envio mensagem

      Dado que acesso o sistema no menu "<SIMULADOR>"
      Quando preencho dados com "<canal>", "<linha>", "<plataforma>", "<ShortCode>" e "<texto>"
      Então vejo a mensagem de de resultado "<resultado>"

Exemplos:
      | canal          | senha   | saida                       |
      | eu@papito.io   | xpto123 | Senha inválida              |
      | eu@papito404.i | xpto123 | Email incorreto ou ausente. |
      |                | 123456  | Email incorreto ou ausente. |
      | eu@papito.io   |         | Senha ausente               |
