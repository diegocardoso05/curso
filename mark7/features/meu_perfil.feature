#language:pt

Funcionalidade: Meu perfil
  Para que eu possa mandar meus dados atualizados
  Sendo um usuário 
  Posso completar o meu cadastro do perfil

  Cenário: Atualizar perfil
    Dado que estou autenticado com "eu@papito.io" e "123456"
    E acesso o meu perfil
    Quando completo o meu cadastro
    Então devo ver a mensagem de atualização cadastral 
    """
    Perfil atualizado com sucesso.
    """