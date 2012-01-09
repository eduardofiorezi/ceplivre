# encoding: UTF-8
require 'spec_helper'

describe "CepLivre" do
  before do
    CepLivre::Configuration.key = "" #add a test key
  end
  
  describe "find_cep" do
    it "should get data from cep livre api" do
      CepLivre::Cep.find("22031-030", :json).should == {"cep"=>[{"tp_logradouro"=>"Rua", "tp_logradouro_id"=>"11", "logradouro"=>"Silva Castro", "bairro"=>"Copacabana", "cidade"=>"Rio de Janeiro", "uf_sigla"=>"RJ", "ufnome"=>"Rio de Janeiro", "id_estado_ibge"=>"33", "cep"=>"22031-030", "muncoddv"=>"3304557", "ddd"=>"21", "altitude"=>"2", "latitude"=>"-22.903", "longitude"=>"-43.208", "area"=>"1182.296", "capital"=>"S"}]}
    end
  end
end
