Quando("deletar a tarefa {string}") do |string|
  @deletar_tarefa = DeleteTasks.new
  @deletar_tarefa.delete_page(string)  

end
  
  Entao("valido que a tarefa foi deletada") do
  expect(@deletar_tarefa.msg_validacao_del.text ==  "No results found... Perhaps change your search criteria and try again?")

end