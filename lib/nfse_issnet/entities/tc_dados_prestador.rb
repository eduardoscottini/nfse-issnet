module NfseIssnet
  module Entities
    class TcDadosPrestador < BaseEntity
      attribute :identificacao_prestador, Nfse::Entities::TcIdentificacaoPrestador
      attribute? :razao_social, Types::String.constrained(max_size: 115)
      attribute? :endereco, Nfse::Entities::TcEndereco
    end
  end
end