module Nfse
  class Configuration
    attr_accessor :certificate_pkcs12_path, :certificate_pkcs12_password

    def initialize
      self.certificate_pkcs12_path = nil
      self.certificate_pkcs12_password = nil
    end
  end
end