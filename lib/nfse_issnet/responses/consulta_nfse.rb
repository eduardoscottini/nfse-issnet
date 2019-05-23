module NfseIssnet
  module Responses
    class ConsultaNfse < Base
      def response
        OpenStruct.new(notas_fiscais: notas_fiscais, error_messages: erros)
      end

      protected

      def default_values
        super.merge({
                      keys_root_path: [:consultar_nfse_response, :consultar_nfse_result],
                      errors_path: [:consultar_nfse_rps_resposta, :lista_mensagem_retorno],
                      notas_fiscais_path: [:consultar_nfse_resposta, :lista_nfse, :comp_nfse],
                    })
      end
    end
  end
end