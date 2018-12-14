class TarefasPage
  include Capybara::DSL

  def painel
    find('#task-board')
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
