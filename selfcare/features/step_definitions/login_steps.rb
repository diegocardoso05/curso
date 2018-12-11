Dado("que eu acesso o sistema") do
    @login_page.acessa
  end
  
  Quando("faço login com {string} e {string}") do |usuario, senha|
    @login_page.logar(usuario, senha)
  end
  
  Então("Então vejo a mensagem de boas vindas {string}") do |mensagem|
    expect(@toolbar.painel).to have_content mensagem
  end