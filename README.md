# sync
projeto realizado para sincronizar por meio do github os meus arquivos principais, assim sempre terei em qualquer máquina acesso aos meus arquivos importantes
Sem depender de ferramentas externas como o Google Drive ou OneDrive

A configuração do projeto é feita pelos arquivos na pasta ```_config```
Vale lembrar que é necessário configurar uma ```SSH Key``` para que possa realizar o pull e push por meio do cron

# Setup
O primeiro passo é realizar o fork ou criar seu proprio repositório com o conteúdo da pasta ```_config```.
Após isso, vá até a pasta que deseja usar como local de sincronismo.
Exemplo:
```sh
cd ~/{seu-usuario}/documents
```
Faça o clone do repositório remoto
```sh 
git clone {seu-repositorio}
```
> O exemplo deste comando se encontra comentado dentro do arquivo ```init.sh```

Após a conclusão, vá no arquivo ```sync.sh``` e faça o ajuste do caminho para o acesso a sua chave SSH, que normalmente se encontra na sua pasta de usuário.
> O script já está apontando para o diretório padrão, faltando apenas trocar o {seu-usuario}
Salve o arquivo e depois disso, execute o script do arquivo ```init.sh```.

Caso tenha concluído tudo com sucesso, seu sync já está funcionando. 

# Observações
Por padrão, o sync está configurado para executar a cada 1 minuto, procurando arquivos modificados, realizando commit e o sincronismo dos arquivos com o repositório remoto. 
Essa configuração é possível de alterar antes do setup do projeto, dentro do arquivo ```init.sh```, na parte do ```cron```. Depois do setup, caso queria alterar, será necessário um pouco mais de conhecimentos com o crontab, mas basta realizar algumas pesquisas ou mesmo acessando o ```man cron``` no terminal para ler a documentação.


