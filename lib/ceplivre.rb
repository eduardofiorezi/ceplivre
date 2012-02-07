require "ceplivre/version"
require "ceplivre/configuration"

require "httparty"
require "uri"

module CepLivre
  class Cep
    include HTTParty
    
    def self.find(cep, format)
      self.get("http://ceplivre.com.br/consultar/cep/#{CepLivre::Configuration.key}/#{cep}/#{format}")["cep"]
    end
  end

  class Logradouro
    include HTTParty
    
    def self.find(logradouro, format)
    	logradouro_escaped = URI.escape(logradouro, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))
      self.get("http://ceplivre.com.br/consultar/logradouro/#{CepLivre::Configuration.key}/#{logradouro_escaped}/#{format}")["cep"]
    end
  end
end