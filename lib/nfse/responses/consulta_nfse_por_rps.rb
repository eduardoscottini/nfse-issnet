module Nfse
  module Responses
    class ConsultaNfsePorRps < Base
      def response
        OpenStruct.new(notas_fiscais: notas_fiscais, error_messages: erros)
      end

      protected

      def default_values
        super.merge({
                      keys_root_path: [:consulta_nf_se_por_rps_response, :consulta_nf_se_por_rps_result],
                      errors_path: [:consultar_nfse_rps_resposta, :lista_mensagem_retorno],
                      notas_fiscais_path: [:consultar_nfse_rps_resposta, :comp_nfse],
                    })
      end
    end
  end
end