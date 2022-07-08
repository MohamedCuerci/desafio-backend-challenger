# **Resposta ao "Desafio Backend Mobile2You-Dimensa"**

## **Objetivo Principal do desafio**
Criar 2 endpoints, sendo eles:<br>
Um endpoint(#index) para listar todos os filmes cadastrados e outro endpoint(#create) para realizar a leitura e gravação de um arquivo CSV

### **Objetivos:**

- O desafio deve ser desenvolvido utilizando Ruby e tendo o Rails como framework. :heavy_check_mark: <br>
    ```ruby "3.0.4" | rails, "~> 7.0.3"```

- Poderá optar pelos bancos de dados SQLite, Postgresql ou MongoDB. :heavy_check_mark:<br>
    ```sqlite3, "~> 1.4"```

- Seguir o padrão API RESTful. :heavy_check_mark:<br>
- Ordenar pelo ano de lançamento. :heavy_check_mark: <br>
- Filtrar os registros por ano de lançamento, gênero, país, etc. :heavy_check_mark:
- Garantir que não haja duplicidade de registros. :heavy_check_mark: <br>
- O projeto deve ser disponibilizado em um repositório aberto no GitHub.:heavy_check_mark:
- Testes são bem-vindos. :heavy_check_mark:

### **Resumo**
 Adorei realizar esse desafio, sinto que consegui aprender bastante durante essa jornada.

obs: utilizei o app insomnia para verificar se o crud estava correndo bem <br>

### **Como rodar o projeto**
Clone o repositório e inicie o servidor com<br>
```rails s``` e
pelo navegador acesse "http://localhost:3000/api/v1/catalogues" para vizualizar todos os arquivos ordenados pelo ano.

### **Filtrando os registros**

Para filtrar os registros basta, após a url, adicionar "?campo=tipo", por exemplo "http://localhost:3000/api/v1/catalogues?genre=movie" retorna todos os registros com o genêro de filme.

Para filtrar múltiplos parâmetros, separe-os com "&", por exemplo "http://localhost:3000/api/v1/catalogues?genre=movie&release_year=2020", retornaria todos os registros com o genêro igual a movie e com a ano de lançamento em 2020.

Eu criei um modulo chamado Filterable no model/concern/filterable.rb, nele criei uma função para filtrar TODOS os parametros que chegarem. No model criei escopos com os parametros e ditando a maneira que a busca é realizada. No controller apenas, passo a função e os parametros.<br>
Dessa maneira, o código fica organizado e eu poderia usar a mesma lógica com outros models.

obs: Caso a pesquisa tenha espaço " ", use "_". ex: "?genre=tv_show"

- Gems adicionais utilizadas durante o projeto
```
  gem 'jbuilder'
  gem "rspec-rails"
  gem "factory_bot_rails"
  gem "faker"
```
