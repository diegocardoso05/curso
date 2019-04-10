#language:pt

Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuário 
    Posso  acessar o sistema com meu email e senha 
    previamente cadastrados.

    Contexto: Home
      Dado que eu acesso o sistema

    @sprint1 @logout @smoke
    Cenario: Usuário autenticado
      
      Quando faço login com "diegocardoso05@gmail.com" e "123456"
<<<<<<< HEAD
      Então vejo a mensagem de boas vindas "Hello, Diego Cardoso"
=======
      Então vejo a mensagem de boas vindas "Olá, Diego"
>>>>>>> 0e16f13645c0a60d2e44f4251ef09b6c45495f5c

    @tentativa_login
    Esquema do Cenario: Tentativa de login
      
      Quando faço login com "<email>" e "<senha>"
      Então vejo a mensagem de alerta "<saida>"

    Exemplos:
      | email                      | senha   | saida                       |
      | diegocardoso05@gmail.com   | xpto123 | Senha inválida              |
      | diegocardoso05@gmail.i     | xpto123 | Email incorreto ou ausente. |
      |                            | 123456  | Email incorreto ou ausente. |
      | diegocardoso05@gmail.com   |         | Senha ausente               |

