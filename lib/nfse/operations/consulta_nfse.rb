module Nfse
  module Operations
    class ConsultaNfse < Nfse::Base

      def metodo_wsdl
        :consultar_nfse
      end

      def message_namespaces
        {
          xmlns: 'http://www.issnetonline.com.br/webserviceabrasf/vsd/servico_consultar_nfse_envio.xsd',
          'xmlns:tc': 'http://www.issnetonline.com.br/webserviceabrasf/vsd/tipos_complexos.xsd'
        }
      end

      def entidade
        Nfse::Entities::ServicoConsultarNfseEnvio
      end

      def xml_builder
        Utils::XML.render 'servico_consultar_nfse_envio'
      end

      private

      def set_response
        @response = Nfse::Responses::ConsultaNfse.new(savon_response: @original_response).response
      end

    end
  end
end