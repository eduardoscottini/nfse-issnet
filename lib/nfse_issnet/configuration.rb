module NfseIssnet
  class Configuration
    attr_accessor :certificate_pkcs12_value, :certificate_pkcs12_password

    def initialize
      self.certificate_pkcs12_value = nil
      self.certificate_pkcs12_password = nil
    end
  end
end