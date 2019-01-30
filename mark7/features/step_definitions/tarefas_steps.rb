Dado('que o nome da minha tarefa é {string}') do |nome_tarefa|  
    @nome_tarefa = nome_tarefa
    DAO.new.remover_tarefa(@nome_tarefa, @usuario[:email])
end
  
Dado('a data de finalização será {string}') do |data_finalizacao|
    @data_tarefa = data_finalizacao
end
  
Dado('quero taguear esta tarefa com:') do |tags| 
    @tags = tags.hashes
end

Dado('eu já cadastrei esta tarefa e esqueci') do
    steps %(
        Quando faço o cadastro desta tarefa
    )
end
  
Quando('faço o cadastro desta tarefa')do
    @tarefas_page.cadastrar(@nome_tarefa, @data_tarefa)
end
  
Então('devo ver esta tarefa com o status {string}') do |status_tarefa| 
  expect(
    @tarefas_page.buscar_tr(@nome_tarefa)
  ).to have_content status_tarefa 
end

Então('devo ver a seguinte mensagem:{string}') do |mensagem_alerta|
    expect(@tarefas_page.alerta).to eql mensagem_alerta
end

Então('devo ver somente {int} tarefa com o nome cadastrado') do |quantidade|
    res = DAO.new.buscar_terefa(@nome_tarefa, @usuario[:email])
    expect(res.count).to eql quantidade

    @tarefas_page.voltar
    @tarefas_page.busca(@nome_tarefa)
    expect(@tarefas_page.busca_trs.size).to eql quantidade
end

#REMOVER


Dado("que eu tenho uma tarefa indesejada") do
  @nome_tarefa = 'Tarefa muito boa para ser removida'
  @data_tarefa = '20/08/2019'
  @tarefas_page.cadastrar(@nome_tarefa, @data_tarefa)
end

Quando("eu solicito a exclusão desta tarefa") do
  @tarefas_page.solicita_remocao(@nome_tarefa)
  sleep 10
end

Quando("confirmo a ação de exclusão") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("esta tarefa não deve ser exibida") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("eu desisto de exclusão") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("esta tarefa deve permanecer na lista") do
  pending # Write code here that turns the phrase above into concrete actions
end