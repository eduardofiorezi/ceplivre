# encoding: UTF-8
require 'spec_helper'

describe "CepLivre" do
  before :all do
    CepLivre::Configuration.key = "" # Add a test key
  end
  
  describe "find_cep" do
    context "json format" do
      it "should get data from cep livre api" do
        CepLivre::Cep.find("22031-030", :json).should == [{"tp_logradouro"=>"Rua", "tp_logradouro_id"=>"11", "logradouro"=>"Silva Castro", "bairro"=>"Copacabana", "cidade"=>"Rio de Janeiro", "uf_sigla"=>"RJ", "ufnome"=>"Rio de Janeiro", "id_estado_ibge"=>"33", "cep"=>"22031-030", "muncoddv"=>"3304557", "ddd"=>"21", "altitude"=>"2", "latitude"=>"-22.903", "longitude"=>"-43.208", "area"=>"1182.296", "capital"=>"S"}]
      end
    
      it "should return a empty array when not find a cep" do
        CepLivre::Cep.find("12345-000", :json).should == []
      end
    end
  end

  describe "find_logradouro" do
    context "json format" do
      it "should get data from cep livre api" do
        CepLivre::Logradouro.find("Nossa Senhora de Copacabana", :json).should == [{"tp_logradouro"=>"Rua", "tp_logradouro_id"=>"11", "logradouro"=>"Nossa Senhora de Copacabana", "bairro"=>"Piedade", "cidade"=>"Jaboatão dos Guararapes", "uf_sigla"=>"PE", "ufnome"=>"Pernambuco", "id_estado_ibge"=>"26", "cep"=>"54410-250", "muncoddv"=>"2607901", "ddd"=>"81", "altitude"=>"76", "latitude"=>"-8.113", "longitude"=>"-35.015", "area"=>"256.073", "capital"=>"N"}, {"tp_logradouro"=>"Rua", "tp_logradouro_id"=>"11", "logradouro"=>"Nossa Senhora de Copacabana", "bairro"=>"Leblon (Venda Nova)", "cidade"=>"Belo Horizonte", "uf_sigla"=>"MG", "ufnome"=>"Minas Gerais", "id_estado_ibge"=>"31", "cep"=>"31575-100", "muncoddv"=>"3106200", "ddd"=>"31", "altitude"=>"858", "latitude"=>"-19.817", "longitude"=>"-43.956", "area"=>"330.954", "capital"=>"S"}, {"tp_logradouro"=>"Avenida", "tp_logradouro_id"=>"2", "logradouro"=>"Nossa Senhora de Copacabana", "bairro"=>"Vila São João", "cidade"=>"Queimados", "uf_sigla"=>"RJ", "ufnome"=>"Rio de Janeiro", "id_estado_ibge"=>"33", "cep"=>"26379-010", "muncoddv"=>"3304144", "ddd"=>"21", "altitude"=>"30", "latitude"=>"-22.716", "longitude"=>"-43.555", "area"=>"76.921", "capital"=>"N"}, {"tp_logradouro"=>"Avenida", "tp_logradouro_id"=>"2", "logradouro"=>"Nossa Senhora de Copacabana", "bairro"=>"Leme", "cidade"=>"Rio de Janeiro", "uf_sigla"=>"RJ", "ufnome"=>"Rio de Janeiro", "id_estado_ibge"=>"33", "cep"=>"22010-121", "muncoddv"=>"3304557", "ddd"=>"21", "altitude"=>"2", "latitude"=>"-22.903", "longitude"=>"-43.208", "area"=>"1182.296", "capital"=>"S"}, {"tp_logradouro"=>"Avenida", "tp_logradouro_id"=>"2", "logradouro"=>"Nossa Senhora de Copacabana", "bairro"=>"Copacabana", "cidade"=>"Rio de Janeiro", "uf_sigla"=>"RJ", "ufnome"=>"Rio de Janeiro", "id_estado_ibge"=>"33", "cep"=>"22020-001", "muncoddv"=>"3304557", "ddd"=>"21", "altitude"=>"2", "latitude"=>"-22.903", "longitude"=>"-43.208", "area"=>"1182.296", "capital"=>"S"}, {"tp_logradouro"=>"Avenida", "tp_logradouro_id"=>"2", "logradouro"=>"Nossa Senhora de Copacabana", "bairro"=>"Copacabana", "cidade"=>"Rio de Janeiro", "uf_sigla"=>"RJ", "ufnome"=>"Rio de Janeiro", "id_estado_ibge"=>"33", "cep"=>"22020-002", "muncoddv"=>"3304557", "ddd"=>"21", "altitude"=>"2", "latitude"=>"-22.903", "longitude"=>"-43.208", "area"=>"1182.296", "capital"=>"S"}, {"tp_logradouro"=>"Avenida", "tp_logradouro_id"=>"2", "logradouro"=>"Nossa Senhora de Copacabana", "bairro"=>"Copacabana", "cidade"=>"Rio de Janeiro", "uf_sigla"=>"RJ", "ufnome"=>"Rio de Janeiro", "id_estado_ibge"=>"33", "cep"=>"22070-012", "muncoddv"=>"3304557", "ddd"=>"21", "altitude"=>"2", "latitude"=>"-22.903", "longitude"=>"-43.208", "area"=>"1182.296", "capital"=>"S"}, {"tp_logradouro"=>"Avenida", "tp_logradouro_id"=>"2", "logradouro"=>"Nossa Senhora de Copacabana", "bairro"=>"Copacabana", "cidade"=>"Rio de Janeiro", "uf_sigla"=>"RJ", "ufnome"=>"Rio de Janeiro", "id_estado_ibge"=>"33", "cep"=>"22060-002", "muncoddv"=>"3304557", "ddd"=>"21", "altitude"=>"2", "latitude"=>"-22.903", "longitude"=>"-43.208", "area"=>"1182.296", "capital"=>"S"}, {"tp_logradouro"=>"Avenida", "tp_logradouro_id"=>"2", "logradouro"=>"Nossa Senhora de Copacabana", "bairro"=>"Copacabana", "cidade"=>"Rio de Janeiro", "uf_sigla"=>"RJ", "ufnome"=>"Rio de Janeiro", "id_estado_ibge"=>"33", "cep"=>"22050-002", "muncoddv"=>"3304557", "ddd"=>"21", "altitude"=>"2", "latitude"=>"-22.903", "longitude"=>"-43.208", "area"=>"1182.296", "capital"=>"S"}, {"tp_logradouro"=>"Avenida", "tp_logradouro_id"=>"2", "logradouro"=>"Nossa Senhora de Copacabana", "bairro"=>"Copacabana", "cidade"=>"Rio de Janeiro", "uf_sigla"=>"RJ", "ufnome"=>"Rio de Janeiro", "id_estado_ibge"=>"33", "cep"=>"22050-001", "muncoddv"=>"3304557", "ddd"=>"21", "altitude"=>"2", "latitude"=>"-22.903", "longitude"=>"-43.208", "area"=>"1182.296", "capital"=>"S"}, {"tp_logradouro"=>"Avenida", "tp_logradouro_id"=>"2", "logradouro"=>"Nossa Senhora de Copacabana", "bairro"=>"Copacabana", "cidade"=>"Rio de Janeiro", "uf_sigla"=>"RJ", "ufnome"=>"Rio de Janeiro", "id_estado_ibge"=>"33", "cep"=>"22031-000", "muncoddv"=>"3304557", "ddd"=>"21", "altitude"=>"2", "latitude"=>"-22.903", "longitude"=>"-43.208", "area"=>"1182.296", "capital"=>"S"}, {"tp_logradouro"=>"Avenida", "tp_logradouro_id"=>"2", "logradouro"=>"Nossa Senhora de Copacabana", "bairro"=>"Copacabana", "cidade"=>"Rio de Janeiro", "uf_sigla"=>"RJ", "ufnome"=>"Rio de Janeiro", "id_estado_ibge"=>"33", "cep"=>"22060-001", "muncoddv"=>"3304557", "ddd"=>"21", "altitude"=>"2", "latitude"=>"-22.903", "longitude"=>"-43.208", "area"=>"1182.296", "capital"=>"S"}, {"tp_logradouro"=>"Avenida", "tp_logradouro_id"=>"2", "logradouro"=>"Nossa Senhora de Copacabana", "bairro"=>"Leme", "cidade"=>"Rio de Janeiro", "uf_sigla"=>"RJ", "ufnome"=>"Rio de Janeiro", "id_estado_ibge"=>"33", "cep"=>"22010-122", "muncoddv"=>"3304557", "ddd"=>"21", "altitude"=>"2", "latitude"=>"-22.903", "longitude"=>"-43.208", "area"=>"1182.296", "capital"=>"S"}, {"tp_logradouro"=>"Avenida", "tp_logradouro_id"=>"2", "logradouro"=>"Nossa Senhora de Copacabana", "bairro"=>"Copacabana", "cidade"=>"Rio de Janeiro", "uf_sigla"=>"RJ", "ufnome"=>"Rio de Janeiro", "id_estado_ibge"=>"33", "cep"=>"22070-011", "muncoddv"=>"3304557", "ddd"=>"21", "altitude"=>"2", "latitude"=>"-22.903", "longitude"=>"-43.208", "area"=>"1182.296", "capital"=>"S"}, {"tp_logradouro"=>"Avenida", "tp_logradouro_id"=>"2", "logradouro"=>"Nossa Senhora de Copacabana", "bairro"=>"Jardim Guanabara", "cidade"=>"Cuiabá", "uf_sigla"=>"MT", "ufnome"=>"Mato Grosso", "id_estado_ibge"=>"51", "cep"=>"78010-645", "muncoddv"=>"5103403", "ddd"=>"65", "altitude"=>"176", "latitude"=>"-15.596", "longitude"=>"-56.097", "area"=>"3538.167", "capital"=>"S"}]
      end
    
      it "should return a empty array when not find a logradouro" do
        CepLivre::Logradouro.find("Rua Que Não Existe", :json).should == []
      end
    end
  end
end