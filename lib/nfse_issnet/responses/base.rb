module NfseIssnet
  module Responses
    class Base
      attr_accessor :savon_response,:savon_body
      attr_accessor :keys_root_path, :notas_fiscais_path, :errors_path

      def initialize(attributes = {})
        attributes = default_values.merge!(attributes)
        assign_attributes(attributes)
        convert_body_to_hash
      end

      protected

      def default_values
        {}
      end

      def notas_fiscais
        @notas_fiscais ||= pega_itens(notas_fiscais_path).map { |nfs| NfseIssnet::Entities::NotaFiscal.new(nfs[:nfse][:inf_nfse]) }
      end

      def erros
        @erros ||= pega_itens(errors_path).map { |erro| erro[:mensagem_retorno] }
      end

      def pega_itens(path)
        itens = []
        _itens= savon_body.dig(*path)
        if _itens.is_a?(Hash)
          itens << _itens
        elsif _itens.is_a?(Array)
          _itens.map{|inv| itens << inv }
        end
        itens
      end

      private

      def assign_attributes(attributes)
        attributes ||= {}
        attributes.each do |name, value|
          send("#{name}=", value)
        end
      end

      def convert_body_to_hash
        ep = lambda { |key| Utils::Utils.snakecase(key).to_sym }
        self.savon_body ||= Ox.load(savon_response.body.dig(*keys_root_path), mode: :hash_no_attrs, strip_namespace: true, element_key_mod: ep)
      end
    end
  end
end