module NfseIssnet
  module Entities
    class TcDadosPrestador < BaseEntity
      attribute :identificacao_prestador, NfseIssnet::Entities::TcIdentificacaoPrestador
      attribute? :razao_social, Types::String.constrained(max_size: 115)
      attribute? :endereco, NfseIssnet::Entities::TcEndereco
    end
  end
end