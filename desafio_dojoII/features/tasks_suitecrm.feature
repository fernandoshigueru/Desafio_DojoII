#language: pt
#utf-8

Funcionalidade: Tarefas no site suite CRM
#

Contexto: 
    Dado que estou logado no site suiteCRM

    @criar_tarefa
    Esquema do Cenario: Cadastrar nova tarefa
    Quando cadastrar uma nova tarefa "<subject>", "<status>"
    Entao valido que foi cadastrado com sucesso

    Exemplos:
        |    subject   |    status          |
        |   teste001   |    In Progress     |
     #   |   teste002   |    Not Started     |
     #   |   teste003   |    Completed       |


    @alterar_tarefa
    Esquema do Cenario: Alterar tarefa
    Quando alterar a tarefa "<subject>", "<status>", "<edited>"
    Entao valido que foi alterado com sucesso

    Exemplos:
        |   subject     |    status       |    edited       |
        |   teste001    |   In Progress   |    001teste     |
     #   |   teste002    |   Not Started   |    002teste     |
     #   |   teste003    |   Completed     |    003teste     |


    @deletar_tarefa
    Esquema do Cenario: Deletar tarefa
    Quando deletar a tarefa "<task>"
    Entao valido que a tarefa foi deletada

    Exemplos:
        |   task         |
        |   teste001     |
     #   |   teste002     |
     #   |   teste003     |