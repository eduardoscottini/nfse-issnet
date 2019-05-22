module Nfse
  module Operations
    class ConsultaNfse < Nfse::Base
      private

      def configure
        self.method_wsdl = :consultar_nfse
        self.default_namespace = 'http://www.issnetonline.com.br/webserviceabrasf/vsd/servico_consultar_nfse_envio.xsd'
        self.template_xml = :servico_consultar_nfse_envio
        self.entity = Nfse::Entities::ServicoConsultarNfseEnvio
      end

      def set_response
        @response = Nfse::Responses::ConsultaNfse.new(savon_response: @original_response).response
      end

    end
  end
end