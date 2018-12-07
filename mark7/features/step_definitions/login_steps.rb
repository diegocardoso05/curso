Dado("que eu acesso o sistema") do
  @login_page = LogiPage.new
  @login_page.acessa
end
  
Quando("faço login com {string} e {string}") do |email, senha|
  @login_page.logar(email, senha)
end
  
Então("vejo a mensagem de boas vindas {string}") do |mensagem|
  painel_tarefas = find('#task-board')
  expect(painel_tarefas).to have_content mensagem
end

Então("vejo a mensagem de alerta {string}") do |mensagem|
  alerta = find('.alert-login')
  expect(alerta).to have_content mensagem
end
