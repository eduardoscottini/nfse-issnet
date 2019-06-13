module NfseIssnet
  module Operations
    class EnviaLoteRps < NfseIssnet::Base
      private

      def configure
        self.method_wsdl = :recepcionar_lote_rps
        self.default_namespace = 'http://www.issnetonline.com.br/webserviceabrasf/vsd/servico_enviar_lote_rps_envio.xsd'
        self.template_xml = :servico_enviar_lote_rps_envio
        self.entity = NfseIssnet::Entities::ServicoEnviarLoteRpsEnvio
      end

      def set_response
        @response = NfseIssnet::Responses::EnviaLoteRps.new(savon_response: @original_response).response
      end
    end
  end
end