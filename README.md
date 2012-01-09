# Cep Livre GEM

Lib criada para facilitar a busca de cep em qualquer aplicação ruby/rails que queria utiliza a api de ceps do serviço ceplivre.com

## Compatibilidade

* Testada com Ruby 1.9.2 e aplicativos rails 3.1

## Instalação

### Como gem

Adicione ao arquivo Gemfile da sua aplicação:
	
	gem "ceplivre"
	
e execute o comando

	bundle install
	
### Crie um arquivo de configuração

Crie um arquivo de configuração na sua aplicação rails config/initializers/ceplivre.rb e coloque a seguinte linha com sua chave de configuracão:

	CepLivre::Configuration.key = "Key recebida do cep livre"

## Como utilizar

Basta utilizar o commando a seguir:

	CepLivre::Cep.find("22030-030", :json)
	

## Contribuição

Para contribuir basta enviar um pull request com seus devidos specs.


## Créditos

*Eduardo Fiorezi - [hooppe.com](http://hooppe.com)