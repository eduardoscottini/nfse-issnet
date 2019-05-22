module Nfse
  module Operations
    class ConsultaLoteRps < Nfse::Base
      private

      def configure
        self.method_wsdl = :consultar_lote_rps
        self.default_namespace = 'http://www.issnetonline.com.br/webserviceabrasf/vsd/servico_consultar_lote_rps_envio.xsd'
        self.template_xml = :servico_consultar_lote_rps_envio
        self.entity = Nfse::Entities::ServicoConsultarLoteRpsEnvio
      end

      def set_response
        @response = Nfse::Responses::ConsultaLoteRps.new(savon_response: @original_response).response
      end
    end
  end
end