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
      Então vejo a mensagem de boas vindas "Hello, Diego"

    @tentativa_login
    Esquema do Cenario: Tentativa de login
      
      Quando faço login com "<email>" e "<senha>"
      Então vejo a mensagem de alerta "<saida>"

    Exemplos:
      | email                      | senha   | saida                |
      | diegocardoso05@gmail.com   | xpto123 | Incorrect password   |
      | diegocardoso05@gmail.i     | xpto123 | Email is required    |
      |                            | 123456  | Email is required    |
      | diegocardoso05@gmail.com   |         | Password is required |

