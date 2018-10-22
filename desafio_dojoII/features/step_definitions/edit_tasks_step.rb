Quando("alterar a tarefa {string}, {string}, {string}") do |string, string2, string3|
  @alterar_tarefas = AlterTasks.new
  @alterar_tarefas.page_edit(string, string2, string3)

  @validacao_alteracao = string3

end
  
  Entao("valido que foi alterado com sucesso") do
  expect(@alterar_tarefas.subject_upcase.text).to have_content @validacao_alteracao.upcase
  expect(@alterar_tarefas.subject_field_alter.text).to have_content @validacao_alteracao
    
 end