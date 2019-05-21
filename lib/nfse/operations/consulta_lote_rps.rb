module Nfse
  module Operations
    class ConsultaLoteRps < Nfse::Base

      def metodo_wsdl
        :consultar_lote_rps
      end

      def message_namespaces
        {
          xmlns: 'http://www.issnetonline.com.br/webserviceabrasf/vsd/servico_consultar_lote_rps_envio.xsd',
          'xmlns:tc': 'http://www.issnetonline.com.br/webserviceabrasf/vsd/tipos_complexos.xsd'
        }
      end

      #  identificacao_rps: {numero: 11, serie: 8, tipo: 1}, prestador: { cpf_cnpj: { cnpj: '33771486000110' }, inscricao_municipal: '35093' }
      def entidade
        Nfse::Entities::ServicoConsultarLoteRpsEnvio
      end

      def xml_builder
        Utils::XML.render 'servico_consultar_lote_rps_envio'
      end

      private

      def set_response
        @response = Nfse::Responses::ConsultaLoteRps.new(savon_response: @original_response).response
      end
    end
  end
end