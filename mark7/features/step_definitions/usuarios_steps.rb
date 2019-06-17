Dado("que eu estou no formulário de cadastro") do
  @usuarios_page.acesso_registra
  DAO.new.remover_usuarios(@email)
end

Dado("possuo os seguintes dados:") do |table|
  @nome = table.rows_hash['nome']
  @email = table.rows_hash['email']
  @senha = table.rows_hash['senha']
end

Quando("faço o meu cadastro") do
  @usuarios_page.cadastrar_usuario(@nome, @email, @senha)
end

Então("vejo a mensagem {string}") do |mensagem_ola|
  expect(@usuarios_page.mensagem_ola).to have_content mensagem_ola
end

Então("vejo a seguinte mensagem de alerta {string}") do |mensagem_alerta|
  expect(@usuarios_page.mensagem_alerta).to have_content mensagem_alerta
end
