require "ceplivre/version"
require "ceplivre/configuration"

require "httparty"

module CepLivre
  class Cep
    include HTTParty
    
    def self.find(cep, format)
      self.get("http://ceplivre.com.br/consultar/cep/#{CepLivre::Configuration.key}/#{cep}/#{format}")
    end
  end
end
