class TarefasPage
  include Capybara::DSL

  def painel
    find('#task-board')
  end

  def buscar_tr(nome)
    find('#tasks tbody tr', text: nome)
  end

  # alertea e uma objeto que retorna um objeto do tipo string
  def alerta
    find('.alert-warn').text
  end

  def cadastrar(nome, data_f)
    find('#insert-button').click
    
    within('#add-task')do
      # fill_in para preecher elemento com ID e ou NAME
      fill_in 'title', with:nome
      fill_in 'dueDate', with:data_f
      click_button 'Cadastrar'

    end
  end
end


#click_link para elemento (link)
#click_button para elemento (botão)
#click_on para elementos span, div, table, etc...
