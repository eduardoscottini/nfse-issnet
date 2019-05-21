module Nfse
  module Responses
    class ConsultaLoteRps < Base
      def response
        OpenStruct.new(notas_fiscais: notas_fiscais, erros: erros)
      end

      private

      def default_values
        super.merge({
                      keys_root_path: [:consultar_lote_rps_response, :consultar_lote_rps_result],
                      errors_path: [:consultar_lote_rps_resposta, :lista_mensagem_retorno],
                      notas_fiscais_path: [:consultar_lote_rps_resposta, :lista_nfse, :comp_nfse],
                    })
      end
    end
  end
end