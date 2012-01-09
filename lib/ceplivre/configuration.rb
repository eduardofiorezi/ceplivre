module CepLivre
  class Configuration
    @@key = nil
    
    def self.key
      @@key || "your_key"
    end
    
    def self.key=(key)
      @@key = key
    end
  end
end