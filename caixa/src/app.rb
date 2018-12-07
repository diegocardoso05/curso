class Conta
    attr_accessor :saldo, :mensagem_saida

    def saque(valor)
        if @saldo > valor
            if valor <= 700            
            @saldo -= valor
            @mensagem_saida = 'Saque com sucesso. Muito Obrigado!'
            else
              @mensagem_saida ='Valor máximo por transação deve ser de R$ 700!' 
            end
        else 
            @mensagem_saida = 'Saldo insuficiente para saque.'
        end
    end
  end


  # resolvido 
  # if valor > saldo
  #   @mensagem_saida = 'Saldo insuficiente para saque.'
  # elsif valor > 700 
  #   @mensagem_saida ='Valor máximo por transação deve ser de R$ 700!'
  # else
  #   @saldo -= valor
  #   @mensagem_saida = 'Saque com sucesso. Muito Obrigado!'
  # end