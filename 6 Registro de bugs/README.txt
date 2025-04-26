#- 🪲 Registro de Bugs encontrados

Bug 1
Ocorrencia: Ao tentar cadastrar um e-mail já cadastrado o sistema retorna uma mensagem de erro incompleta
Reprodução: 1 - Acessar tela de cadastro
            2 - Preencher todos os campos de forma adequada(exceto campos e-mail e confirmação de e-mail)
            3 - Preencher os campos (e-mail e confirmação de e-mail) com um e-mail já cadastrado
            4 - Clicar no botão "Cadastrar" 
Resolução do problema: Alterar o erro retornada com uma mensagem clara para o usuário entender o problema e tentar cadastrar outro e-mail 

Bug 2
Ocorrencia: Após realizar o pós cadastro e clicar em algum botão(Imagem de início ou botão buscar profissional) o sistema retorna ao pós cadastro, tendo que preencher novamente todas as opções
Reprodução: 1 - Acessar o sistema pela primeira vez
            2 - Marcar uma opção para cada pergunta e avançar a cada questionário
            3 - Clicar no botão "Buscar Profissional"
Resolução do problema: Existe algum problema no fluxo do projeto, algum gatilho que está causando esse problema, para dar uma solução seria necessário uma análise mais completa do código da aplicação para efetuar a correção devida.

Bug 3
Ocorrencia: Após realizar a alteração de senha e efeturar o login o usuário é obrigado a realizar novamente o pós cadastro
Reprodução: 1 - Na tela de "esqueci a senha" preencher o e-mail
            2 - No e-mail clicar no link enviado para realizar a alteração da senha
            3 - Após efeturar a alteração, fazer o login no sistema
Resolução do problema: Reparar o fluxo do sistema que trata o usário que teve sua senha alterada como um usuário que está fazendo o primeiro login no sistema. Para análise mais aprofundada seria necessário conhecer o código da aplicação

Bug 4
Ocorrencia: Ao tentar alterar seus dados na versão mobile o campo de data de nascimento fica difícil de acessar
Reprodução: 1 - Na tela de alteração de usuário
            2 - Tente clicar no campo "data de nascimento"
Resolução do problema: Durante a execução encontrei um botão invisível acima do campo que me permite preencher o campo. Seria necessário realizar uma mudança nesse campo, deixando as informações/botão visíveis e de forma clara.