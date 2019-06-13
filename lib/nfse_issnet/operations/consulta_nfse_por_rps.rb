module NfseIssnet
  module Operations
    class ConsultaNfsePorRps < NfseIssnet::Base
      private

      def configure
        self.method_wsdl = :consulta_nf_se_por_rps
        self.default_namespace = 'http://www.issnetonline.com.br/webserviceabrasf/vsd/servico_consultar_nfse_rps_envio.xsd'
        self.template_xml = :servico_consultar_nfse_por_rps_envio
        self.entity = NfseIssnet::Entities::ServicoConsultarNfsePorRpsEnvio
      end

      def set_response
        @response = NfseIssnet::Responses::ConsultaNfsePorRps.new(savon_response: @original_response).response
      end
    end
  end
end