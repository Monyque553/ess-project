scenario: Adicionar um novo recurso ou equipamento
GIVEN o administrador está na página de "gerenciamento de recursos"
WHEN o administrador seleciona a opção "Adicionar novo recurso"
AND o administrador preenche as informações do recurso (nome, descrição, quantidade)
AND o administrador confirma a adição
THEN o novo recurso está disponível no sistema
AND o sistema exibe uma mensagem de sucesso "Recurso adicionado com sucesso"

scenario: Editar um recurso ou equipamento existente
GIVEN o administrador está na página de "gerenciamento de recursos"
AND existe um recurso chamado "<Recurso>" cadastrado no sistema
WHEN o administrador seleciona o recurso "<Recurso>" para edição
AND o administrador modifica as informações do recurso (nome, descrição, quantidade)
AND o administrador confirma as alterações
THENo recurso "<Recurso>" tem suas informações atualizadas no sistema
AND o sistema exibe uma mensagem de sucesso "Recurso atualizado com sucesso"

scenario: Remover um recurso ou equipamento
GIVEN o administrador está na página de "gerenciamento de recursos"
AND existe um recurso chamado "<Recurso>" cadastrado no sistema
WHEN o administrador seleciona "Remover recurso" para o "<Recurso>"
AND confirma a remoção
THEN o recurso “<Recurso>" é removido do sistema
AND o sistema exibe a mensagem "Recurso removido com sucesso"

scenario: Remover um recurso ou equipamento associado a uma reserva futura
Given o administrador está na página de "gerenciamento de recursos"
And existe um recurso chamado "Projetor" cadastrado no sistema
And o recurso "Projetor" está associado a uma reserva futura
When o administrador seleciona a opção "Remover recurso" para o recurso "Projetor"
And o administrador confirma a remoção
Then o sistema alerta o administrador que o recurso está associado a uma reserva futura
And o recurso "Projetor" não é removido do sistema

