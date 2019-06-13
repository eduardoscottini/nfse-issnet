module NfseIssnet
  module Entities
    class TcDadosTomador < BaseEntity
      attribute :identificacao_tomador, NfseIssnet::Entities::TcIdentificacaoTomador
      attribute :razao_social, Types::String.constrained(max_size: 115)
      attribute :endereco, NfseIssnet::Entities::TcEndereco
      attribute? :contato, NfseIssnet::Entities::TcContato.optional
    end
  end
end