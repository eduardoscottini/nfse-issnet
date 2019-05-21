module Nfse
  module Responses
    class EnviaLoteRps < Base
      def response
        OpenStruct.new(protocolo: protocolo, numero_lote: numero_lote, data_recebimento: data_recebimento, error_messages: erros)
      end

      protected

      def default_values
        super.merge({
                      keys_root_path: [:recepcionar_lote_rps_response, :recepcionar_lote_rps_result],
                      errors_path: [:enviar_lote_rps_resposta, :lista_mensagem_retorno]
                    })
      end

      private

      def protocolo
        @protocolo ||= savon_body.dig(:enviar_lote_rps_resposta, :protocolo)
      end

      def numero_lote
        @numero_lote ||= savon_body.dig(:enviar_lote_rps_resposta, :numero_lote)
      end

      def data_recebimento
        @data_recebimento ||= savon_body.dig(:enviar_lote_rps_resposta, :data_recebimento)
      end
    end
  end
end