#language: pt

Funcionalidade: Cadastro de usuários
Sendo um visitante
Posso fazer meu cadastro
Para poder gerenciar minhas tarefas

Contexto: Formulário
Dado que eu estou no formulário de cadastro

            @cadastro @logout
            Cenário: Cadastro simples

            E possuo os seguintes dados:
            | nome  | Wade             |
            | email | Wade@qaninja.net |
            | senha | 123456               |
            Quando faço o meu cadastro
            Então vejo a mensagem "Hello, Wade"

            @obrigatorio 
            Esquema do Cenario: Campos obrigatórios

            E possuo os seguintes dados:
            | nome  | <nome>  |
            | email | <email> |
            | senha | <senha> |
            Quando faço o meu cadastro
            Então vejo a seguinte mensagem de alerta "<saida>"

            Exemplos:
            | nome | email            | senha  | saida                |
            |      | wade@qaninja.net | 123456 | Nome é obrigatório.  |
            | Wade |                  | 123456 | Email é obrigatório. |
            | Wade | wade@qaninja.net |        | Informe uma senha.   |