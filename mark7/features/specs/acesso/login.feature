#language:pt

Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuário 
    Posso  acessar o sistema com meu email e senha 
    previamente cadastrados.

    Contexto: Home
      Dado que eu acesso o sistema

    @sprint1 @logout
    Cenario: Usuário autenticado
      
      Quando faço login com "diegocardoso05@gmail.com" e "123456"
      Então vejo a mensagem de boas vindas "Olá, Diego"

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

