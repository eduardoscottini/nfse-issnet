module NfseIssnet
  module Utils
    module Assinatura

      class << self
        attr_accessor :certificate, :certificate_key

        def certificate
          @certificate ||= certificate_pkcs12&.certificate
        end

        def certificate_key
          @certificate_key ||= certificate_pkcs12&.key
        end

        private

        attr_accessor :certificate_pkcs12_value, :certificate_pkcs12

        def certificate_pkcs12_value
          @certificate_pkcs12_value ||= File.read(NfseIssnet.configuration.certificate_pkcs12_path)
        end

        def certificate_pkcs12
          return @certificate_pkcs12 if @certificate_pkcs12
          @certificate_pkcs12 = nil
          Thread.new do
            @certificate_pkcs12 = OpenSSL::PKCS12.new(certificate_pkcs12_value, NfseIssnet.configuration.certificate_pkcs12_password)
          end.join

          @certificate_pkcs12
        rescue
          nil
        end
      end
    end
  end
end
