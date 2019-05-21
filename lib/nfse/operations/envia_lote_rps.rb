module Nfse
  module Operations
    class EnviaLoteRps < Nfse::Base

      def metodo_wsdl
        :recepcionar_lote_rps
      end

      def message_namespaces
        {
          xmlns: 'http://www.issnetonline.com.br/webserviceabrasf/vsd/servico_enviar_lote_rps_envio.xsd',
          'xmlns:tc': 'http://www.issnetonline.com.br/webserviceabrasf/vsd/tipos_complexos.xsd'
        }
      end

      def entidade
        Nfse::Entities::ServicoEnviarLoteRpsEnvio
      end

      def xml_builder
        Utils::XML.render 'servico_enviar_lote_rps_envio', message_namespaces: message_namespaces, content_xml: content_xml
      end

      private

      def set_response
        @response = Nfse::Responses::EnviaLoteRps.new(savon_response: @original_response).response
      end
    end
  end
end