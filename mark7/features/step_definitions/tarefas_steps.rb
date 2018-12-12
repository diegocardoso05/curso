Dado("que o nome da minha tarefa é {string}")do | nome_tarefa | 
    @nome_tarefa = nome_tarefa
end
  
Dado("a data de finalização será {string}")do | data_finalizacao | 
    @data_tarefa = data_finalizacao
end
  
Dado("quero taguear esta tarefa com:")do | tags | 
    @tags = tags.hashes
end
  
Quando("faço o cadastro desta tarefa")do
    @tarefas_page.cadastrar(@nome_tarefa, @data_tarefa)
end
  
Então("devo ver esta tarefa com o status {string}")do | status_tarefa | 
    
end