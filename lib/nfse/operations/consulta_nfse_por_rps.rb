module Nfse
  module Operations
    class ConsultaNfsePorRps < Nfse::Base

      def metodo_wsdl
        :consulta_nf_se_por_rps
      end

      def message_namespaces
        {
          xmlns: 'http://www.issnetonline.com.br/webserviceabrasf/vsd/servico_consultar_nfse_rps_envio.xsd',
          'xmlns:tc': 'http://www.issnetonline.com.br/webserviceabrasf/vsd/tipos_complexos.xsd'
        }
      end

      #  identificacao_rps: {numero: 11, serie: 8, tipo: 1}, prestador: { cpf_cnpj: { cnpj: '33771486000110' }, inscricao_municipal: '35093' }
      def entidade
        Nfse::Entities::ServicoConsultarNfsePorRpsEnvio
      end

      def xml_builder
        Utils::XML.render 'servico_consultar_nfse_por_rps_envio'
      end

      private

      def set_response
        @response = Nfse::Responses::ConsultaNfsePorRps.new(savon_response: @original_response).response
      end
    end
  end
end