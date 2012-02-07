# Cep Livre GEM

Lib para facilitar a busca de CEP e Logradouro em qualquer aplicação Ruby e Rails que queira utilizar a API do serviço ceplivre.com.br

## Compatibilidade

* Testada com Ruby 1.9.2 e aplicações Rails 3.1

## Instalação

### Como gem

Adicione ao arquivo Gemfile da sua aplicação:
	
	gem "ceplivre"
	
e execute o comando:

	bundle install
	
### Crie um arquivo de configuração

Crie um arquivo de configuração na sua aplicação (config/initializers/ceplivre.rb) com sua chave da API:

	CepLivre::Configuration.key = "Chave da API"

## Como utilizar

Para pesquisar por CEP:

	CepLivre::Cep.find("22030-030", :json)
	
Para pesquisar por Logradouro:

	CepLivre::Logradouro.find("Nossa Senhora de Copacabana", :json)
	

## Contribuição

Para contribuir, basta enviar um Pull Request com seus devidos testes.


## Créditos

* Eduardo Fiorezi - [hooppe.com](http://hooppe.com)
* Felipe Bazzarella - [bazzarella.com](http://bazzarella.com)