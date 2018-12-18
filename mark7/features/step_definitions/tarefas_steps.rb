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
    expect(
        @tarefas_page.buscar_tr(@nome_tarefa)
    ).to have_content status_tarefa 
end

Então("devo ver a seguinte mensagem:{string}") do |mensagem_alerta|
    expect(@tarefas_page.alerta).to eql mensagem_alerta
end