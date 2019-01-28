require 'mongo'

class DAO
  attr_accessor :client

  Mongo::Logger.logger = Logger.new('log/mongo.log')

  def initialize
    #mongodb://usuario:senha@servidor:porta/bando_de_dados
    str_con = 'mongodb://aluno:qaninja@ds225078.mlab.com:25078/heroku_4m3km28x'
    @client = Mongo::Client.new(str_con) 
  end 
  
  def obter_usuario(email)
    users = @client[:users]
    users.find('profile.email' => email).first
  end

  def buscar_terefa(nome, email)
    user = obter_usuario(email)
    task = @client[:tasks]
    task.find('title' => nome, 'createdBy' => user[:_id])
  end

  def remover_tarefa(nome, email)   
    user = obter_usuario(email)
    task = @client[:tasks]
    task.delete_many('title' => nome, 'createdBy' => user[:_id])
  end
  
end