# Ruby Marketplace

![Ruby Marketplace](https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Ruby_On_Rails_Logo.svg/1200px-Ruby_On_Rails_Logo.svg.png)

Uma aplicação de marketplace construída com Ruby on Rails.

## Índice

- [Sobre](#sobre)
- [Funcionalidades](#funcionalidades)
- [Pré-requisitos](#pré-requisitos)
- [Instalação](#instalação)
- [Uso](#uso)
- [Testes](#testes)

## Sobre

O **Ruby Marketplace** é uma aplicação web desenvolvida com Ruby on Rails que permite a criação e gerenciamento de um marketplace online. Os usuários podem listar produtos, fazer compras, e gerenciar suas contas de forma intuitiva.

## Funcionalidades

- **Autenticação de Usuários**: Cadastro, login e logout de usuários.
- **Gerenciamento de Produtos**: Criação, leitura, atualização e exclusão de produtos.
- **Carrinho de Compras**: Adicionar, remover e gerenciar itens no carrinho de compras.
- **Processamento de Pagamentos**: Integração com gateways de pagamento para processar transações.
- **Pesquisa e Filtros**: Pesquisa avançada e filtros para facilitar a navegação dos produtos.

## Pré-requisitos

Antes de começar, você precisará ter as seguintes ferramentas instaladas em sua máquina:

- [Ruby 3.1.4](https://www.ruby-lang.org/en/documentation/installation/)
- [Rails 7.0.4](https://guides.rubyonrails.org/v7.0/getting_started.html)
- [PostgreSQL](https://www.postgresql.org/download/) (ou outro banco de dados compatível)
- [Bundler](https://bundler.io/)

## Instalação

Siga os passos abaixo para configurar o ambiente de desenvolvimento local:

1. Clone o repositório:
    ```sh
    git clone https://github.com/zerefstbl/ruby-marketplace.git
    cd ruby-marketplace
    ```

2. Instale as dependências:
    ```sh
    bundle install
    ```

3. Configure o banco de dados:
    ```sh
    rails db:create
    rails db:migrate
    ```

4. (Opcional) Popule o banco de dados com dados iniciais:
    ```sh
    rails db:seed
    ```

5. Inicie o servidor Rails:
    ```sh
    rails server
    ```

## Uso

Para usar a aplicação, abra o navegador e acesse `http://localhost:3000`. A partir daí, você pode:

- **Criar uma Conta**: Registre-se para acessar todas as funcionalidades.
- **Listar Produtos**: Navegue e pesquise por produtos no marketplace.
- **Adicionar ao Carrinho**: Adicione produtos ao carrinho de compras.
- **Finalizar Compra**: Complete a compra dos produtos no carrinho.

## Testes

Os testes são essenciais para garantir a qualidade e funcionalidade do código. Esta aplicação utiliza o [RSpec](https://rspec.info/) para testes. Para rodar os testes, use o seguinte comando:

```sh
bundle exec rspec
```
## Projeto baseado nas lives da SkillDevs https://www.youtube.com/@skilldevs
