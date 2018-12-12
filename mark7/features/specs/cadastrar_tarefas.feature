#language:pt

Funcionalidade: Cadastro de tarefas
    Para que eu possa organizar minha vida
    Sendo uma usuário cadastrado
    Posso adicionar novas tarefas no meu Painel

    @smoke @login
    Cenario: Nova tarefa

        Dado que o nome da minha tarefa é "Fazer Compras"
        E a data de finalização será "20/12/2018"
        E quero taguear esta tarefa com:
            |tag         |
            |Compras     |
            |SuperMercado|
            |Ketchup     |
        Quando faço o cadastro desta tarefa
        Então devo ver esta tarefa com o status "Em andamento"

    Esquema do Cenario: Tentar cadastrar
        
        Dado que o nome da minha tarefa é "<nome>"
        E a data de finalização será "<data>"
        Quando faço o cadastrado desta tarefa
        Então devo ver a seguinte mensagem mensagem:"<mensagem>"

        Exemplos:
            |nome|data|mensagem|
            |Ler|21/12/2018|10 caracteres é o mínimo permitido.|
            ||21/12/2018|Nome é obrigado.|

    Cenario: Tarefa não pode ser duplicada

        Dado que nome da minha tarefa é "Ler um livro MongoDB"
        E a data de finalização será "22/12/2018"
        Mas eu já cadastrei esta tarefa e esqueci
        Quando faço o cadastro desta tarefa
        Então devo ver a seguinte mensagem: "Tarefa duplicada"
          