# ceplivre gem

## Como configurar

Crie um arquivo de configuração na sua aplicação rails.

/config/initializers/ceplivre.rb

CepLivre::Configuration.key = "Key recebida do cep livre"

## Como utiliza

Basta chamar utilizar o seguinte comando:

CepLivre::Cep.find("22030-030", :json)