Dado("que eu acesso o sistema") do
    visit  'http://localhost:7001/SelfCareManagerWEB/login.jsf'
  end
  
  Quando("faço login com {string} e {string}") do |usuario, senha|
    find('input[type=text]').set usuario
    find('input[type=password]').set senha
    find('input[type=submit]').click
  end
  
  Então("Então vejo a mensagem de boas vindas {string}") do |mensagem|
    alerta = find('label[id*=labelLogin]')
    expect(alerta).to have_content mensagem
  end